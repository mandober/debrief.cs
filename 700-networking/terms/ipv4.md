# IPv4

https://en.wikipedia.org/wiki/IPv4

Internet Protocol version 4 (IPv4) is the first version of the Internet Protocol (IP) as a standalone specification. It is one of the core protocols of standards-based internetworking methods in the Internet and other packet-switched networks.

IPv4 was the first version deployed for production on SATNET in 1982 and on the ARPANET in January 1983. It is still used to route most Internet traffic today, even with the ongoing deployment of IPv6, its successor.

IPv4 uses a 32-bit address space which provides 4,294,967,296 (2³²) unique addresses, but large blocks are reserved for special networking purposes.

## Contents

- 1. History
- 2. Purpose
- 3. Addressing
  - 3.1. Address representations
  - 3.2. Allocation
  - 3.3. Special-use addresses
    - 3.3.1. Private networks
  - 3.4. Link-local addressing
  - 3.5. Loopback
  - 3.6. First and last subnet addresses
  - 3.7. Address resolution
  - 3.8. Unnumbered interface
- 4. Address space exhaustion
- 5. Packet structure
  - 5.1. Header
  - 5.2. Data
- 6. Fragmentation and reassembly
  - 6.1. Fragmentation
  - 6.2. Reassembly
- 7. Assistive protocols
- 8. See also
- 9. Notes
- 10. References
- 11. External links


## History

Earlier versions of TCP/IP were a combined specification through TCP/IPv3. With IPv4, the Internet Protocol became a separate specification.

Internet Protocol version 4 is described in IETF publication RFC 791 (September 1981), replacing an earlier definition of January 1980 (RFC 760). In March 1982, the US Department of Defense decided on the Internet Protocol Suite (TCP/IP) as the standard for all military computer networking.

## Purpose

The Internet Protocol is the protocol that defines and enables internetworking at the Internet layer of the Internet Protocol Suite. In essence it forms the Internet.

It uses a logical addressing system and performs **routing**, which is the forwarding of packets from a source host to the next router that is one hop closer to the intended destination host on another network.

IPv4 is a *connectionless protocol*, and operates on a *best-effort delivery* model, in that it does not guarantee delivery, nor does it assure proper sequencing or avoidance of duplicate delivery.

These aspects, including data integrity, are addressed by an upper layer transport protocol, such as TCP.

## Addressing

For broader coverage of this topic, see IP address:
https://en.wikipedia.org/wiki/IP_address

IPv4 uses 32-bit addresses which limits the address space to 4,294,967,296 (2³²) addresses.

IPv4 reserves special address blocks for private networks (2²⁴ + 2²⁰ + 2¹⁶ ≈ 18 million addresses) and multicast addresses (2²⁸ ≈ 268 million addresses).
