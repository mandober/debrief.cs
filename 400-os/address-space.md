# Address Space

The OS creates an easy to use abstraction of physical memory called the address space, and it is the running program's view of memory in the system.

The address space of a process contains all of the memory state of the running program. For example, the code of the program have to live in memory somewhere, and thus they are in the address space. The program, while it is running, uses a stack to keep track of where it is in the function call chain as well as to allocate local variables and pass parameters and return values to and from routines. The heap is used for dynamically-allocated, user-managed memory. As well as the other things like statically-initialized variables.

>The central issue: how to virtualize memory?
How can the OS build this abstraction of a private, potentially large address space for multiple running processes (all sharing memory) on top of a single, physical memory?

One major goal of a virtual memory (VM) system is *transparency*. The OS should implement virtual memory in a way that is invisible to the running program. Another goal of VM is *efficiency*. The OS should strive to make the virtualization as efficient as possible, both in terms of time and space. In implementing time-efficient virtualization, the OS will have to rely on hardware support, including hardware features such as MMU and TLB. A third VM goal is *protection*. The OS should make sure to protect processes from one another as well as the OS itself from processes.

*The principle of isolation*: Isolation is a key principle in building reliable systems. OSs strive to isolate processes from each other and in this way prevent one from harming the other. By using memory isolation, the OS further ensures that running programs cannot affect the operation of the underlying OS. Some modern OS's take isolation even further, by walling off pieces of the OS from other pieces of the OS. Such microkernels provide greater reliability than typical monolithic kernel designs.

A process may not affect anything outside its address space. Protection enables isolation among processes: each process runs in its own isolated address space.

**Virtual memory** is a major OS subsystem. The VM subsystem is responsible for providing the illusion of a large, sparse, private address space to programs, which hold all of their instructions and data therein. Every address we deal with and every address send to the CPU is a *virtual address*. The OS, with hardware support, takes a virtual memory address and translates it into a physical address. The OS does this for many processes at once, making sure to protect programs from one another, as well as to protect itself from programs.
