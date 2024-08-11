# Networking :: Glossary

## GPON
GPON (gigabit-capable passive optical network), is a standard for PON commonly used to implement the outermost link to the customer (the last mile) of FTTP services.

## DHCP server option codes
The DHCP protocol defines multiple DHCP options used for specifying a range of standardized codes, as well as a range for vendor-specific information. For example, DHCP option 60 allows a client to indicate its vendor type; DHCP option 125 is intended for exchanging vendor-specific information between a DHCP server and its clients. In Windows, vendor-specific DHCP options can be added with the command `netsh dhcp server scope ipaddress set optionvalue 125 {CODE}` that sets the custom `{CODE}` code. The RFC for Vendor-Identifying Vendor Options for DHCPv4: https://datatracker.ietf.org/doc/html/rfc3925

## Fieldbus
Fieldbus is the name of a family of industrial computer networks used for real-time distributed control.

## IEEE 802.11p
## IEEE 802.11
## IEEE 802
IEEE 802 is a family of Institute of Electrical and Electronics Engineers (IEEE) standards for local area networks (LANs), personal area networks (PANs), and metropolitan area networks (MANs). The IEEE 802 LAN/MAN Standards Committee (LMSC) maintains these standards. The IEEE 802 family of standards has had twenty-four members, numbered 802.1 through 802.24, with a working group of the LMSC devoted to each. However, not all of these working groups are currently active.

## Industrial Ethernet
Industrial Ethernet (IE) is the use of Ethernet in an industrial environment with protocols that provide determinism and real-time control.

## Logical Link Control
In the IEEE 802 reference model of computer networking, the Logical Link Control (LLC) data communication protocol layer is the upper sublayer of the data link layer (layer 2) of the 7-layer OSI model. The LLC sublayer acts as an interface between the MAC sublayer and the network layer.

## Petri net
A Petri net, also known as a *place/transition (PT) net*, is one of several mathematical modeling languages for the description of distributed systems. It is a class of discrete event dynamic system. A Petri net is a directed bipartite graph that has two types of elements, places and transitions, depicted as white circles and rectangles, respectively. A place can contain any number of tokens, depicted as black circles. A transition is enabled if all places connected to it as inputs contain at least one token.

## Time-division multiple access
TDMA is a channel access method for shared-medium networks. It allows several users to share the same frequency channel by dividing the signal into different time slots. The users transmit in rapid succession, one after the other, each using its own time slot. This allows multiple stations to share the same transmission medium (e.g. fiber-optic cable or radio frequency channel) while using only a part of its channel capacity.
