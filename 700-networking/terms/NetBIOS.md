# NetBIOS

https://en.wikipedia.org/wiki/NetBIOS
https://en.wikipedia.org/wiki/NetBIOS_Frames

NetBIOS, an acronym for Network Basic Input/Output System, provides services related to the session layer of the OSI model (L5) allowing applications on separate computers to communicate over a LAN.

NetBIOS goes back to the old IBM days. It was designed to be an interface for old school IBM PCs, to connect them up to build small non-routable LANs. It was a time when many PC's did not have Internet access, so back in the 80's, connecting computers together to share files and printers was something of a novel concept. NetBIOS is not popular now with FQDN/Internet names/DNS system being primarily used for *name resolution*, but it will probably remain as long as there are WINS services. "Network Neighborhood" in older Windows version was NetBIOS at work. NetBIOS is a non-routable protocol by itself. It provides name resolution and file/printer sharing to computers on the same network. It was the normal protocols that Microsoft used before they switched to AD/LDAP, Kerberos, and DNS.

As strictly an API, NetBIOS is not a networking protocol.

Operating systems of the 1980s (DOS and Novell Netware primarily) ran NetBIOS over IEEE 802.2 and IPX/SPX using the *NetBIOS Frames (NBF)* and *NetBIOS over IPX/SPX (NBX)* protocols, respectively. In modern networks, NetBIOS normally runs over TCP/IP via the *NetBIOS over TCP/IP (NBT)* protocol.

NetBIOS is also used for identifying system names in TCP/IP in Windows.

Contents
- 1. History and terminology
- 2. Services
  - 2.1. Name service
  - 2.2. Datagram distribution service
  - 2.3. Session service
- 3. NetBIOS name vs Internet host name
  - 3.1. NetBIOS name
  - 3.2. Internet host name
- 4. Node types
- 5. NetBIOS Suffixes
- 6. Protocol stack
- 7. See also
- 8. References
- 9. Further reading
- 10. External link







## RFC 1001 - NetBIOS service on a TCP/UDP transport

RFC 1001 Protocol standard for a NetBIOS service on a TCP/UDP transport
https://www.rfc-editor.org/pdfrfc/rfc1001.txt


NetBIOS provides a vendor independent interface for the IBM Personal Computer (PC) and compatible systems.

NetBIOS defines a software interface not a protocol. There is no "official" NetBIOS service standard. In practice, however, the IBM PC-Network version is used as a reference. That version is described in the IBM document 6322916, "Technical Reference PC Network".

NetBIOS was designed for use by groups of PCs, sharing a broadcast medium. Both *connection (Session)* and *connectionless (Datagram)* services are provided, and broadcast and multicast are supported. Participants are identified by name. Assignment of names is distributed and highly dynamic.


## NetBIOS Frames

https://en.wikipedia.org/wiki/NetBIOS_Frames

NetBIOS Frames (NBF) is a non-routable network-level (L3) and transport-level (L4) data protocol most commonly used as one of the layers of Microsoft Windows networking in the 1990s.

NBF or *NetBIOS over IEEE 802.2 LLC* is used by a number of network OSs from 1990s, such as LAN Manager, LAN Server, Windows for Workgroups, Windows 95 and Windows NT. Other protocols, such as NBT (NetBIOS over TCP/IP), and NBX (NetBIOS-over-IPX/SPX) also implement the NetBIOS/NetBEUI services (over the respective protocol suites).

The NBF protocol is broadly, but incorrectly, referred to as NetBEUI. This originates from the confusion with *NetBIOS Extended User Interface*, an extension to the NetBIOS API that was originally developed in conjunction with the NBF protocol; both the protocol and the NetBEUI emulator were originally developed to allow NetBIOS programs to run over IBM's new *Token Ring network*. Microsoft caused this confusion by labelling its NBF protocol implementation NetBEUI. NBF is a protocol and the original NetBEUI was a NetBIOS API extension.

## Overview

NBF protocol uses
- 802.2 type 1 mode to provide the NetBIOS/NetBEUI name service and datagram service, and 
- 802.2 type 2 mode to provide the NetBIOS/NetBEUI session service (virtual circuit).

NBF protocol makes wide use of broadcast messages, which accounts for its reputation as a chatty interface. While the protocol consumes few network resources in a very small network, broadcasts begin to adversely impact performance and speed when the number of hosts present in a network grows.

Sytek developed NetBIOS for IBM for the PC-Network program and was used by Microsoft for MS-NET in 1985. In 1987, Microsoft and Novell utilized it for their network operating systems LAN Manager and NetWare.

Because NBF protocol is unroutable it can only be used to communicate with devices in the same broadcast domain, but being bridgeable it can also be used to communicate with network segments connected to each other via bridges.

The lack of support for routable networks means that NBF is only well-suited for small to medium-sized networks, where it has such an advantage over TCP/IP that requires little configuration.

The NetBIOS/NetBEUI services must be implemented atop other protocols, such as IPX and TCP/IP (see above) in order to be of use in an internetwork.

## Services

NetBIOS/NetBEUI provides 3 distinct services:
- Name service for name registration and resolution
- Datagram distribution service for connectionless communication
- Session service for connection-oriented communication

NBF protocol implements all of these services.


## Terminology

Because of the history of the protocols being discussed here and lack of standards, there is often confusion in the use of some of the terms; it is not uncommon to hear statements of the form "NetBIOS is not a protocol" or "NetBEUI is a protocol".

>NetBIOS is not a protocol
NetBIOS was designed as an interface. NetBIOS was designed to be an extension to the BIOS to provide networking services. At the risk of being pedantic, NetBIOS was designed as an application API. It is interesting (and the source of some confusion) that it was the API which was the standard.

>NetBIOS is a protocol
The term "protocol" is often used as a shorthand reference to a suite of protocols (a well known example is the use of the term "TCP/IP protocol" to refer to a collection of protocols). The informal use of the term "protocol" is well understood and accepted practice. It has become standard practice to use the term "NetBIOS protocol" to refer to the original set of protocols in use with the NetBIOS API and the protocols which followed. The current official term used by IBM is "NetBIOS Frames Protocol" (NBF) and it is not unreasonable to shorten this to "NetBIOS".

>NetBEUI is not a protocol
If NetBIOS is not a protocol, but is an API, then an "Extended User Interface" to this API is also not a protocol. As mentioned above, and described in the history, when IBM developed Token Ring it was continuity of the API to ensure applications would continue to function which was important. The NetBIOS API was preserved and extended in the NetBIOS Extended user Interface, NetBEUI.

>NetBEUI is a protocol
With the development of NetBEUI, a set of protocols was developed, now know as the NetBIOS Frames Protocol. Since the NetBIOS Frames Protocol was used with the NetBEUI API it became accepted practice to refer to these protocols as the "NetBEUI protocol". It is still common to find documentation which refers to the "NetBEUI protocol".


## Links

* NetBIOS intro
https://web.archive.org/web/20070207171212/http://ourworld.compuserve.com/homepages/timothydevans/intro.htm

* NetBIOS encapsulation
https://web.archive.org/web/20060915105324/http://ourworld.compuserve.com/homepages/timothydevans/encap.htm

* Q128233: Comparison of Windows NT Network Protocols
https://jeffpar.github.io/kbarchive/kb/128/Q128233/
KnowledgeBase Archive - Archive of Early Microsoft KnowledgeBase Articles
