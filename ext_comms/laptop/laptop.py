import sys
import time
from datetime import datetime

from dummy_ble import dummy_ble
from u96_comms import u96_comms

DEFAULT_U96_IP = "127.0.0.1"
DEFAULT_U96_PORT = 3000

PKT_TYPE = {
    "offset": 0,
    "ready_for_data": 1,
    "data": 2
}
BLE_DATA_SIZE = 10
OFFSET = 0

SECONDS_TO_MICROS = 1000000
MILLIS_TO_MICROS = 1000


def create_offset_pkt():
    offset_pkt = []
    offset_pkt.append(PKT_TYPE["offset"])

    # Getting current unix time in us
    cur_time = int(time.time() * SECONDS_TO_MICROS) 
    # Storing cur_time as bytes in offset_pkt
    cur_time_bin_string = "{:064b}".format(cur_time)
    for i in range(0, 64, 8):
        offset_pkt.append(int(cur_time_bin_string[i:i+8], 2))

    return offset_pkt, cur_time


def calc_offset(num_to_avg):
    print("Starting offset calculation procedure...")
    offset_sum = 0

    for i in range(0, num_to_avg):
        offset_pkt, laptop_tx_time = create_offset_pkt()
        
        beetle_conn.send_data(offset_pkt)
        recv_pkt = bytearray(beetle_conn.recv_data()) # Busy waits for beetle to send data back
        # TODO Check if wrong packet is received
        
        beetle_rx_time = int.from_bytes(recv_pkt[1:5], "big") * MILLIS_TO_MICROS
        beetle_tx_time = int.from_bytes(recv_pkt[5:9], "big") * MILLIS_TO_MICROS

        laptop_rx_time = int(time.time() * SECONDS_TO_MICROS)

        total_return_time = laptop_rx_time - laptop_tx_time
        remote_oper_time = beetle_tx_time - beetle_rx_time
        rtt = total_return_time - remote_oper_time
        
        offset1 = laptop_tx_time - beetle_rx_time - int(rtt/2)
        offset2 = laptop_rx_time - beetle_tx_time - int(rtt/2)
        cur_offset = int((offset1 + offset2) / 2)

        print(f"Remote oper time: {remote_oper_time/MILLIS_TO_MICROS} ms, RTT: {rtt/MILLIS_TO_MICROS} ms")
        print(f"Offset: {cur_offset/MILLIS_TO_MICROS} ms")
        print("")
        
        offset_sum += cur_offset
    
    return int(offset_sum / num_to_avg)


if __name__ == "__main__":
    u96_ip = None
    u96_port = None

    if len(sys.argv) <= 1:
        print(f"Using default IP and Port: {DEFAULT_U96_IP}:{DEFAULT_U96_PORT}")
        u96_ip = DEFAULT_U96_IP
        u96_port = DEFAULT_U96_PORT
    else:
        u96_ip = input("Enter Ultra96 IP:\n")
        u96_port = int(input("Enter Ultra96 Port:\n"))
    
    u96_conn = u96_comms(u96_ip, u96_port) 
    beetle_conn = dummy_ble(BLE_DATA_SIZE)

    OFFSET = calc_offset(5)
    print(f"Final offset value: {OFFSET/MILLIS_TO_MICROS} ms")
    
    # Send beetle the ready signal
    beetle_conn.send_data([PKT_TYPE["ready_for_data"]])

    while True:
        data_pkt = beetle_conn.recv_data()
        print("IMU data from beetle: ", data_pkt[6:])
        data_pkt = bytearray(data_pkt)

        beetle_timestamp = int.from_bytes(data_pkt[2:6], "big") * MILLIS_TO_MICROS
        print(f"Data sent from beetle at {beetle_timestamp/MILLIS_TO_MICROS} ms")
        
        laptop_relative_timestamp = beetle_timestamp + OFFSET
        laptop_date = datetime.fromtimestamp(laptop_relative_timestamp/SECONDS_TO_MICROS)
        print(f"Equivalent time on laptop: {laptop_date.hour}:{laptop_date.minute}:{laptop_date.second}.{laptop_date.microsecond} ")
        
        # Constructing packet to send to u96
        send_pkt = []
        send_pkt.append(data_pkt[0])
        send_pkt.append(data_pkt[1])

        # Appending laptop-relative timestamp to packet
        laptop_relative_timestamp_bin_string = "{:064b}".format(laptop_relative_timestamp)
        for i in range(0, 64, 8):
            send_pkt.append(int(laptop_relative_timestamp_bin_string[i:i+8], 2))

        # Appending data to packet
        for i in range(6, 16):
            send_pkt.append(data_pkt[i])
        
        u96_conn.send_data(send_pkt)

