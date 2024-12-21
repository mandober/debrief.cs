# Ethernet

https://wiki.wireshark.org/Ethernet
https://wiki.wireshark.org/CaptureSetup/Ethernet
https://wiki.wireshark.org/CaptureSetup/Offloading
https://wiki.wireshark.org/ProtocolReference
https://wiki.wireshark.org/Ethernet
https://wiki.wireshark.org/EthernetHardware
https://wiki.wireshark.org/Unicast
https://wiki.wireshark.org/Broadcast
https://wiki.wireshark.org/Multicast
https://wiki.wireshark.org/CaptureSetup/Ethernet
https://standards.ieee.org/products-programs/ieee-get-program/

## Overview

Ethernet is the most common local area networking technology, and, with gigabit and 10 gigabit Ethernet, is also being used for metropolitan-area and wide-area networking.

It is specified by various IEEE 802.3 specifications.

Ethernet sends network packets from the sending host to one (Unicast) or more (Multicast/Broadcast) receiving hosts.

## Packet format

A physical Ethernet packet will look like this:

Preamble | Dest MAC | Src MAC | Type/Length | User Data | FCS
8        | 6        | 6       | 2           | 46 - 1500 | 4


As the Ethernet hardware filters the preamble, it is not given to Wireshark or any other application. Most Ethernet interfaces also either don't supply the FCS to Wireshark or other applications, or aren't configured by their driver to do so; therefore, Wireshark will typically only be given the green fields, although on some platforms, with some interfaces, the FCS will be supplied on incoming packets.
