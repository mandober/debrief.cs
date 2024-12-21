# Register types

https://en.wikipedia.org/wiki/Processor_register

1. User-accessible registers
  - 1.1 Control registers
  - 1.2 Data registers
  - 1.3 Address registers
    - 1.3.1 Address or numeric value registers
    - 1.3.2 Stack pointer
  - 1.4 General-purpose registers (GPRs)
  - 1.5 Status registers
  - 1.6 Floating-point registers (FPRs)
  - 1.7 Constant registers
  - 1.8 Vector registers
  - 1.9 Special-purpose registers (SPRs)
  - 1.10 Model-specific registers
  - 1.11 Memory type range registers (MTRRs)
2. Internal registers
  - 2.1 Instruction register
  - 2.2 Memory-related registers
    - 2.2.1 Memory buffer register
    - 2.2.2 Memory address register
3. Architectural registers


TOC

<!-- TOC -->

- [1. User-accessible registers](#1-user-accessible-registers)
  - [1.1. Control registers](#11-control-registers)
  - [1.2. Data registers](#12-data-registers)
  - [1.3 Address registers](#13-address-registers)
    - [1.3.1 Address or numeric value registers](#131-address-or-numeric-value-registers)
    - [1.3.2 Stack pointer](#132-stack-pointer)
  - [1.4 General-purpose registers](#14-general-purpose-registers)
  - [1.5 Status registers](#15-status-registers)
  - [1.6 Floating-point registers](#16-floating-point-registers)
  - [1.7 Constant registers](#17-constant-registers)
  - [1.8 Vector registers](#18-vector-registers)
  - [1.9 Special-purpose registers](#19-special-purpose-registers)
  - [1.10 Model-specific registers](#110-model-specific-registers)
  - [1.11 Memory type range registers (MTRRs)](#111-memory-type-range-registers-mtrrs)
- [2. Internal registers](#2-internal-registers)
  - [2.1 Instruction register](#21-instruction-register)
  - [2.2 Memory-related registers](#22-memory-related-registers)
    - [2.2.1 Memory buffer register](#221-memory-buffer-register)
    - [2.2.2 Memory address register](#222-memory-address-register)
- [3. Architectural registers](#3-architectural-registers)
- [Examples](#examples)
  - [16-bit x86](#16-bit-x86)
  - [IA-32](#ia-32)
  - [x86-64](#x86-64)
  - [ARM 64-bit (A64)](#arm-64-bit-a64)
  - [ARM 32-bit (Thumb)](#arm-32-bit-thumb)
  - [ARM 32-bit (ARM/A32, Thumb-2/T32)](#arm-32-bit-arma32-thumb-2t32)
  - [RISC-V](#risc-v)
  - [MIPS](#mips)
  - [CUDA](#cuda)
- [Usage](#usage)
- [See also](#see-also)

<!-- /TOC -->

A processor often contains several kinds of registers, which can be classified according to the types of values they can store or the instructions that operate on them:

## 1. User-accessible registers

User-accessible registers can be read or written by machine instructions. The most common division of *user-accessible registers* is a division into data registers and address registers.

### 1.1. Control registers
A control register is a processor register that changes or controls the general behavior of a CPU or other digital device. Common tasks performed by control registers include interrupt control, switching the addressing mode, paging control, and coprocessor control.

### 1.2. Data registers
Data registers can hold numeric data values such as integers and, in some architectures, floating-point numbers, as well as characters, small bit rate arrays and other data. In some older architectures, a special data register known as the *accumulator* is used implicitly for many operations.

### 1.3 Address registers
Address registers hold addresses and are used by instructions that indirectly access primary memory.

#### 1.3.1 Address or numeric value registers
Some processors contain registers that may only be used to hold an address or only to hold numeric values (in some cases used as an *index register* whose value is added as an offset from some address); others allow registers to hold either kind of quantity. A wide variety of possible addressing modes, used to specify the effective address of an operand, exist.

#### 1.3.2 Stack pointer
The stack pointer is used to manage the run-time stack. Rarely, other data stacks are addressed by dedicated address registers.

### 1.4 General-purpose registers
General-purpose registers (GPRs) can store both data and addresses, i.e., they are combined data/address registers; in some architectures, the register file is unified so that the GPRs can store floating-point numbers as well.

### 1.5 Status registers
Status registers hold truth values often used to determine whether some instruction should or should not be executed.

### 1.6 Floating-point registers
Floating-point registers (FPRs) store floating-point numbers in many architectures.

### 1.7 Constant registers
Constant registers hold read-only values such as zero, one, or pi.

### 1.8 Vector registers
Vector registers hold data for vector processing done by SIMD instructions (Single Instruction, Multiple Data).

### 1.9 Special-purpose registers
Special-purpose registers (SPRs, or Special Function Registers) hold some elements of the program state; they usually include the *program counter*, aka *instruction pointer*, and the *status register*; the program counter and status register might be combined in a *program status word (PSW) register*. The aforementioned stack pointer is sometimes also included in this group. Embedded microprocessors can also have registers corresponding to specialized hardware elements.

### 1.10 Model-specific registers
Model-specific registers (also called machine-specific registers) store data and settings related to the processor itself. Because their meanings are attached to the design of a specific processor, they are not expected to remain standard between processor generations.

### 1.11 Memory type range registers (MTRRs)
Memory type range registers (MTRRs) are a set of processor supplementary *capability control registers* that provide system software with control of how accesses to memory ranges by the CPU are cached. It uses a set of programmable *model-specific registers (MSRs)* which are special registers provided by most modern CPUs. Possible access modes to memory ranges can be uncached, write-through, write-combining, write-protect, and write-back.

## 2. Internal registers
Internal registers are not accessible by instructions and are used internally for processor operations.

### 2.1 Instruction register
The instruction register holds the instruction currently being executed.

Registers related to fetching information from RAM, a collection of *storage registers* located on separate chips from the CPU:

### 2.2 Memory-related registers

#### 2.2.1 Memory buffer register
A *memory buffer register (MBR)* or *memory data register (MDR)* is the register in a computer's CPU that stores the data being transferred to and from the immediate access storage. It contains a copy of the value in the memory location specified by the memory address register. It acts as a buffer, allowing the processor and memory units to act independently without being affected by minor differences in operation.

#### 2.2.2 Memory address register
The memory address register (MAR) is the CPU register that either stores the memory address from which data will be fetched to the CPU registers, or the address to which data will be sent and stored via system bus.

## 3. Architectural registers
Architectural registers are the registers visible to software and are defined by an architecture. They may not correspond to the physical hardware if register renaming is being performed by the underlying hardware.


*Hardware registers* are similar, but occur outside CPUs.

In some architectures (such as SPARC and MIPS), the first or last register in the *integer register file* is a *pseudo-register* in that it is hardwired to always return zero when read (mostly to simplify indexing modes), and it cannot be overwritten.

In Alpha, this is also done for the floating-point register file. As a result of this, register files are commonly quoted as having one register more than how many of them are actually usable; for example, 32 registers are quoted when only 31 of them fit within the above definition of a register.

## Examples

The following table shows the number of registers in several mainstream CPU architectures. Note that in x86-compatible processors, the stack pointer (ESP) is counted as an integer register, even though there are a limited number of instructions that may be used to operate on its contents. Similar caveats apply to most architectures.

Although all of the below-listed architectures are different, almost all are in a basic arrangement known as the von Neumann architecture, first proposed by the Hungarian-American mathematician John von Neumann. It is also noteworthy that the number of registers on GPUs is much higher than that on CPUs.


arch       | gen | fp  | notes
-----------|-----|-----|---------------------------------------------------
x86 16-bit |   8 |   8 | stack of 8 (if FP present)
x86 IA-32  |   8 |   8 | stack of 8 (if FP present), 8 (if SSE/MMX present)
ARM Thumb  |   8 |  16 | ARM 32-bit (Thumb)
ARM Thumb2 |  14 |  32 | up to 32 FP; ARM 32-bit (ARM/A32, Thumb-2/T32)
x86-64     |  16 |  16 | 16 or 32 FP registers (if AVX-512 available)
ARM A64    |  31 |  32 | ARM 64-bit (A64)
RISC-V     |  31 |  32 | RV32E variant has 15 int registers
MIPS       |  31 |  32 | int register 0 is hardwired to 0
CUDA       | 255 | 255 | configurable, up to 255 per thread; 32-bit wide reg



### 16-bit x86

- general purpose: 8
- FP registers: stack of 8 (if FP present)

The 8086/8088, 80186/80188, and 80286 processors, if provided an 8087, 80187 or 80287 co-processor for floating-point operations, support an 80-bit wide, 8 deep register stack with some instructions able to use registers relative to the top of the stack as operands; without a co-processor, no floating-point registers are supported.

### IA-32

- general purpose: 8
- FP registers: stack of 8 (if FP present), 8 (if SSE/MMX present)

The 80386 processor requires an 80387 for floating-point operations, later processors had built-in floating-point, with both having an 80-bit wide, 8 deep register stack with some instructions able to use registers relative to the top of the stack as operands.

The Pentium III and later had the SSE with additional 128-bit XMM registers.

### x86-64

- general purpose: 16
- FP registers: 16 or 32 (if AVX-512 available)

FP registers are 
128-bit XMM registers, later extended to 
256-bit YMM registers with AVX/AVX2 and 
512-bit ZMM0-ZMM31 registers with AVX-512.

### ARM 64-bit (A64)
- general purpose: 31
- FP registers: 32

Register r31 is the stack pointer or hardwired to 0, depending on the context.

### ARM 32-bit (Thumb)

- general purpose: 8
- FP registers: 16

Version 1 of Thumb, which only supported access to registers r0 - r7.

### ARM 32-bit (ARM/A32, Thumb-2/T32)

- general purpose: 14
- FP registers: up to 32
- r15 is the program counter, and not usable as a general purpose register
- r13 is the stack pointer
- r8 - r13 can be switched out for others (banked) on a processor mode switch
- Older versions had 26-bit addressing, and used upper bits of the program counter (r15) for status flags, making that register 32-bit.

### RISC-V

- general purpose: 31
- FP registers: 32

Integer register 0 is hardwired to 0. The RV32E variant, intended for systems with very limited resources, has 15 integer registers.

### MIPS

- general purpose: 31
- FP registers: 32

Integer register 0 is hardwired to 0.

### CUDA

- configurable, up to 255 per thread
- earlier generations allowed up to 127/63 registers per thread (Tesla/Fermi)
- additional, up to 8 predicate registers per thread.
- the more registers configured per thread, the fewer threads run at same time
- Registers are 32 bits wide
- double floats and (64-bit) pointers therefore require two registers

## Usage

The number of registers available on a processor and the operations that can be performed using those registers has a significant impact on the efficiency of code generated by optimizing compilers. 

The *Strahler number* of an expression tree gives the minimum number of registers required to evaluate that expression tree.

## See also

https://en.wikipedia.org/wiki/CPU_cache
https://en.wikipedia.org/wiki/Quantum_register
https://en.wikipedia.org/wiki/Register_allocation
https://en.wikipedia.org/wiki/Register_file
https://en.wikipedia.org/wiki/Shift_register
https://en.wikipedia.org/wiki/Stack_register
https://en.wikipedia.org/wiki/Call_stack
https://en.wikipedia.org/wiki/Stack_(abstract_data_type)
https://en.wikipedia.org/wiki/Stack_machine
https://en.wikipedia.org/wiki/Return_statement
https://en.wikipedia.org/wiki/X86_assembly

https://en.wikipedia.org/wiki/X86
https://en.wikipedia.org/wiki/IA-32
https://en.wikipedia.org/wiki/32-bit_computing
https://en.wikipedia.org/wiki/64-bit_computing
