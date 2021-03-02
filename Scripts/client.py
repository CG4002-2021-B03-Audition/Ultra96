import socket
import threading
import sys
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad, unpad
import string
import random
import time
import base64


if __name__ == "__main__":
    server_ip = None
    server_port = None
    
    data_ready = threading.Event()

    if len(sys.argv) == 3:
        server_ip = sys.argv[1]
        server_port = int(sys.argv[2])
    else:
        #server_ip = input("Enter Server IP:\n")
        #server_port = int(input("Enter Server Port:\n"))
        server_ip = "127.0.0.1"
        server_port = 3000

    server_conn = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    

    # # Connect to evaluation server
    try:
        print(f"Connecting to {server_ip}:{server_port}...")
        server_conn.connect((server_ip, server_port))
    except Exception as e:
        print(e)
        sys.exit()

    secret_key = "PLSPLSPLSPLSWORK"
    secret_key = bytes(secret_key, "utf-8")
    cipher = AES.new(secret_key, AES.MODE_CBC)

    plaintext = b"#2 1 3|zigzag|1.27|"
    plaintext = pad(plaintext, 16)

    iv_bytes = cipher.iv
    ciphertext_bytes = cipher.encrypt(plaintext)
    
    ciphertext = base64.b64encode(iv_bytes + ciphertext_bytes)

    time.sleep(3)

    while True:
        server_conn.send(ciphertext)
        time.sleep(3)




    