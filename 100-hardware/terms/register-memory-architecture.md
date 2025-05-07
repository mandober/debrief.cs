# Register-memory architecture

A register-memory architecture is an ISA that allows operations to be performed on memory, as well as registers. If the architecture allows all operands to be in memory or in registers (or mixed), it is called a *register-plus-memory* architecture.

In a register-memory approach one of the operands for instruction like ADD may be in memory, while the other operand is in a register. This differs from a load-store architecture (used by RISC designs such as MIPS) in which both operands must be in registers.

An example of register-memory architecture is Intel x86. 
Examples of register-plus-memory architecture are:
- IBM System/360 and its successors, which support memory-to-memory fixed-point decimal arithmetic operations, but not binary integer or floating-point arithmetic operations
- PDP-11, which supports memory or register source and destination operands for most two-operand integer operations
- VAX, which supports memory or register source and destination operands for binary integer and floating-point arithmetic
- Motorola 68000 series, which supports integer arithmetic with a memory source or destination, but not with a memory source and destination. However, the 68000 can move data memory-to-memory with nearly all addressing modes.

[But the data from memory must be pulled into a register eventually anyway, no? Even if it skips a register, it must be pulled into the CPU, at which point it's all the same whether it was in a register before it is transfered to the ALU. In other words, this gimmic is more of a convenience that saves a few keystrokes in assembly, right?]
