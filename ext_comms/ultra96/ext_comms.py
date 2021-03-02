import socket
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad
import base64

EVAL_SERVER_IP = "127.0.0.1"
EVAL_SERVER_PORT = 4000
# DASHBOARD_IP = "127.0.0.1"
# DASHBOARD_PORT = 4001

class ext_comms():
    def __init__(self, secret_key_string="PLSPLSPLSPLSWORK"):        
        print("Starting connection to evaluation server...")
        self.eval_conn = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.eval_conn.connect((EVAL_SERVER_IP, EVAL_SERVER_PORT))
        print("Connection to evaluation server successful!")

        # print("Starting connection to dashboard...")
        # self.dashb_conn = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        # self.dashb_conn.connect((DASHBOARD_IP, DASHBOARD_PORT))
        # print("Connection to dashboard successful!")

        self.secret_key_string = secret_key_string


    def recv_pos(self):
        recv_msg = self.eval_conn.recv(1024)
        print(recv_msg)


    """
    pos is a tuple (x,x,x)
    """
    def encrypt_answers(self, pos, action, sync_delay): 
        plaintext = f"#{pos[0]} {pos[1]} {pos[2]}|{action}|{str(sync_delay)}|"
        plaintext_bytes = pad(plaintext.encode("utf-8"), 16)
        
        secret_key_bytes = self.secret_key_string.encode("utf-8")
        cipher = AES.new(secret_key_bytes, AES.MODE_CBC)
        iv_bytes = cipher.iv
        
        ciphertext_bytes = cipher.encrypt(plaintext_bytes)
        message = base64.b64encode(iv_bytes + ciphertext_bytes)

        return message


    def send_to_eval(self, pos, action, sync_delay):
        message = self.encrypt_answers(pos, action, sync_delay)
        self.eval_conn.send(message)

    def send_to_dashb(self):
        #self.dashb_conn.send(something)
        pass


    def send_to_ext(self, pos, action, sync_delay): # More params can be put in here
        print(f"Positions: {pos} | Action: {action} | Delay: {sync_delay}")
        self.send_to_eval(pos, action, sync_delay)
        self.send_to_dashb()
