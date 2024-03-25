# Classless Inter-Domain Routing

https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing


## CIDR notation

The CIDR notation, invented by Phil Karn in the 1980s, is a compact representation of an IP address and its associated network mask (prefix number.

CIDR notation specifies:
- IP address
- slash ('/') character
- decimal number

The decimal number is the count of consecutive leading 1-bits (from left to right) in the network mask. The number can also be thought of as the width (in bits) of the network prefix. The IP address in CIDR notation is always represented according to the standards for IPv4 or IPv6.


IPv4 CDIR `192.168.100.14/24` represents address 192.168.100.14 
and its associated routing prefix 192.168.100.0, or equivalently, 
its subnet mask 255.255.255.0, which has 24 leading 1-bits


1       8   9       16  17      24  25      32
|       |   |       |   |       |   |       |
1001 0011 . 1010 1000 . 1100 1010 . 1011 1101
|       |   |       |   |       |   | |     |
|       /8          /16         /24   /27
0000 0000   0000 0000   0000 0000   00|00 0001  hosts: 0-63 (1-62)
0000 0000   0000 0000   0000 0000   00|11 1111 (2^6-1 = 63 = 0011 1111)


IPv4 block 192.168.100.0/22 represents the 1024 IPv4 addresses 
from `192.168.100.0` to `192.168.103.255`

For IPv4, CIDR notation is an alternative to the older system of representing networks by their starting address and the subnet mask, both written in dot-decimal notation:
`192.168.100.0/24` === `192.168.100.0/255.255.255.0`


IPv6 block 2001:db8::/48 represents the block of IPv6 addresses 
from `2001:db8:0:0:0:0:0:0` to `2001:db8:0:ffff:ffff:ffff:ffff:ffff`

IPv6 loopback: `::1/128`
Its prefix length is 128 which is the number of bits in the address
