# Link-Layer Topology Discovery Responder

https://www.wikiwand.com/en/Link_Layer_Topology_Discovery

**Link Layer Discovery Protocol (LLDP)** has the same aim (and is on the same, link, layer) as this article's topic, **Link-Layer Topology Discovery Responder (MS-LLTD)**, but it is IEEE standard protocol, not a Microsoft one.

Used by *Network Map* feature to display a graphical representation of the LAN or wireless LAN (WLAN), to which the computer is connected.

Being a link layer (or OSI Layer 2) implementation, LLTD operates strictly on a given local network segment. It cannot discover devices across routers, an operation which would require Internet Protocol level routing.

Link Layer Topology Discovery consists of two components:
- LLTD Mapper I/O
- LLTD Responders

The LLTD Mapper I/O component is the master module which controls the discovery process and generates the Network Map. The Mapper sends discovery command packets onto the local network segment via a raw network interface socket.

The second component of LLTD are the LLTD Responders which answer Mapper requests about their host and possibly other discovered network information.

In addition to illustrating the layout of a network with representative icons for the hosts and interconnecting lines, each device icon may be explored to produce a popup information box summarizing important network and host parameters, such as MAC address and IP address (both IPv4 and IPv6).

Icons are labeled with the hostnames (or first component of their fully qualified domain names), or a representative name of the function of the device, e.g., "gateway". If the device has reported the presence of a management Web interface, clicking on the icon will open a HTTP session to the host.

