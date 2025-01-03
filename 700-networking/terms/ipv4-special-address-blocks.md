# IPv4 special address blocks

https://en.wikipedia.org/wiki/IPv4#Special-use_addresses


- address block:  0.0.0.0/8
- address range:  0.0.0.0 - 0.255.255.255
- number of addr: 16,777,216
- scope:          Software
- description:    current/local/"this" network

- address block:  10.0.0.0/8
- address range:  10.0.0.0-10.255.255.255
- number of addr: 16,777,216
- scope:          Private network
- description:    private addresses (A class)

- address block:  100.64.0.0/10
- address range:  100.64.0.0 - 100.127.255.255
- number of addr: 4,194,304
- scope:          Private network
- description:    Carrier-grade NAT's shared address space

- address block:  127.0.0.0/8
- address range:  127.0.0.0 - 127.255.255.255
- number of addr: 16,777,216
- scope:          Host
- description:    loopback addresses to the local host

- address block:  169.254.0.0/16
- address range:  169.254.0.0 - 169.254.255.255
- number of addr: 65,536
- scope:          Subnet
- description:    link-local addresses between two hosts on a single link

- address block:  172.16.0.0/12
- address range:  172.16.0.0 - 172.31.255.255
- number of addr: 1,048,576
- scope:          Private network
- description:    private addresses (B class)

- address block:  192.0.0.0/24
- address range:  192.0.0.0 - 192.0.0.255
- number of addr: 256
- scope:          Private network
- description:    IETF Protocol Assignments, DS-Lite (/29)

- address block:  192.0.2.0/24
- address range:  192.0.2.0 - 192.0.2.255
- number of addr: 256
- scope:          Documentation
- description:    Assigned as TEST-NET-1, documentation and examples

- address block:  192.88.99.0/24
- address range:  192.88.99.0 - 192.88.99.255
- number of addr: 256
- scope:          Internet
- description:    Reserved. Formerly used for IPv6 to IPv4 relay
                  (included IPv6 address block `2002::/16`)

- address block:  192.168.0.0/16
- address range:  192.168.0.0 - 192.168.255.255
- number of addr: 65,536
- scope:          Private network
- description:    private addresses (C class)

- address block:  198.18.0.0/15
- address range:  198.18.0.0 - 198.19.255.255
- number of addr: 131,072
- scope:          Private network
- description:    benchmarking inter-network communications between 2 subnets

- address block:  198.51.100.0/24
- address range:  198.51.100.0 - 198.51.100.255
- number of addr: 256
- scope:          Documentation
- description:    Assigned as TEST-NET-2, documentation and examples

- address block:  203.0.113.0/24
- address range:  203.0.113.0 - 203.0.113.255
- number of addr: 256
- scope:          Documentation
- description:    Assigned as TEST-NET-3, documentation and examples

- address block:  224.0.0.0/4
- address range:  224.0.0.0 - 239.255.255.255
- number of addr: 268,435,456
- scope:          Internet
- description:    In use for multicast (former Class D network)

- address block:  233.252.0.0/24
- address range:  233.252.0.0 - 233.252.0.255
- number of addr: 256
- scope:          Documentation
- description:    Assigned as MCAST-TEST-NET, documentation and examples 
                  (Note that this is part of the above multicast space)

- address block:  240.0.0.0/4
- address range:  240.0.0.0 - 255.255.255.254
- number of addr: 268,435,455
- scope:          Internet
- description:    Reserved for future use (former Class E network)

- address block:  255.255.255.255/32
- address range:  255.255.255.255
- number of addr: 1
- scope:          Subnet
- description:    Reserved for the "limited broadcast" destination address



## Private networks

Of the approximately four billion addresses defined in IPv4, about 18 million addresses in three ranges are reserved for use in private networks. Packets addresses in these ranges are not routable in the public Internet; they are ignored by all public routers. Therefore, private hosts cannot directly communicate with public networks, but require network address translation at a routing gateway for this purpose.

Reserved private IPv4 network ranges:

10.0.0.0/8
- Name:                 24-bit block
- CIDR block:           10.0.0.0/8
- Range:                10.0.0.0 - 10.255.255.255
- Number of addresses:  16,777,216
- Classful description: Single Class A

172.16.0.0/12
- Name:                 20-bit block
- CIDR block:           172.16.0.0/12
- Range:                172.16.0.0 - 172.31.255.255
- Number of addresses:  1048576
- Classful description: Contiguous range of 16 Class B blocks

192.168.0.0/16
- Name:                 16-bit block
- CIDR block:           192.168.0.0/16
- Range:                192.168.0.0 - 192.168.255.255
- Number of addresses:  65536   
- Classful description: Contiguous range of 256 Class C blocks


Since two private networks, e.g. two branch offices, cannot directly interoperate via the public Internet, the two networks must be bridged across the Internet via a VPN or an IP tunnel, which encapsulates packets, including their headers containing the private addresses, in a protocol layer during transmission across the public network. Additionally, encapsulated packets may be encrypted for transmission across public networks to secure the data.


169.254.0.0/16 for link-local addressing

127.0.0.0/8 for loopback

The *first address in a subnet* is used to identify the subnet itself. In this address all host bits are 0. To avoid ambiguity in representation, this address is reserved.

The *last address in a subnet* has all host bits set to 1. It is used as a local broadcast address for sending messages to all devices on the subnet simultaneously. For networks of size /24 or larger, the broadcast address always ends in 255.

For example, in the subnet 192.168.5.0/24 (subnet mask 255.255.255.0) the identifier 192.168.5.0 is used to refer to the entire subnet. The broadcast address of the network is 192.168.5.255.

However, this does not mean that every address ending in 0 or 255 cannot be used as a host address. For example, in the /16 subnet 192.168.0.0/255.255.0.0, which is equivalent to the address range 192.168.0.0-192.168.255.255, the broadcast address is 192.168.255.255. One can use the following addresses for hosts, *even though they end with 255*: 192.168.1.255, 192.168.2.255, etc. Also, 192.168.0.0 is the network identifier and must not be assigned to an interface.  The addresses 192.168.1.0, 192.168.2.0, etc. may be assigned to hosts *despite ending with 0*.

In the past, conflict between network addresses and broadcast addresses arose because some software used non-standard broadcast addresses with zeros instead of ones.

In networks smaller than /24, broadcast addresses do not necessarily end with 255. For example, a CIDR subnet 203.0.113.16/28 has the broadcast address 203.0.113.31.



As a special case, a `/31` network has capacity for just two hosts. These networks are typically used for point-to-point connections. *There is no network identifier or broadcast address for these networks*.
