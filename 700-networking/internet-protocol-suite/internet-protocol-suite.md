# Internet Protocol Suite

https://en.wikipedia.org/wiki/Internet_protocol_suite

- IP is mechanism for addressing and routing to achieve universal connectivity
- IPv4 addresses are 32 bits
- address is a part of the IP header (comes after Ethernet header)
- `Ethernet header` only stays with a packet for one hop
- `IP header` stays with the packet for its entire journey across the Internet

IPv4 (and IPv6) address may be divided into *network prefix* and *host suffix*
The legacy mechanism for designating the IPv4 network and host address portions was to make the division according to the first few bits:


sb   byte #1  nb  hb class    from         to
0      0-127   8  24   A    0000 0000   0111 1111
10   128-191  16  16   B    1000 0000   1011 1111
110  192-223  24   8   C    1100 0000   1101 1111
1110 224-255           D    1110 

sb = starting bits
b1 = first byte
nb = network_bits
hb = host_bits


1001 0011 . 1010 1000 . 1100 1010 . 1011 1101   bin
   223    .    250    .    300    .    275      oct  223 52 145 275
   147    .    168    .    192    .    189      dec   2,477,312,701
    93    .     a8    .     c0    .     bd      hex   93 a8 ca bd



As a result of this administrative assignment, an IP address usually serves not just as an endpoint identifier but also as a locator, containing embedded location information (at least in the sense of location within the IP-address-assignment hierarchy, which may not be geographical). Ethernet addresses, by comparison, are endpoint identifiers but not locators.

/27 address block (1/8 the size of a class-C /24)
200.1.130.96/27
200.1.128/18

200.1.130.x  1100 1000 . 0000 0001 . 10|00 0010 . x
200.1.128.x  1100 1000 . 0000 0001 . 10|00 0000 . x
             ^ start 16 b are the same ^

192.0.2.235             dec quad-dotted
3,221,226,219           dec integer
0xC00002EB              hex integer
0xC0.0x00.0x02.0xEB     hex quad-dotted, 0x prefix notation
C0.00.02.EB             hex quad-dotted
0300.0000.0002.0353     octal quad-dotted, 0 prefix notation


192.0.2.235
 c0.00.02.eb
300.000.002.353



The network portion of an IP address is sometimes called the network number or network address or network prefix.

The network prefix is commonly denoted by setting the host bits to zero and ending the resultant address with a slash followed by the number of network bits in the address: eg 12.0.0.0/8 or 147.126.0.0/16.

All hosts with the same network address (same network bits) are said to be on the same IP network and must be located together on the same LAN;

A consequence of this rule is that outside of the site only the network bits need to be looked at to route a packet to the site.

## CIDR notation

CIDR notation is a compact representation of an IP address and its associated routing prefix. The notation is constructed from an IP address, a slash ('/') character, and a decimal number. The number is the count of leading 1 bits in the subnet mask. Larger values here indicate smaller networks. The maximum size of the network is given by the number of addresses that are possible with the remaining, least-significant bits below the prefix.

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
