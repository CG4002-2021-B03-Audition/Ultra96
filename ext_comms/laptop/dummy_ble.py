import time
import random
import numpy as np
import threading
from ble_comms import ble_comms

class dummy_ble(ble_comms):
    def __init__(self, recv_data_len):
        #super().__init__(recv_data_len)
        print("Starting connection to beetle...")
        # Simulation Variables
        self.can_send_offset_pkt = False
        self.can_send_data_pkt = False
        self.beetle_start_time = int(time.time() * 1000) # in ms
        self.beetle_start_time &= 0xFFFFFFFF # Limit to 32-bit to simulate millis()
        self.beetle_remote_oper_time = 40 # in ms
        self.data_size = recv_data_len # Size of data chunk to be sent to laptop in bytes
        self.move_start = True
        print("Connection to beetle successful!")


    def millis(self):
        cur_time = int(time.time() * 1000) & 0xFFFFFFFF
        return cur_time - self.beetle_start_time

    """
    Generates buffer consisting of random data from IMU of length data_len bytes.
    """
    def generate_imu_data(self, data_len):
        imu_data = list(np.random.randint(0, 255, data_len, "uint8"))
        return imu_data


    def create_offset_pkt(self):
        beetle_rx_time = self.millis()
        time.sleep(self.beetle_remote_oper_time/100) # Simulate remote operation time
        beetle_tx_time = self.millis()

        offset_pkt = []
        offset_pkt.append(0)

        beetle_rx_time_bin_string = "{:032b}".format(beetle_rx_time)
        beetle_tx_time_bin_string = "{:032b}".format(beetle_tx_time)

        for i in range(0, 32, 8):
            offset_pkt.append(int(beetle_rx_time_bin_string[i:i+8], 2))
        for i in range(0, 32, 8):
            offset_pkt.append(int(beetle_tx_time_bin_string[i:i+8], 2))

        return offset_pkt


    def create_data_pkt(self):
        input()
        
        beetle_timestamp = self.millis()
        time.sleep(self.beetle_remote_oper_time/100) # Simulate remote operation time

        data_pkt = []
        data_pkt.append(2) # Append packet type
        data_pkt.append(int(self.move_start)) # Append move start flag
        if self.move_start:
            self.move_start = False
        
        # Append beetle internal timestamp
        beetle_timestamp_bin_string = "{:032b}".format(beetle_timestamp)
        for i in range(0, 32, 8):
            data_pkt.append(int(beetle_timestamp_bin_string[i:i+8], 2))

        # Get IMU data
        imu_data = self.generate_imu_data(self.data_size)
        data_pkt.extend(imu_data)

        return data_pkt


    def recv_data(self):
        # Simulating time for beetle to send back time data
        ret_pkt = None
        
        while True:
            if self.can_send_offset_pkt:
                self.can_send_offset_pkt = False
                # Create offset packet to send back to laptop
                ret_pkt = self.create_offset_pkt()
                break
            
            elif self.can_send_data_pkt:
                # Create data packet to send back to laptop
                ret_pkt = self.create_data_pkt()
                break
        
        return ret_pkt
        

    def send_data(self, send_buf):
        if send_buf[0] == 0: # Offset packet type
            # Timer simulates propagation time
            def x():
                self.can_send_offset_pkt = True
            t = threading.Timer(1, x)
            t.start()

        elif send_buf[0] == 1: # Ready for data notification packet
            # Timer simulates propagation time + initial beetle data sending setup time
            # Hence, 3 seconds instead of like 1 second above.
            def x():
                self.can_send_data_pkt = True
                print("Ready to send!")
            t = threading.Timer(3, x)
            t.start()

        else:
            print(f"Unknown Send Packet type: {send_buf[0]}")

