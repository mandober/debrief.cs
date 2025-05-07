# Word size

Many things in a computer system are determined by the word size, including
- the size of general purpose registers
- the width of buses and channels
- the amount of memory accessed/manipulated in one go
- the size of the instruction set
- the size of the primitive machine-dependent integers
- the size of pointers
- the size of the (virtual) address space

Basically, a word size is the maximum amount of data the CPU may shovel around during a cycle.

Note: unqualified term "address space" means virtual address space (VAS) because even the CPU deals with and generates virtual addresses (VAs).

The 32-bit architecture, specifically `x86`, has started with a large discrepancy between the size of the address space and the maximim amount of memory that could be installed. It took years for technology to catch up and to enable installing more and more memory on a system. Eventually, it became common for a 32-bit computer to have the max possible amount of memory installed, i.e. the complete 4GiB.

The transition to 64 bit computing has also started with a huge discrepancy between the address space size and the installed amount of memory. Even now, in 2025, the average amount of installed memory is 16GiB, maybe 32GiB. This suggest that the maximum installable amount might be 64GiB, maybe 128GiB, or even 256 GiB. Even if there are high-end systems that can be endowed with more, it is still a far cry from the theoretical maximum, which is 16EiB (exbibytes) = 16,777,216TiB. In any caase, we are definitely still in the gigabyte range, but there are terabytes and petabytes to travrse before we hit the exabyte capacity.

Mapping the 64-bit virtual address space onto the orders of magnitude smaller physical address space has plenty of breathing room, so the actual address space uses only `48` bits out of the `64` available bits. On `x86_64`, bits `63-48` must be the same as bit `47`, otherwise an interrupt occurs (segfault). Addresses still take 64 bits, even if only 48 bits are effectively used. Pointer size is also 64 bits (8 bytes). 

2³² = 4 GiB = 4096 MiB = 4,194,304 KiB = 4,294,967,296 bytes
2⁴⁸ is 

2⁶⁴ = 16 EiB = 16,384 PiB = 16,777,216 TiB = 17,179,869,184 GiB
    = 17,592,186,044,416 MiB
    = 1.801440e+16 KiB
    = 1.844674e+19 bytes

2¹⁰  = kibi  KiB (kilo)
2²⁰  = mebi  MiB (mega)
2³⁰  = gibi  GiB (giga)
2⁴⁰  = pebi  PiB (peta)
2⁵⁰  = tebi  TiB (tera)
2⁶⁰  = exbi  EiB (exa)
2⁷⁰  = zebi  ZiB (zetta)
2⁸⁰  = yobi  YiB (yotta)
2⁹⁰  = rebi  RiB (ronna)
2¹⁰⁰ = quebi QiB (quetta)


Some addresses are kept for particular purposes, such as memory-mapped hardware devices. So, it is usual 32-bit machines map about 3.2 ~ 3.4 GB of memory.

Furthermore, we do not have computers with enough RAM to employ every address made available by 64-bit architectures. In this way, many of these addresses are unused nowadays.

Intel has recently extended this to 52 effective bits.
