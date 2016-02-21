#!/usr/bin/python

import os
import signal
import socket
import time

RUN = "/tmp/run-udp2tcp.pid"
IP = "127.0.0.1"
PORT = 5959
BUFFER = 4096

udp = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
tcp = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

tcp.connect((IP, PORT))
tcp.shutdown(socket.SHUT_RD)

try:
    udp.bind((IP, PORT))
except socket.error:
    if not os.path.exists(RUN):
        raise
    f = open(RUN, 'r')
    pid = int(f.read().strip())
    f.close()

    os.kill(pid, signal.SIGQUIT)
    time.sleep(10.)

    udp.bind((IP, PORT))

f = open(RUN, 'w')
f.write(str(os.getpid()))
f.close()

while True:
    data, addr = udp.recvfrom(BUFFER)
    tcp.send(data)
