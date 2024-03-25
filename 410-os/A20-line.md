# A20 line

https://en.wikipedia.org/wiki/A20_line

The A20, or *address line 20*, is one of the electrical lines that make up the system bus of an x86-based computer system. The A20 line in particular is used to transmit the 21st bit on the *address bus*.

A microprocessor typically has a number of address lines equal to the base-two logarithm of the number of words in its physical address space.

For example, a processor with 4 GB of byte-addressable physical space requires 32 lines (log₂ 4 GB = log₂ 2³² bits = 32), which are named `A0` through `A31`.

The number 4 (in 4 GB above) should be in gigabits since 2³² = 4,294,967,296 bits, which is 1024 (K) × 1024 (M) × 1024 (G) × 4 = 4 Gb i.e. 0.5 GB.

```
2³² = 4,294,967,296 b
    = 4,194,304 Kb
    = 4096 Mb
    = 4 Gb
    = 536,870,912 B          2³² / 2³ = 2²⁹
    = 524,288 KB
    = 512 MB
    = 0.5 GB
```

The lines are named after the zero-based number of the bit in the address that they are transmitting. The *least significant bit is first* and is therefore numbered bit 0 and signaled on line A0. A20 transmits bit 20 (the 21st bit) and becomes active once addresses reach 2²⁰ bits (1024 Kb = 128 KB = 1 Mbit).

```
  2²⁰ bits       = 2¹⁷ B
= 1,048,576 bits = 131,072 B
= 1024 Kbits     = 128 KB
= 1 Mbits        = 0.125 MB

2²⁰ / 8 = 2²⁰ / 2³ = 2¹⁷

2³² = 4,294,967,296 b
    = 4,194,304 Kb
    = 4096 Mb
    = 4 Gb
    = 536,870,912 B          2³² / 2³ = 2²⁹
    = 524,288 KB
    = 512 MB
    = 0.5 GB
```
