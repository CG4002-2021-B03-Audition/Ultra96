import socket
import threading
import time


DEFAULT_PORT = 3000
RECV_PACKET_SIZE = 5
MAX_LAPTOP_CONNECTIONS = 3


def connection_thread(conn_obj, conn_close):
    try:
        conn_obj.send("Connected!".encode())
        while True:
            recv_msg = conn_obj.recv(RECV_PACKET_SIZE)
            print(recv_msg)
            if recv_msg.decode() == '':
                break
            #else:
            #    print(f"{conn_obj.getpeername()} recv: {recv_msg}")

    except Exception as e:
        print(e)
    
    print(f"Closing conn from {conn_obj.getpeername()}")
    conn_obj.close()
    conn_close.set()


if __name__ == "__main__":
    recv_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    recv_socket.bind(('', DEFAULT_PORT))
    recv_socket.listen(MAX_LAPTOP_CONNECTIONS)
    print("Now waiting on connections...")

    conn_close = threading.Event()
    num_conns = 0

    #try:
    while True: 
            if num_conns < MAX_LAPTOP_CONNECTIONS:
                if conn_close.is_set():
                    num_conns -= 1
                    conn_close.clear()

                conn, addr = recv_socket.accept()
                print("Connection accepted from: ", addr)

                # Spawn a new thread when receiving a new connection
                conn_thread = threading.Thread(target=connection_thread, args=(conn, conn_close))
                conn_thread.daemon = True
                conn_thread.start()
                num_conns += 1

            else:
                print("All connections filled")
                if conn_close.wait():
                    num_conns -= 1
                    conn_close.clear()

            print(f"Current number of connections: {num_conns}")

    #except KeyboardInterrupt:
    #    pass

    print("Quitting!")
    recv_socket.close()
