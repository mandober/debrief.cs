# Load-store architecture

https://en.wikipedia.org/wiki/Load-store_architecture

A load-store architecture (or a register-register architecture) is an ISA that divides instructions into 2 two categories:
- memory access (load and store between memory and registers)
- ALU operations (which only occur between registers)

Architectures
- register-register architecture (load-store)
- register-memory architecture

Some RISC architectures such as PowerPC, SPARC, RISC-V, ARM, and MIPS are load-store architectures.

For instance, in a load-store approach both operands and destination for an ADD operation must be in registers. This differs from a register-memory architecture (for example, a CISC instruction set architecture such as x86) in which one of the operands for the ADD operation may be in memory, while the other is in a register.

The earliest example of a load-store architecture was the CDC 6600. Almost all vector processors (including many GPUs) use the load-store approach.

## See also
- Load-store unit
- Register-memory architecture
