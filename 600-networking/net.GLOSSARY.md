# Networking ∷ Glossary

## Fieldbus
Fieldbus is the name of a family of industrial computer networks used for real-time distributed control.

## DHCP server option codes
The DHCP protocol defines multiple DHCP options used for specifying a range of standardized codes, as well as a range for vendor-specific information. For example, DHCP option 60 allows a client to indicate its vendor type; DHCP option 125 is intended for exchanging vendor-specific information between a DHCP server and its clients. In Windows, vendor-specific DHCP options can be added with the command `netsh dhcp server scope ipaddress set optionvalue 125 {CODE}` that sets the custom `{CODE}` code. The RFC for Vendor-Identifying Vendor Options for DHCPv4: https://datatracker.ietf.org/doc/html/rfc3925

## Industrial Ethernet
Industrial Ethernet (IE) is the use of Ethernet in an industrial environment with protocols that provide determinism and real-time control.

## Petri net
A Petri net, also known as a *place/transition (PT) net*, is one of several mathematical modeling languages for the description of distributed systems. It is a class of discrete event dynamic system. A Petri net is a directed bipartite graph that has two types of elements, places and transitions, depicted as white circles and rectangles, respectively. A place can contain any number of tokens, depicted as black circles. A transition is enabled if all places connected to it as inputs contain at least one token.
