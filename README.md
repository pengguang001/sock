# sock
modified version based on richard stevens's classic 'sock' program.

* usage

to send 500 bytes to a host in udp:
./sock -v -i -n 1 -u -w 500 192.168.1.100 1900

to send 2000 bytes to a multicast group:
./sock -v -i -n 1 -u -w 2000 239.255.255.250 1900

to use the content of 1.txt to fill the send buffer:
./sock -v -i -n 1 -u -m 1.txt 239.255.255.250 1900 

(you need first create 1.txt with some content, and 
the write length is determined by the bytes in this file)

* how to compile
to compile on host linux:
./configure
make

to compile for android:
cd <ANDR_TOP>
mmm <SOCK_DIR>/src
