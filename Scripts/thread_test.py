import threading
import concurrent.futures
import time

def thread_func(wait_time):
    time.sleep(wait_time/10)


    print(f"Waited {wait_time}")
    return f"Waited {wait_time} seconds!"


x = None
with concurrent.futures.ThreadPoolExecutor(max_workers=3) as executor:
    x = executor.map(thread_func, range(4)) # Ah so the iterable here is what is passed into each function?

print(list(x))

# from concurrent.futures import ProcessPoolExecutor
# from time import sleep
# def task(message, but, hello, ohno):
#    sleep(1)
#    return ohno

# def main():
#    executor = ProcessPoolExecutor(5)
#    future = executor.submit(task, "Completed", 2, ohno="haha", hello="uhoh")
#    print(future.done())
#    sleep(3)
#    print(future.done())
#    print(future.result())
# if __name__ == '__main__':
#     main()   