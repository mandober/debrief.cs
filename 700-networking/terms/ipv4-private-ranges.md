# IPv4 private ranges

The Internet Assigned Numbers Authority (IANA) has reserved *3 blocks of IPv4 address space* for private use:

010 000 0 0  -   10 255 255 255   A
172 016 0 0  -  172  31 255 255   B
192 168 0 0  -  192 168 255 255   C

100  64 0 0                       /10 CGNAT
127   0 0 0  -  127 255 255 255   Loopback
169 254 0 0  -  169 254 255 255   [APIPA]


IPv4 quad: x.y.z.w  = {0..255} = 4x1 B = 4x8 b = 32 bits

   192    .    168    .    101    .    105    (dec)
   c 0    .    a 8    .    6 5    .    6 9    (hex)
1100 0000 . 1010 1000 . 0110 0101 . 0110 1001 (bin)

   169    .    254    .    255    .    255
   a 9    .    f e    .    f f    .    f f
1010 1001 . 1111 1110 . 1111 1111 . 1111 1111
