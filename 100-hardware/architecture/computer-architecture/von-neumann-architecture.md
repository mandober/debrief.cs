# Von Neumann architecture

https://en.wikipedia.org/wiki/Von_Neumann_architecture

The von Neumann architecture (also known as the Princeton architecture) is a computer architecture based on a 1945 description by Hungarian-American mathematician and physicist John von Neumann and others in the "First Draft of a Report on the EDVAC".

The term "von Neumann architecture" has evolved to mean any *stored-program computer* in which an instruction fetch and a data operation cannot occur at the same time because they share a common bus. This is referred to as the *von Neumann bottleneck* and often limits the performance of the system.

Von Neumann architecture is the design upon which modern general purpose computers are (still) based. The key elements of von Neumann architecture are:
- data and instructions are both stored as binary digits
- data and instructions are both stored in primary storage
- instructions are fetched from memory one at a time and in order (serially)
- the processor decodes and executes an instruction, before cycling around to fetch the next instruction
- the cycle continues until no more instructions are available

A processor based on von Neumann architecture has 5 special registers which it uses for processing:
- *program counter* (PC) holds the memory address of the next instruction to be fetched from primary storage
- *memory address register* (MAR) holds the address of the current instruction that is to be fetched from memory, or the address in memory to which data is to be transferred
- *memory data register* (MDR) holds the contents found at the address held in the MAR, or data which is to be transferred to primary storage
- *current instruction register* (CIR) holds the instruction that is currently being decoded and executed
- *accumulator* (ACC) is a special purpose register and is used by the arithmetic logic unit (ALU) to hold the data being processed and the results of calculations

Modern functional programming and object-oriented programming are much less geared towards "pushing vast numbers of words back and forth" than earlier languages like FORTRAN were, but internally, that is still what computers spend much of their time doing, even highly parallel supercomputers.

As of 1996, a database benchmark study found that **3 out of 4 CPU cycles were spent waiting for memory**. Researchers expect that increasing the number of simultaneous instruction streams with multithreading or single-chip multiprocessing will make this bottleneck even worse. In the context of multi-core processors, additional overhead is required to maintain cache coherence between processors and threads.
