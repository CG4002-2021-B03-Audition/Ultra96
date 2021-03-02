import socket
import threading
import sys
import time
from datetime import datetime

from laptop_comms import laptop_comms
from ext_comms import ext_comms
from ai import ai_inference

SECONDS_TO_MICROS = 1000000
MILLIS_TO_MICROS = 1000


def calc_sync_delay(timestamps):
    #print(timestamps)
    min_timestamp = min(timestamps)
    max_timestamp = max(timestamps)
    #print(f"Earliest: {min_timestamp/MILLIS_TO_MICROS}, Latest: {max_timestamp/MILLIS_TO_MICROS}")
    return max_timestamp - min_timestamp


if __name__ == "__main__":
    ext_conn = ext_comms()
    laptop_conn = laptop_comms()

    # Main loop
    while True:

        # At least one packet received from each queue
        if not laptop_conn.msg_queues[0].empty() and \
            not laptop_conn.msg_queues[1].empty() and \
            not laptop_conn.msg_queues[2].empty():      
            
            msgs = [None,None,None]
            msgs[0] = laptop_conn.msg_queues[0].get()
            msgs[1] = laptop_conn.msg_queues[1].get()
            msgs[2] = laptop_conn.msg_queues[2].get()

            timestamps = [0,0,0]
            timestamps[0] = int.from_bytes(msgs[0][2:10], "big")
            timestamps[1] = int.from_bytes(msgs[1][2:10], "big")
            timestamps[2] = int.from_bytes(msgs[2][2:10], "big")

            #matrices = [None,None,None]
            #matrices[0] = 

            # Sync delay calculation
            sync_delay = calc_sync_delay(timestamps)
            # Infer data 
            action = ai_inference(None)
            # Dancer positions
            positions = (2,3,1)

            # Send data to evaluation server
            ext_conn.send_to_ext(positions, action, sync_delay/MILLIS_TO_MICROS)
            # Wait for correct positions to be received
            correct_pos = ext_conn.recv_pos()


    