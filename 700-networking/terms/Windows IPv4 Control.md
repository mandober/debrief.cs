# IPv4 Windows Interface

Windows control (interface) for managing Internet Protocol Version 4

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
      
