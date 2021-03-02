import socket
import threading

class data_receiver:
    def __init__(self, recv_port):
        self.recv_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.recv_socket.bind(("127.0.0.1", recv_port))
        self.recv_socket.listen(3)

        self.conns = list([None, None, None])



"""
Receive data from 3x laptop sockets. 

3 threads running that are receiving data from the laptops.

All 3 threads will have to have received the initial packet
so that the sync delay between the start of the dance 
moves can be detected. 

In the meantime maybe a buffer keeps filling with other packets
that were detected.

How does the data in the 3 initial packets get sent to the main
thread that calculates sync delay?

I can probably use event flags like I did for freeRTOS to trigger
the function/thread that does sync delay calculation.





For normal detections it seems that each thread can act as
a consumer and call the AI algo. I can use a semaphore so that
the other 2 threads will wait until the AI comes up with an
output. 

I can use another event flag so that I have the output from
all 3 AI algos. This will be an output matrix for each thread.




What if I'm receiving things way too fast?

I receive data, put it into a buffer. I then check if the AI
algo is ready to read data from the buffer and take out that
item from the buffer. In the meantime my buffer can still
fill up. 

What happens if the buffer overflows? 
Do I get rid of old data or new data? 
I think I can get rid of old data and clear the buffer.
This means that the system attempts to become responsive again

Alternatively, skipping new data means that the system is 
losing information. 

The buffer 



So to recap, I have 3 threads whose only purpose is to check whether some data
has been received by a connection. If it has, I'll put it in a message queue.
Each of these threads will also have the necessary checks to ensure that each
packet is complete. These threads can also perform the decryption.
Should I have them be threads or processes?

I can test performance of both. 

There are then another 3 threads whose only job is to check if data is available
in the queue, and if do, they will trigger the AI thread. The AI thread 

Can I just use 1 thread that checks all 3 message queues? Maybe. So the thread will
iterate through all message queues, the problem however is that we don't want 


The one thread can check if all queues have the same size. If they do, we can
proceed with performing the AI detections in sequence. Once all 3 detections are
complete, we can 

We can use 3 booleans to keep track of whether all 3 dance moves have been passed
through the detections. 

There might be a way to optimize this to perform the AI detection before all 3 
data packets have arrived. 


After each detection result is complete I can pass a tuple or list of all data
to my main thread that will check the time delay, and also make a call on the 
final output

"""

