import time

class ble_comms():
    def __init__(self, recv_data_len):
        self.recv_data_len = recv_data_len
        self.has_move_started = False
        self.ms_time_shift = 0 # Offset used to convert relative time on beetle to laptop time

    def recv_data(self):
        pass

    def send_data(self, send_buf):
        pass



