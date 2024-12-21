# Networking :: Glossary

## ASN
An autonomous system number (ASN) is a unique number assigned to an autonomous system (AS) by the Internet Assigned Numbers Authority (IANA). An AS consists of blocks of IP addresses which have a distinctly defined policy for accessing external networks and are administered by a single organization but may be made up of several operators.

## Anycast
Anycast IPv6 address is an identifier for a set of interfaces (typically belonging to different nodes). A packet sent to an anycast address is delivered to one of the interfaces identified by that address (the "nearest" one, according to the routing protocols' measure of distance).

## Broadcast
Broadcasting is only used in IPv4 protocol. IPv6 exludes it since multicasting is basically the same. Broadcasting means sending a transmittion everywhere within a local network. Broadcast is used by the ARP protocol to discover MAC address from IP addresses.

## Carrier Sense Multiple Access
Carrier Sense Multiple Access (CDMA) is a technic for sensing whether there is an ongoing transission on a channel in order to avoid simultaneous transmission by multiple parties, which would results in collisions. Before sending, a host checks whether the channel is used or not; if already used, it waits a random amount of time before retrying.

## Data Link Layer
Data Link Layer (L2) is associated with various protocols in transfering data between the network nodes. It provides the functional and procedural means of transfering data, and also the means to detect and correct transmission errors. Addressing is done using the physical addresses (MAC address) of devices. Ethernet is a common protocol at this layer, and the Protocol Data Unit is a frame.

## GPON
Gigabit-capable Passive Optical Network (GPON) is a standard for Passive Optical Network (PON) commonly used to implement the outermost link, to the customer's home, (aka the last mile) of Fibre-To-The-Premises (FTTP) services.

## DHCP server option codes
The DHCP protocol defines multiple DHCP options used for specifying a range of standardized codes, as well as a range for vendor-specific information. For example, DHCP option 60 allows a client to indicate its vendor type; DHCP option 125 is intended for exchanging vendor-specific information between a DHCP server and its clients. In Windows, vendor-specific DHCP options can be added with the command `netsh dhcp server scope ipaddress set optionvalue 125 {CODE}` that sets the custom `{CODE}` code. The RFC for Vendor-Identifying Vendor Options for DHCPv4: https://datatracker.ietf.org/doc/html/rfc3925

## Ethernet
Ethernet is the most common L2 protocol. PPP is also a L2 protocol, but it is not used directly anymore, but encapsulated inside the Ethernet as PPPoE (PPP over Ethernet). The payload data unit (PDU) of Ethernet is a frame, and the addressing is done using MAC addresses. The packets of the L3 that use IP addressing are handed off to the L2, where the ARP protocol is used to discover the MAC address from an IP address.

## Fieldbus
Fieldbus is the name of a family of industrial computer networks used for real-time distributed control.

## IEEE 802
IEEE 802 is a family of IEEE standards for LANs, PANs and MANs. The IEEE 802 LAN/MAN Standards Committee (LMSC) maintains these standards. The IEEE 802 family of standards has 24 members, numbered 802.1 through 802.24, with a working group of the LMSC devoted to each. However, not all of these working groups are active.

## IEEE 802.2
IEEE 802.2 (the original name of the ISO/IEC 8802-2 standard) defines Logical Link Control (LLC) as the upper portion of the Data Link Layer of the OSI Model.

## IEEE 802.3
IEEE 802.3 is a collection of standards defining the Physical Layer and Data Link Layer's Media Access Control (MAC) of wired Ethernet. This is generally a LAN technology with some WAN applications.

## ITU-T
ITU-T V-Series Recommendations on Data communication over the telephone network specify the protocols that govern approved modem communication standards and interfaces.

## IPX/SPX
Internetwork Packet Exchange/Sequenced Packet Exchange (IPX/SPX) are networking protocols (deprecated L2 protocols) used initially on networks with the (discontinued) Novell NetWare OS. They also became widely used on networks deploying Microsoft Windows LANs, as they replaced NetWare LANs, but are no longer widely used. Ethernet won.

## IBM PC Network
The IBM PC Network was IBM PC's first LAN system. It consisted of network cards, cables, and a small device driver, NetBIOS. It used a data rate of 2 Mbs and Carrier-Sense Multiple Access with Collision Detection (CDMA/CD).

## IPv4 - Internet Protocol version 4
Internet Protocol version 4 (IPv4) is one of the core protocols of Internet that uses a 32-bit address space, providing 2^32 (4,294,967,296) unique addresses. Since all IPv4 addresses are now depleted (although large blocks are reserved for special networking purposes), its successor, IPv6, is now deployed as well.

The Internet Protocol (IP) is the protocol that defines and enables internetworking at the internet layer of the Internet Protocol Suite; in essence, it forms the Internet. IP addressing happens on the L3 of the OSI model, with physical (MAC) addressing at the lower, L2, layer. The IP protocol uses a logical addressing system and performs routing, i.e. the forwarding of packets from a source host to the next router that is one hop closer to the destination host on another network. An IPv4 address has 32 bits and is expressed in the dotted decimal form consisting of 4 octets (8 bits) separated with dots, e.g. 127.0.0.1 (the entire range 127.0.0.0 /8 is wasted since each address is the loopback signifying the same thing, localhost; 256^3 = 2^24 addresses wasted when one was sufficient; no wander the IPv4 address space is gone).

IPv4 is a connectionless protocol, and operates on a best-effort delivery model, in that it does not guarantee delivery, nor does it assure proper sequencing or avoidance of duplicate delivery. These aspects, including data integrity, are addressed by an upper layer transport protocol, such as the TCP.


## Internetwork
Internetworking is the practice of interconnecting multiple computer networks, such that any pair of hosts in the connected networks can exchange messages irrespective of their hardware-level networking technology. The resulting system of interconnected networks is called an internetwork, or simply an internet. In the simplest case, connecting two LANs produces an internetwork. Devices in the same LAN might as well communicate with each other using MAC addressing (of L2). IP addressing (of L3) becomes necessary for communication across the (LAN) networks. However, since the destination device is also a host in some LAN, in the end, the MAC addressing is still used to transmit the data between the last hop (the last router) and the destination host; however, the IP address was required to locate that LAN/network.

## Industrial Ethernet
Industrial Ethernet (IE) is the use of Ethernet in an industrial environment with protocols that provide determinism and real-time control.
LAN segment

## LAN segment
A section of a local area network that is used by a particular workgroup or department and separated from the rest of the LAN by a bridge, router or switch. Networks are divided into multiple segments for security and to improve traffic flow by filtering out packets that are not destined for the segment.

## Logical Link Control
In the IEEE 802 reference model of computer networking, the Logical Link Control (LLC) data communication protocol layer is the upper sublayer of the Data Link Layer (layer 2) of the 7-layer OSI model. The LLC sublayer acts as an interface between the MAC sublayer and the Network Layer.

## Multicast
Multicast IPv6 address is an identifier for a set of interfaces (typically belonging to different nodes). A packet sent to a multicast address is delivered to all interfaces identified by that address.

## OSI model
The Open Systems Interconnection (OSI) model is a reference model (under ISO) that aims (and fails) to provide a common basis for the coordination of standards development for the purpose of systems interconnection. In the OSI reference model, the communications between systems are abstracted into 7 layers: Physical (L1), Data Link (L2), Network (L3), Transport (L4), Session (L5), Presentation (L6), Application (L7). It is useful for the first 4 layers.

### PPP
Point-to-point protocol is the old, standardized communication protocol between two hosts. Today, it is used as PPPoE (PPP over Ethernet).

## Physical layer
In the 7-layer OSI model of computer networking, the physical layer (L1) is the lowest layer most closely associated with the physical connection medium. It provides an electrical, mechanical and procedural interface to the transmission medium. The shapes and properties of the electrical connectors, the frequencies to transmit on, the line code to use, and similar low-level parameters, are specified by the physical layer.

## Protocol Data Unit
Each of the lower layers of the OSI model deals with data in different units, called Protocol Data Units (PDUs). PDU at L2 is called a frame (MAC addressing), PDU at L3 is a packet (IP addressing), PDU at L4 is a segment (port addressing).

## Protocol stack
The protocol stack or network stack is an implementation of a computer networking protocol suite or protocol family. Some of these terms are used interchangeably but strictly speaking, the *suite* is the definition of the communication protocols, and the *stack* is the software implementation of them.

## Routing
Routing is the process of forwarding packets from a source host to the next router that is (pressumingly) one hop closer to the intended destination host on another network.

## RS-232
In telecommunications, *Recommended Standard 232* (RS-232), introduced in 1960, defines the serial transmission of data by describing signals between a DTE, such as a computer terminal, and a DCE, such as a modem. 

The standard defines the electrical characteristics and timing of signals, the meaning of signals, and the physical size and pinout of connectors. The current version of the standard is TIA-232-F Interface Between Data Terminal Equipment and Data Circuit-Terminating Equipment Employing Serial Binary Data Interchange, issued in 1997. The RS-232 standard had been commonly used in computer serial ports and is still widely used in industrial communication devices.

## Subnet
A logical division of a (private) network (a LAN) in order to provide isolation of groups of devices, also improving performance and security. Network performance will be enhanced since the number of nodes competing for the bandwidth will be smaller. Smaller collision domains perform better. One network means one router handles all the traffic alone. Carving it up in smaller groups allows adding more routers for better load balancing, especially if the hosts within the same group talk to each other most of the time. It also makes management of restricted hosts easier (e.g. placing a group behind a firewall). Subnet mask indicates the number of bits that comprise the network prefix. If this prefix is the same as the default subnet mask for that class of IP addresses, then no subnets can exists; if the network prefix is larger, that difference indicates the bits that signify subnets. The rest of the bits are for host addressing.
In an IP network, the subnet is identified by a .

## Subnet mask
In classfull routing, the boundary between the network and host portions of the 32 bits that make up an IPv4 address is fixed producing 3 main classes of IP addresses, A, B and C, (along with 2 more reserved classes D and E).



In classless routing, the boundary between the network and host portions of the 32 bits that make up an IPv4 address is flexible, so it needs to be expressed somehow as to be relayed with every IP address. 

The CIDR notation indicates this number, called the network prefix, directly, in decimal, e.g. /8 means the first 8 bit, (i.e. the first octet) make up the network address. Another way to indicate this, is to mark the bits that make up the network address with 1's, with the rest of the bits of an IP address set to 0. Then, expressing the resulting binary number in the dotted-decimal notation, we get the subnet mask. For example, if the network address takes the first 10 bits that means the 1st octet is all 1's (FF or 255), the 2nd is the "interesting" octet being 11000000 (C0 or 192), and the 3rd and 4th octets are all 0's (i.e. just 0). The subnet mask is then 255.192.0.0, or, equivalently, /10 in the CIDR notation. Each class of addresses has a default subnet mask which can be modified (increased only?) to adjust the ratio between the number of subnets vs number of hosts.

## Time-division multiple access
Time-Division Multiple Access (TDMA) is a channel access method for shared-medium networks. It allows several users to share the same frequency channel by dividing the signal into different time slots. The users transmit in rapid succession, one after the other, each using its own time slot. This allows multiple stations to share the same transmission medium (fiber-optic cable or radio frequency channel) while using only a part of its channel capacity.

## Unicast
Unicast IPv6 address is an identifier for a single interface. It is one of 3 types of IPv6 addresses (unicast, anycast, multicast). A packet sent to a unicast address is delivered to the interface identified by that address.
