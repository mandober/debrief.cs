# IPv4

https://en.wikipedia.org/wiki/IPv4

- IPv4 address space: 32-bit
- number of unique hosts: 4,294,967,296 (2^32)
- reserves address blocks for 
  - private networks, ~18 million
  - multicast addresses, ~270 million
- connectionless protocol, best effort delivery model (does not guarantee delivery, nor proper sequencing, nor avoidance of duplicate delivery; that is handled by an upper layer transport protocol such as TCP)
- quad-dotted address, 0.0.0.0, each group has 8 bits, ranging (dec): 0-255


 10.0.0.0   - 10.255.255.255   16,777,216  10.0.0.0/8     (255.0.0.0)    24 bits   8 bits      1 class A network
172.16.0.0  - 172.31.255.255    1,048,576  172.16.0.0/12  (255.240.0.0)  20 bits  12 bits     16 contiguous class B networks
192.168.0.0 - 192.168.255.255      65,536  192.168.0.0/16 (255.255.0.0)  16 bits  16 bits    256 contiguous class C networks


RFC1918 name
IP address range
Number of addresses
Largest CIDR block (subnet mask)
Host ID size
Mask bits
Classful description


Dedicated space for carrier-grade NAT deployment:
    100.64.0.0/10
    100.64.0.0 - 100.127.255.255
    netmask 255.192.0.0
This address block should not be used on private networks or on the public Internet.
The size of the address block: 2^22, ~4 million
