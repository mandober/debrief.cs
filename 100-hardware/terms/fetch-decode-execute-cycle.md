# The fetch-decode-execute cycle

https://en.wikipedia.org/wiki/Instruction_cycle

*The instruction cycle* (also known as the *fetch–decode–execute cycle*, or simply the fetch-execute cycle) is the cycle that the CPU follows from boot-up until the computer has shut down in order to process instructions. It is composed of 3 main stages: fetch, decode, and execute stage.

In simpler CPUs, the instruction cycle is executed sequentially, each instruction being processed before the next one is started.

In most modern CPUs, the instruction cycles are instead executed concurrently, and often in parallel, through an *instruction pipeline*: the next instruction starts being processed before the previous instruction has finished, which is possible because the cycle is broken up into separate steps.


## The fetch-decode-execute cycle

The fetch-decode-execute cycle is a key feature of the von Neumann architecture and consists of 7 stages:
1. The memory address held in the program counter (PC) is copied into the memory address register (MAR).
2. The address in the program counter is incremented (increased) by one. The program counter now holds the address of the next instruction to be fetched.
3. The processor sends a signal along the address bus to the memory address held in the MAR.
4. The instruction or data held in that memory address is sent along the data bus to the memory data register (MDR).
5. The instruction or data held in the MDR is copied into the current instruction register (CIR).
6. The instruction or data held in the CIR is decoded and then executed. Results of processing are stored in the accumulator (ACC).
7. The cycle returns to step one.
