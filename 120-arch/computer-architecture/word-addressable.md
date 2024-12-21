# Word addressing

https://en.wikipedia.org/wiki/Word_addressing

In computer architecture, *word addressing* means that memory addresses uniquely identify words of memory. This is contrast with *byte addressing*, where addresses uniquely identify bytes.

Memory addressing unit can be different then the architecture's natural unit (word). 




## Basics

Consider a computer which holds 2¹⁹ = 524,288 bits (64 KB) of memory.

```
2¹⁹ / 8 = 2¹⁹ / 2³ = 2¹⁶
524,288 bits = 65,536 Bytes
   512 Kbits = 64 KB
```

In a hypothetical *bit-addressable* computer, there would have to be 524,288 memory address lines - too much wiring! Each memory address would store 1 bit, so a single memory access would only retrieve 1 bit of data.

If that memory is arranged in a byte-addressable flat address space, then there are 2¹⁶ = 65,536 valid addresses, from 0 to 65,535, each denoting an independent 8 bits of memory (1 byte memory chunks).

That is, the amount of bits of memory divided by 8 (since a word is 8 bits in this architecture) would give us the number of memory addresses available.

For example, getting the memory address 0x00 would retrieve the 8 bites there. In fact, every memory access would retrieve 8 bits since the computer supports byte addressing.

```
word and byte-addressing scheme are the same:
0x02 ◼◻◻◻◼◻◻◻
0x01 ◼◻◻◻◼◻◻◻
0x00 ◼◻◻◻◼◻◻◻
```

## Word-adressable

If instead it is arranged in a word-addressable flat address space, where a word is 16 bits, then there are 2¹⁵ = 32,768 valid addresses, from 0 to 32,767, each denoting an independent 16 bits (2 bytes memory chunks).

That is, we'd half the amount of memory addresses compared to the previous architecture (8-bit) since now each memory access gets us 16 bits at once.

```
word addressing scheme:
0x02 ◼◻◻◻◻◻◻◻ ◼◻◻◻◻◻◻◻
0x01 ◼◻◻◻◻◻◻◻ ◼◻◻◻◻◻◻◻
0x00 ◼◻◻◻◻◻◻◻ ◼◻◻◻◻◻◻◻

byte addressing scheme:
0x04 ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
0x02 ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
0x00 ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
```

## DWord-adressable

If instead it is arranged in a word-addressable flat address space using 32-bit words, then there are 2¹⁴ = 16,384 valid addresses, from 0 to 16,383, each denoting an independent 32 bits (4 bytes memory chunks).

That is, we'd again half the amount of memory addresses compared to the previous (16-bit) architecture since each memory access gets us 32 bits at once.

```
word addressing scheme:
0x02 ◼◻◻◻◻◻◻◻ ◼◻◻◻◻◻◻◻ ◼◻◻◻◻◻◻◻ ◼◻◻◻◻◻◻◻
0x01 ◼◻◻◻◻◻◻◻ ◼◻◻◻◻◻◻◻ ◼◻◻◻◻◻◻◻ ◼◻◻◻◻◻◻◻
0x00 ◼◻◻◻◻◻◻◻ ◼◻◻◻◻◻◻◻ ◼◻◻◻◻◻◻◻ ◼◻◻◻◻◻◻◻


byte addressing scheme:

0x1c ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
     b₃₂ 0x20    b₃₃ 0x21   b₃₄ 0x22    b₃₅ 0x23
0x1c ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
     b₂₈ 0x1c    b₂₉ 0x1d   b₃₀ 0x1e    b₃₁ 0x1f
0x18 ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
     b₂₄ 0x18    b₂₅ 0x19   b₂₆ 0x1a    b₂₇ 0x1b
0x14 ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
     b₂₀ 0x14    b₂₁ 0x15   b₂₂ 0x16    b₂₃ 0x17
0x10 ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
     b₁₆ 0x10    b₁₇ 0x11   b₁₈ 0x12    b₁₉ 0x13
0x0c ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
     b₁₂ 0xc     b₁₃ 0xd    b₁₄ 0xe     b₁₅ 0xf
0x08 ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
     byte 8      byte 9     b₁₀ 0xa     b₁₁ 0xb
0x04 ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
     byte 4      byte 5     byte 6      byte 7
0x00 ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
     byte 0      byte 1     byte 2      byte 3
```

Memory addresses (expressed in hex as they usually are) progress by 4 bytes:   0x00, 0x04, 0x08, 0x0c, 
0x10, 0x14, 0x18, 0x1c, 
0x20, 0x24, 0x28, 0x2c, …
i.e. they always end in either `0`, `4`, `8` or `c`.


## QWord-adressable

If instead it is arranged in a word-addressable flat address space using 64-bit words, then there are 2¹³ = 8,192 valid addresses, from 0 to 8,191, each denoting an independent 64 bits (8 bytes memory chunks).

That is, we'd again half the amount of memory addresses compared to the previous (32-bit) architecture since each memory access gets us 64 bits at once.

```
     ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
0x0c ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻

     ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
0x08 ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻

     ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
0x00 ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻ ◼◻◻◻◼◻◻◻
```

The schema denoted as byte addressable is used in modern computers. Also because modern computers are mostly based on 64-bit architectures, word size is 64 bits meaning that the amount of bits of available memory is divided by 8 to get the number of memory address lines. Also because memory addresses (expressed in hex as they usually are) progress by 8 bytes:

0x00, 0x08, 0x10, 0x18, 
0x20, 0x28, 0x30, 0x38, 
0x40, 0x48, 0x50, 0x58, …

i.e. they always end in either `0` or `8`.



## In general

More generally, the **minimum addressable unit** (MAU) is a property of a specific memory abstraction. Different abstractions within a computer may use different MAUs, even when they are representing the same underlying memory.

For example, a computer might use 32-bit addresses with byte addressing in its instruction set, but the CPU's cache coherence system might work with memory only at a granularity of 64-byte cache lines, allowing any particular cache line to be identified with only a 26-bit address and decreasing the overhead of the cache.

The address translation done by virtual memory often affects the structure and width of the address space, but it does not change the MAU.
