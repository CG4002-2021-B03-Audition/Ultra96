import socket
import threading
import sys
import time

from laptop_comms import laptop_comms
from ext_comms import ext_comms





def calc_sync_delay(time1, time2, time3):
    pass


def ai_inference(mat1, mat2, mat3):
    pass


def collate_data():
    pass


if __name__ == "__main__":
    #ext_conn = ext_comms()
    laptop_conn = laptop_comms()

    # Collate data
    while True:
        if not laptop_conn.msg_queues[0].empty():
            msg = laptop_conn.msg_queues[0].get()
            print("recv: ", msg)

        if not laptop_conn.msg_queues[1].empty():
            msg = laptop_conn.msg_queues[1].get()
            print("recv: ", msg)
        
        if not laptop_conn.msg_queues[2].empty():
            msg = laptop_conn.msg_queues[2].get()
            print("recv: ", msg)




    