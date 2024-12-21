# Classfull IP addressing

When IP was first standardized in Sep 1981, the specification required that each system attached to an IP-based network be assigned a unique, 32-bit Internet address. Some systems, such as routers which have an interfaces for each network they connect to, must be assigned a unique IP address for each network interface.

The first part of an Internet address identifies the network (Network ID) on which the host resides, while the second part identifies the particular host (Host ID) on that network. This has created a two-level addressing hierarchy.

The network-number field (Network ID) is also called *network prefix* because the leading portion of each IP address identifies the network. All hosts on a given network share the same network-prefix but must have a unique host-number. Similarly, any two hosts on different networks must have different network-prefixes but may have the same host-number.

## Primary address classes

In order to provide the flexibility to support different sizes of networks, the designers decided that the IP address space should be divided into 3 classes: A, B and C.

This is often called *classful addressing* since the address space is split into 3 predefined groups, but more importantly, it is because the classless addressing model was introduced later.

Each class fixes the boundary between the network-prefix and host-number at a different bit (of the 32 bits in an address).

Class address ranges:
- Class A = 1.0.0.0   to 126.0.0.0
- Class B = 128.0.0.0 to 191.255.0.0
- Class C = 192.0.1.0 to 223.255.255.0

The formats of the fundamental address classes illustrated
- Class A: /8   (8 bits network-prefix, 24 bits host-ids)
- Class B: /16 (16 bits network-prefix, 16 bits host-ids)
- Class C: /24 (24 bits network-prefix,  8 bits host-ids)

```
┌─┬─┬─┬─┬─┬─┬─┬─┰─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┐
│⁰│     8       ┃                        24                     │ A class
└─┴─┴─┴─┴─┴─┴─┴─┸─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┘

┌─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┰─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┐
│¹│⁰│          16               ┃              16               │ B class
└─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┸─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┘

┌─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┬─┰─┬─┬─┬─┬─┬─┬─┬─┐
│¹│¹│⁰│        24                               ┃       8       │ C class
└─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┴─┸─┴─┴─┴─┴─┴─┴─┴─┘
```

One of the fundamental features of classful IP addressing is that each address contains a self-encoding key that identifies the dividing point between the network-prefix and the host-number.

For example, if an IP address begins with `10`, the dividing point is after the bit 15 (numbering starts at 0, so this is 16th bit).

This simplified the routing system during the early years of the Internet when the subnet mask was not yet invented to identify the length of network-prefix.


Class A: /8 - /30
Class B: /16 - /30
Class C: /24 - /30


## Class A

Class A networks with `/8` prefixes

Each Class A network address has 8-bit network-prefix with the highest order bit set to `0`, and a *7-bit network number* (what? not 8? the msb may be fixed but it still counts, no?), followed by a 24-bit host-number.

Today, we no longer refer to it as Class A network, but as `/8s` (pronounced "slash eight" or just "eights") since they have an 8-bit network-prefix.

A maximum of 126 (2⁷ - 2) `/8` networks can be defined. We subtract 2 because the /8 network `0.0.0.0` is reserved for use as the *default route*, and the /8 network `127.0.0.0` (also written `127/8` or `127.0.0.0/8`) is reserved for the "loopback" function.

Each /8 supports a maximum of 16,777,214 (2²⁴ - 2) hosts per network. We subtract 2 because the first address with all 0's is reserved to denote "this network" (current network ID); and the last address, with all 1's, is reserved as the broadcast address.

Since /8 address block contains 2³¹ (2,147,483,648 ) individual addresses, and IPv4 address space contains 2³² (4,294,967,296) addresses, this should mean that __/8 address space makes 50% of the total IPv4 unicast address space__.

0.0.0.0/8
