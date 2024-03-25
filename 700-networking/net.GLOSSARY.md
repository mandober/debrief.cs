# Networking :: Glossary

## GPON
GPON (gigabit-capable passive optical network), is a standard for PON commonly used to implement the outermost link to the customer (the last mile) of FTTP services. GPON puts requirements on the optical medium and the hardware used to access it, and defines the manner in which ethernet frames are converted to an optical signal, as well as the parameters of that signal. Implementations of GPON share a lot of common features, but many were left undefined (exact kind of fibre cable and connectors), so there is poor compatibility between the various implementations in practice. The bandwidth of the single connection between the OLT and the ONTs is 2.4 Gbit/s for download, 1.2 Gbit/s for upload, shared between 32 (or 64 or 128) ONTs using a TDMA protocol defined by the standard. The upstream signals transmitted between a user and OLT only are not shared, but the downstream signals are broadcast to all users that share a fiber, so AES encryption is employed to prevent eavesdropping. Downstream and upstream can use the same fiber because they use different wave lengths. The primary optical transmitter, aka the OLT, is housed at the provider. A laser in the OLT injects photons into a glass-and-plastic (which have different diffraction indices so that light bounces and stays within the glass) fiber-optic cable that terminates at a passive optical splitter. The splitter divides the single signal from the provider into user signals. The maximum distance between the provider and a user is 16 km.

## DHCP server option codes
The DHCP protocol defines multiple DHCP options used for specifying a range of standardized codes, as well as a range for vendor-specific information. For example, DHCP option 60 allows a client to indicate its vendor type; DHCP option 125 is intended for exchanging vendor-specific information between a DHCP server and its clients. In Windows, vendor-specific DHCP options can be added with the command `netsh dhcp server scope ipaddress set optionvalue 125 {CODE}` that sets the custom `{CODE}` code. The RFC for Vendor-Identifying Vendor Options for DHCPv4: https://datatracker.ietf.org/doc/html/rfc3925

## Fieldbus
Fieldbus is the name of a family of industrial computer networks used for real-time distributed control.

## Industrial Ethernet
Industrial Ethernet (IE) is the use of Ethernet in an industrial environment with protocols that provide determinism and real-time control.

## Petri net
A Petri net, also known as a *place/transition (PT) net*, is one of several mathematical modeling languages for the description of distributed systems. It is a class of discrete event dynamic system. A Petri net is a directed bipartite graph that has two types of elements, places and transitions, depicted as white circles and rectangles, respectively. A place can contain any number of tokens, depicted as black circles. A transition is enabled if all places connected to it as inputs contain at least one token.

## Time-division multiple access
TDMA is a channel access method for shared-medium networks. It allows several users to share the same frequency channel by dividing the signal into different time slots. The users transmit in rapid succession, one after the other, each using its own time slot. This allows multiple stations to share the same transmission medium (e.g. fiber-optic cable or radio frequency channel) while using only a part of its channel capacity.

## Logical Link Control
In the IEEE 802 reference model of computer networking, the Logical Link Control (LLC) data communication protocol layer is the upper sublayer of the data link layer (layer 2) of the 7-layer OSI model. The LLC sublayer acts as an interface between the MAC sublayer and the network layer.
