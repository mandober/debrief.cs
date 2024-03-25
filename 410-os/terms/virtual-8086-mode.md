# Virtual 8086 mode

https://en.wikipedia.org/wiki/Virtual_8086_mode

In the 80386 microprocessor and later, virtual 8086 mode (aka virtual real mode, V86-mode, VM86) allows the execution of real mode applications that are incapable of running directly in protected mode while the CPU is running a protected mode OS.

It is a hardware virtualization technique that allowed multiple 8086 processors to be emulated by the 386 chip. It emerged from the painful experiences with the 80286 protected mode, which by itself was not suitable to run concurrent real-mode applications well.

John Crawford developed the Virtual Mode bit at the register set, paving the way to this environment.

VM86 mode uses a *segmentation scheme* identical to that of real mode (for compatibility reasons), which creates 20-bit linear addresses in the same manner as 20-bit physical addresses are created in real mode, but are subject to protected mode's memory paging mechanism.
