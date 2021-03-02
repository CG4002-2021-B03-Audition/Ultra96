import socket

CONNECT_ATTEMPTS = 5
WAIT_TIME_BEFORE_ATTEMPT = 5 # in seconds

class u96_comms():
    def __init__(self, ip, port):
        print("Starting connection to u96...")
        self.u96_conn = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        #self.u96_conn.settimeout(2) # Timeout to wait for response from u96
        self.u96_conn.connect((ip, port))

    def send_data(self, send_buf):     
        self.u96_conn.send(bytes(send_buf))

    