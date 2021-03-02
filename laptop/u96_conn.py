import socket

CONNECT_ATTEMPTS = 5
WAIT_TIME_BEFORE_ATTEMPT = 5 # in seconds

class u96_conn():
    def __init__(self, ip, port):
        print("Starting connection to u96...")
        self.u96_conn = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.u96_conn.settimeout(2) # Timeout to wait for response from u96
        self.u96_conn.connect((ip, port))

        ack_msg = self.u96_conn.recv(10).decode()
        if ack_msg == "Connected!":
            print("Connection to u96 successful!")
        else:
            print("Unknown response from u96")


    def send_data(self, send_buf):
        # if send_buf[0] == 2:
            
        # else:
        #     print(f"Unknown Send Packet type: {send_buf[0]}")       
        self.u96_conn.send(bytes(send_buf))

    