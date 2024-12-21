# Special-Purpose Address Registry Entries

## IPv4 Special-Purpose Address Registry Entries

0.0.0.0/8           Represents the local (i.e. "this") network
198.18.0.0/15       Network Interconnect Device Benchmark Testing
10.0.0.0/8          Private-Use
100.64.0.0/10       Shared Address Space
127.0.0.0/8         Loopback
169.254.0.0/16      Link Local
172.16.0.0/12       Private-Use
192.0.0.0/24        IETF Protocol Assignments  
192.0.0.0/29        DS-Lite
192.0.2.0/24        Documentation (TEST-NET-1)
192.88.99.0/24      6to4 Relay Anycast
192.168.0.0/16      Private-Use
198.18.0.0/15       Benchmarking
198.51.100.0/24     Documentation (TEST-NET-2)
203.0.113.0/24      Documentation (TEST-NET-3)
240.0.0.0/4         Reserved 
255.255.255.255/32  Limited Broadcast


## IPv6 Special-Purpose Address Registry Entries

::1/128             Loopback Address, `::1`
::/128              Unspecified Address, `::`
64:ff9b::/96        IPv4-IPv6 Translation
::ffff:0:0/96       IPv4-mapped Address
100::/64            Discard-Only Address Block
2001::/23           IETF Protocol Assignments
2001::/32           TEREDO 
2001:2::/48         Benchmarking
2001:db8::/32       Documentation
2001:10::/28        ORCHID
2002::/16           6to4
fc00::/7            Unique-Local
fe80::/10           Linked-Scoped Unicast



0000         IPv4-mapped Address


0000:0000:0000:0000:0000:0000:0000:0001 /128 Loopback address (::1)
0000:0000:0000:0000:0000:ffff:0000:0000 /96  IPv4-mapped Address (::ffff:0:0/96)
0064:ff9b:0000:0000:0000:0000:0000:0000 /96  IPv4-IPv6 Translation


::                   /128   Unspecified Address (::)
::1                  /128   Loopback Address (::1)

::ffff:0:0           /96    IPv4-mapped Address
64:ff9b::            /96    IPv4-IPv6 Translation

0100::               /64    Discard-Only Address Block
2001:   2::          /48    Benchmarking
2001: db8::          /32    Documentation
2001:  10::          /28    ORCHID
2001::               /32    TEREDO 
2001::               /23    IETF Protocol Assignments
2002::               /16    6to4
fc00::               /7     Unique-Local
fe80::               /10    Linked-Scoped Unicast
