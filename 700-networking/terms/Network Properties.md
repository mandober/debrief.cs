# Network Properties

Network Items:
- [x] Client for Microsoft Networks
- [ ] File and Printer Sharing for Microsoft Networks
- [x] COMODO Internet Security Firewall Driver
- [ ] QoS Packet Scheduler
- [x] Internet Protocol Version 4 (TCP/IPv4)
- [x] Internet Protocol Version 6 (TCP/IPv6)
- [ ] Microsoft Network Adapter Multiplexor Protocol
- [x] Microsoft LLDP Protocol Driver
- [x] Link-Layer Topology Discovery Responder
- [x] Link-Layer Topology Mapper I/O
- [ ] Hyper-V Extensible Virtual Switch


https://www.wikiwand.com/en/Microsoft_Network_Monitor


## Link-Layer Discovery Protocol (LLDP)

- Microsoft LLDP Protocol Driver
- Link-Layer Topology Discovery Responder
- Link-Layer Topology Mapper I/O

https://www.wikiwand.com/en/Link_Layer_Topology_Discovery

*Link Layer Discovery Protocol (LLDP)* has the same aim (and is on the same, link, layer) as this article's topic, *Link-Layer Topology Discovery Responder (MS-LLTD)*, but it is IEEE standard protocol, not a MS one.

Used by Network Map feature to display a graphical representation of the LAN or wireless LAN (WLAN), to which the computer is connected.

Being a link layer (or OSI Layer 2) implementation, LLTD operates strictly on a given local network segment. It cannot discover devices across routers, an operation which would require Internet Protocol level routing.

Link Layer Topology Discovery consists of two components:
- LLTD Mapper I/O
- LLTD Responders

The LLTD Mapper I/O component is the master module which controls the discovery process and generates the Network Map. The Mapper sends discovery command packets onto the local network segment via a raw network interface socket.

The second component of LLTD are the LLTD Responders which answer Mapper requests about their host and possibly other discovered network information.

In addition to illustrating the layout of a network with representative icons for the hosts and interconnecting lines, each device icon may be explored to produce a popup information box summarizing important network and host parameters, such as MAC address and IP address (both IPv4 and IPv6).

Icons are labeled with the hostnames (or first component of their fully qualified domain names), or a representative name of the function of the device, e.g., "gateway". If the device has reported the presence of a management Web interface, clicking on the icon will open a HTTP session to the host.



## Internet Protocol Version 4

* General
  - Obtain IP address automatically
  - Manual IP settings
    - IP address: ...
    - Subnet mask: ...
    - Default gateway: ...
  - Obtain DNS address automatically
  - Manual DNS settings:
    - Preferred DNS server...
    - Alternate DNS server...
  - [ ] Validate settings upon exit
* Advanced
  * IP Settings
    - IP addresses...
    - Gateways...
    - [ ] Automatic metric
  * DNS
    - DNS servers
    The following three settings are applied to all connections with TCP/IP
    enabled. For resolution of unqualified names:
    - [ ] Append primary and connection specific DNS suffix
      - [ ] Append parent suffic of the primary DNS suffix
    - [ ] Append these DNS suffixes (in order): ...
    - DNS suffix for this connection: `dr.dev`
    - [ ] Register this connection's address in DNS
    - [ ] Use this connection's DNS suffix in DNS registration
  * WINS
    * WINS addresses: ...
    * If LMHOSTS lookup is enabled, it applies to all connections for which
      TCP/IP is enabled.
      - [x] Enable LMHOSTS lookup
      - Import LMHOSTS...
    * NetBIOS settings
      - [x] Default: Use NetBIOS setting from the DHCP server. If static IP address
        is used or the DHCP server does not provide NetBIOS setting, enable 
        NetBIOS over TCP/IP.
      - [ ] Enable NetBIOS
      - [ ] Disable NetBIOS
      
      
      
  
  

  
  