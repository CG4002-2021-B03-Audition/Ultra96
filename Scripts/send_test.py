import socket
import threading

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("127.0.0.1", 3000))
print("Attempting to connect")

msg = s.recv(1024)
print("here: ", msg)

x = [0]
while True:
    #text_input = input()
    input()
    #s.send(text_input.encode())
    s.send(bytes(x))
    x[0] += 1

s.close()
