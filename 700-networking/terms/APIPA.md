# APIPA

Automatic Private IP Addressing (APIPA)

When no DHCP server is available, Windows automatically assigns an IP address in a specific private IP range.

If all computers on a subnet are using APIPA addresses, they can communicate with one another without requiring any additional configuration.

APIPA was introduced with Windows 98 and works the same in all versions of Windows released since.

The Internet Assigned Numbers Authority (IANA) has reserved these 3 blocks of IPv4 address space for private use:

```
 10   0 0 0  -   10 255 255 255   A
172  16 0 0  -  172  31 255 255   B
192 168 0 0  -  192 168 255 255   C
169 254 0 0  -  169 254 255 255   APIPA
```
