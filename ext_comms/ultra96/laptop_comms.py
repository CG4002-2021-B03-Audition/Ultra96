import socket
import threading
import random
from queue import Queue

MAX_QUEUE_SIZE = 20

class laptop_comms():
    def __init__(self, listen_port=3000):
        print("Starting server for laptops...")
        self.laptop_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.laptop_socket.bind(("", listen_port))
        self.laptop_socket.listen(3) # Idk what this value does TODO
        print("Server for laptops started! Now waiting for laptops to connect")

        self.avail_laptops = set([0, 1, 2])
        self.msg_queues = [Queue(MAX_QUEUE_SIZE), Queue(MAX_QUEUE_SIZE), Queue(MAX_QUEUE_SIZE)]

        accept_thread = threading.Thread(target=self.conn_accept_thread)
        accept_thread.daemon = True
        accept_thread.start()

    def conn_accept_thread(self):
        while True:
            laptop_conn, laptop_addr = self.laptop_socket.accept()
            print("Connection received from laptop @ ", laptop_addr)

            try:
                laptop_idx = random.choice(list(self.avail_laptops)) # Assign laptop an index from those available
            except IndexError: # All 3 connection slots filled up, skip adding this laptop
                print("All 3 connection slots are filled")
                continue
            self.avail_laptops.remove(laptop_idx) # Remove selected index from set

            # Spawn a new thread that listens to data from this laptop
            # A queue and corresponding laptop index is passed to this
            conn_thread = threading.Thread(target=self.laptop_recv_thread, args=(laptop_conn, laptop_idx, self.msg_queues[laptop_idx]))
            conn_thread.daemon = True
            conn_thread.start()
        
        self.laptop_socket.close()


    def laptop_recv_thread(self, laptop_conn, laptop_idx, laptop_queue):
        while True:
            recv_msg = laptop_conn.recv(1024) # TODO change to proper packet recv size
            msg_buf = list(recv_msg)

            if len(msg_buf) == 0:
                # Connection to laptop closed
                break
            else:
                #print(f"Data received from laptop idx {laptop_idx}, {laptop_conn.getpeername()}")
                # Put message in queue if it is not full
                if laptop_queue.full():
                    pass # Handle queue overflow TODO
                laptop_queue.put(msg_buf)

        print("Connection from laptop @ " + str(laptop_conn.getpeername()) + " dropped")
        #laptop_queue = Queue(MAX_QUEUE_SIZE) # Reset queue (actually should we do this?) TODO
        self.avail_laptops.add(laptop_idx) # Restore index. A connection is now available.
        laptop_conn.close()