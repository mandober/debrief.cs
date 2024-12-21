# Networking

## Modelling network communication 

Computer networks are traditionally descibed using the OSI conceptual model, which abstracts communication into 7 layers, descibing what each layer should be responsible for. The lower layers (L1-L4) are still relevant, but the higher layers (L5-L7) and their concerns do not match the reality as clearly.

OSI model
- L7 Application layer
- L6 Presentation layer
- L5 Session layer
- L4 Transport layer
- L3 Network layer
- L2 Data Link layer
- L1 Physical layer

OSI model works great for the bottom layers (L1 to L4) - they are clearly defined and demarcated with a clear separation of concerns and responsibilities. The upper layers (L5-L7) are a mess with different sources placing things in different layers (unlike with L1-L4), with no agreement what they are supposed to do except for "general guidelines" (e.g. the majority seems to agree that the HTTP protocol happens at L1, but HTTPS is all over the top: sometimes at L2, sometimes at L3, and sometimes in between the layers L7 and L6 or even L6 and L5).

Another model of communication is the TCP/IP model which organizes the information slightly differently, combining some OSI layers into one to simplify the picture. The TCP/IP model has 4 layers:
- Application layer         (combines OSI's L1-L3)
- Transport layer           (matches OSI's L4)
- Internet (Network) layer  (corresponds to OSI L3)
- Network access layer      (combines OSI's L1 and L2)

## The lower layers

Everybody agrees on these. There is a clear division of jurisdiction, responsibility, and concerns accross the bottom layers (OSI's L1-L4). This is because, except for the physical layer that operationally deals with voltages and waves but logically with bit streams, each of these 3 layers (L4 Transport layer, L3 Network layer, L2 Data Link layer) is clearly demarcated and well-defined in terms of:
- the layer's unit of data, PDU (payload data unit)
- how those organizational data units are addressed, address types
- which of the common devices are present at each layer
- what are the common protocols at each layer


LN | OSI layer name  | Unit    | Address | Devices | Protocols
---|-----------------|---------|---------|---------|-----------------
L4 | Transport layer | segment | port    | router  | 
L3 | Network layer   | packet  | IP      | switch  | TCP/IP
L2 | Data Link layer | frame   | MAC     | hub     | Ethernet, PPPoE

**Frame** is the data unit of layer 2, but its format depends on the protocol used. Today, almost all traffic at this layer is made up of the Ethernet type of frames. The old *PPP* (point to point) protocol have seen some use but indirectly, as *PPPoE* (point to point over Ethernet). Ethernet is the clear winner of the protocol wars of the olden ages (1970's).

**Ethernet frame** encapsulates packets of the layer above; packets are sorta "inserted" into frames because there is a header and a footer to an (Ethernet) frame, i.e. the header, payload, and finally the trailing part.

In Ethernet traffic, first the *Preamble* (alternating 0's and 1's, i.e. a 56-bit worth, 01 01 01 01 01 …) is emitted on the line to give an oppurtunity to the destination host to sync. The last byte of the Preamble is called a *FSS* and it is the sequance of bits (01 01 01 11) that looks the same as the 56 bits of the preamble except the last pair of digits is 11, signaling the start of the frame. Then a frame is emitted, and after it comes the *inter-frame gap* (IFG) of ?-bits.

Ethernet frame is comprised of
- variable header, thus the final length of the header is recorded in a field
  - fields arranged (logically) in 4-byte rows
- variable payload (46-1500 bytes)
  - since it is variable, its length is also recorded
- options (optional and rarely used)
- tail




## Delivery types of network traffic

- unicast   (1-to-1)
- multicast (1-to-many)
- broadcast (1-to-all)

Broadcasting a packet means the packet is sent to each host (save for the originating device) in the network (LAN segement) - more precisely, in the current *broadcast domain*.

A *hub* is a dumb device that repeats everything it receives on all its ports. It is a L2 device, so it just knows frames and MAC addresses


all (frames, not packets - since L2 only talks frames) it receives (cos it doesn't know any better) resulting in congestion. Switch is L3 device that know better, but then when we want to broadcast a packet, we need to come up with ways to do it, which should be solved at L2 and L3.

At L2, with frames which are transitted according to their src/dest MAC addresses, the way to broadcast is to set the destination MAC address to all 1's (i.e. all F's in hex).

To mutlicast, a specific MAC addressing schema is also used.

Broadcasting is crucial for functioning of the ARP protocol (maps an IP address to a MAC address). ARP protocol is mainly used by the router and it works by broadcasting queries like "Who has IP `192.168.1.5`? Tell `ca:fe:ba:be:12:34`" to the local LAN (segment). All the network's hosts then receive this packet (frame), and the host with the IP address `192.168.1.5` sends a reply (frame) containing its own MAC address (as src) to the destination MAC address `ca:fe:ba:be:12:34`.
