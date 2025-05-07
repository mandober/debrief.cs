# Zero register

https://en.wikipedia.org/wiki/Zero_register

A zero register is a processor register that always returns the value 0 and has no effect when it is written to. It is found in ISAa including the CDC 6600, System/360, ARM64.

Because 0 appears as a constant in many instructions, notably "branch if zero", optimizing these instructions can have a positive benefit on performance.

Some architectures accomplish this with dedicated opcodes - specialized variations of basic instructions, but implementing them requires additional logic in the instruction decoder. The zero register amounts to the same without requiring new opcodes at the cost of a dedicated register, which may be too steep a price for architectures with limited number of registers.

The x86 architecture has no zero register, ARM added a zero register for ARM64. The RISC-V architecture includes one with the register name "x0" and the ABI name "zero"; the reason for this inclusion is stated as "Dedicating a register to 0 is surprisingly a large factor in simplifying the RISC-V ISA".
