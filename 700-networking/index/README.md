# Networking :: Index

Indices of sequences/groups/collections releted to networking.

- OSI layers
  - L7 Application layer
  - L6 Presentation layer
  - L5 Session layer
  - L4 Transport layer
  - L3 Network layer
  - L2 Data link layer
  - L1 Physical layer

- TCP/IP layers
  - Application layer         (OSI L1-L3)
  - Transport layer           (OSI L4)
  - Internet (Network) layer  (OSI L3)
  - Network access layer      (OSI L1-L2)

- Addresses
  - IPv4 address
    - 32-bit binary number
      - expressed in a quad dotted-decimal form
      - subnet mask
      - CIDR notation, VLSM, NAT
      - 10.0.0.255
      - 8.8.8.8
      - 255.255.255.255
      - 0.0.0.0 /0
    - classes
      - A B C D E
    - ranges
      - public
      - special
        - private
        - localhost
        - link-local
        - broadcast
  - MAC address
    - 48-bit binary number
    - aka phisical address
    - expressed as (colon-separated) 6 groups of 2 hex digits
    - ca:fe:ba:be:12:34
    - first 24 bits define manufacturer (OUI)
    - last  24 bits are device ID (phisical ID)
  - IPv6 address
    - 128-bit binary number
    - expressed as colon-separated 8 groups of 4 hex digits
      for 32 hex digits total
    - dead:face:cafe:babe:cade:bead:


- Delivery methods
  - unicast:
    - specific MAC address
    - specific IP address
  - multicast (1-to-many)
    - MAC addresses with specific heading bits and partially reflecting IP addr
    - list of IP addresses of subscribers
  - broadcast (1-to-all)
    - MAC address with all 1's
    - the last IP address in a network (usually ends in .255)
