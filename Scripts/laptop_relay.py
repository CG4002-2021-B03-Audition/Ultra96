import sys
import socket
import time

DEFAULT_IP = "127.0.0.1"
DEFAULT_PORT = 3000
SEND_PACKET_SIZE = 5 # Packet size to send to Ultra96 in bytes

class u96_Sender:
    def __init__(self, ip, port):
        self.u96_conn = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.u96_conn.connect((ip, port))
        self.u96_conn.settimeout(2)

        try: 
            ack_msg = self.u96_conn.recv(10).decode()
            if ack_msg == "Connected!":
                print("Successfully connected to Ultra96!")
            else:
                print("Unknown response from Ultra96")
        except socket.timeout:
            print("No response from Ultra96")
            self.u96_conn.close()


    def send_string(self, string):
        # Slicing string to make it fit SEND_PACKET_SIZE
        if len(string) > SEND_PACKET_SIZE:            
            string = string[:SEND_PACKET_SIZE]
        
        # Padding string to make it equal SEND_PACKET_SIZE
        elif len(string) < SEND_PACKET_SIZE:
            for i in range(len(string), SEND_PACKET_SIZE):
                string += "."

        # Sending string to u96
        self.u96_conn.send(string.encode())


    def send_byte_arr(self, byte_arr):
        pass
    

if __name__ == "__main__":
    u96_ip = None
    u96_port = None

    if len(sys.argv) <= 1:
        print(f"Using default IP and Port: {DEFAULT_IP}:{DEFAULT_PORT}")
        u96_ip = DEFAULT_IP
        u96_port = DEFAULT_PORT
    else:
        u96_ip = input("Enter Ultra96 IP:\n")
        u96_port = int(input("Enter Ultra96 Port:\n"))

    u96_sender = u96_Sender(u96_ip, u96_port)

    index = 0
    while True:
        u96_sender.send_string(str(index))
        index += 1
        time.sleep(2)



    