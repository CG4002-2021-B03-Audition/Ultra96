import sys
import time
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


def create_offset_pkt():
    offset_pkt = []
    offset_pkt.append(PKT_TYPE["offset"])

    # Getting current unix time in ms
    cur_time = int(time.time() * 1000) 
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
        
        beetle_rx_time = int.from_bytes(recv_pkt[1:5], "big")
        beetle_tx_time = int.from_bytes(recv_pkt[5:9], "big")

        laptop_rx_time = int(time.time() * 1000)

        total_return_time = laptop_rx_time - laptop_tx_time
        remote_oper_time = beetle_tx_time - beetle_rx_time
        rtt = total_return_time - remote_oper_time
        
        offset1 = abs(beetle_rx_time - laptop_tx_time - int(rtt/2))
        offset2 = abs(laptop_rx_time - beetle_tx_time - int(rtt/2))
        cur_offset = int((offset1 + offset2) / 2)

        print(f"Remote: {remote_oper_time} ms, RTT: {rtt} ms")
        print(f"Offset: {cur_offset} ms")
        
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
    print(f"Final offset value: {OFFSET}")
    
    # Send beetle the ready signal
    beetle_conn.send_data([PKT_TYPE["ready_for_data"]])

    # Start thread that waits for data packet from 
    for i in range(0, 10): # Receive 10 data packets
        data_pkt = beetle_conn.recv_data()
        print(data_pkt)
        # Need to add 

        u96_conn.send_data(data_pkt)

    # Send data packet to ultra 96

