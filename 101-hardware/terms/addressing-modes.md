# Addressing modes

https://en.wikipedia.org/wiki/Addressing_mode

* Addressing modes are an aspect of the instruction set architecture (ISA) in most central processing unit (CPU) designs.

* Addressing modes are about the interplay of restricted space available for an instruction (e.g. 64 bits), unless it is variable-length instructions are also at disposal but they also complicate ISA design, and various needs, such as the need to specify a type of storage (reference to a register, memory address, literal value), type of instruction (e.g. load, store). Refereing to a memory address has numerous possible approaches (absolute, relative, relative-conditional, etc.).

* The various addressing modes that are defined in a given instruction set architecture define how the machine language instructions in that architecture identify the operands of each instruction. An addressing mode specifies how to calculate the effective memory address of an operand by using information held in registers or constants contained within a machine instruction or elsewhere.

* In computer programming, addressing modes are primarily of interest to those who write in assembly languages and to compiler writers.

* Orthogonal instruction set deals with the ability of any instruction to use any addressing mode.

* There is no generally accepted way of naming the various addressing modes. Also, the term "addressing mode" is itself subject to different interpretations: either "memory address calculation mode" or "operand accessing mode". Under the first interpretation, instructions that do not read from memory or write to memory (such as "add literal to register") are considered not to have an "addressing mode". The second interpretation allows for machines such as VAX, which use operand mode bits, to allow for a register or literal operand. Only the first interpretation applies to instructions such as "load effective address".

* Different computer architectures vary greatly as to the number of addressing modes they provide in hardware. It has been proven that pipelined CPUs are much easier to design if the only addressing modes are simple ones. Most RISC architectures have only about five simple addressing modes. When there are only a few addressing modes, the particular addressing mode required is usually encoded within the instruction code (e.g. IBM System/360 and successors, most RISC). But when there are many addressing modes, a specific field is often set aside in the instruction to specify the addressing mode.

* Some instruction set architectures, such as Intel x86 and IBM/360 and its successors, have a *load effective address* instruction. This performs a calculation of the effective operand address, but instead of acting on that memory location, it loads the address that would have been accessed into a register. This can be useful when passing the address of an array element to a subroutine. It may also be a slightly sneaky way of doing more calculations than normal in one instruction; for example, using such an instruction with the addressing mode "base+index+offset" allows one to add two registers and a constant together in one instruction.

* Most computer architectures maintain the division into *code addressing modes* and *data addressing modes*.



Addressing modes
* Simple addressing modes for code
  - Absolute or direct
  - PC-relative
  - Register indirect
* Sequential addressing modes
  - Sequential execution
  - CPUs that do not use sequential execution
  - Conditional execution
  - Skip
* Simple addressing modes for data
  - Register (or Register Direct)
  - Base plus offset, and variations
  - Immediate/literal
  - Implicit
* Other addressing modes for code or data
  - Absolute/direct
  - Indexed absolute
  - Base plus index
  - Base plus index plus offset
  - Scaled
  - Register indirect
  - Register autoincrement indirect
  - Register autodecrement indirect
  - Memory indirect
  - PC-relative


Terminology
- *Indirect*: data referred to through a pointer or address.
- *Immediate*: data embedded directly in an instruction or command list.
- *Index*: dynamic offset, typically held in an index register, possibly scaled by an object size.
- *Offset*: an immediate value added to an address (e.g. C struct field access)
- *Relative*: an address formed relative to another address.
- *Post increment*: the stepping of an address past data used (e.g. `*p++` in C used for stack pop operations).
- *Pre decrement*: the decrementing of an address prior to use (e.g. `*--p` in C used for stack push operations).
