# Memory management

https://en.wikipedia.org/wiki/Memory_management_(operating_systems)

In operating systems, memory management is the function responsible for managing the computer's primary memory.

The memory management function keeps track of the status of each memory location, either allocated or free. It determines how memory is allocated among competing processes, deciding which gets memory, when they receive it, and how much they are allowed. When memory is allocated it determines which memory locations will be assigned. It tracks when memory is freed or unallocated and updates the status.

This is distinct from *application memory management*, which is how a process manages the memory assigned to it by the operating system.

## Contents

- 1. Memory management techniques
  - 1.1. Single contiguous allocation
  - 1.2. Partitioned allocation
  - 1.3. Paged memory management
  - 1.4. Segmented memory management
- 2. Rollout/rollin


## Memory management techniques

### Single contiguous allocation

Single allocation is the simplest memory management technique. All the computer's memory, usually with the exception of a small portion reserved for the OS, is available to a single application. MS-DOS is an example of a system that allocates memory in this way. An embedded system running a single application might also use this technique.

A system using single contiguous allocation may still multitask by swapping the contents of memory to switch among users.

### Partitioned allocation

Partitioned allocation divides primary memory into multiple memory partitions, usually contiguous areas of memory. Each partition might contain all the information for a specific job or task. Memory management consists of allocating a partition to a job when it starts and unallocating it when the job ends.

Partitioned allocation usually requires some hardware support to prevent the jobs from interfering with one another or with the operating system. The IBM System/360 uses a *lock-and-key technique*. The UNIVAC 1108, PDP-6 and PDP-10, and GE-600 series use *base and bounds registers* to indicate the ranges of accessible memory.

Partitions may be either **static**, that is defined at *Initial Program Load* (IPL) or boot time, or by the computer operator, or **dynamic**, i.e. created automatically for a specific job. IBM System/360 OS *Multiprogramming with a Fixed Number of Tasks* (MFT) is an example of static partitioning, and *Multiprogramming with a Variable Number of Tasks* (MVT) is an example of dynamic. MVT and successors use the term *region* to distinguish dynamic partitions from static ones in other systems.

Partitions may be relocatable with base registers, as in the UNIVAC 1108, PDP-6 and PDP-10, and GE-600 series. *Relocatable partitions* are able to be compacted to provide larger chunks of contiguous physical memory. *Compaction* moves "in-use" areas of memory to eliminate "holes" or unused areas of memory caused by process termination in order to create larger contiguous free areas.

Some systems allow partitions to be swapped out to secondary storage to free additional memory. Early versions of IBM's Time Sharing Option (TSO) swapped users in and out of time-sharing partitions.

### Paged memory management

Main article: [Virtual memory](https://en.wikipedia.org/wiki/Virtual_memory)

Paged allocation divides the computer's primary memory into fixed-size units called *page frames*, and the program's virtual address space into *pages* of the same size. The hardware *memory management unit* (MMU) maps pages to frames. The physical memory can be allocated on a page basis while the address space appears contiguous.

Usually, with paged memory management, each job thinks it runs in its own address space. However, there are some single address space operating systems that run all processes within a *single address space*, such as IBM i, which runs all processes within a large address space, and IBM OS/VS1 and OS/VS2 (SVS), which ran all jobs in a single 16MiB *virtual address space*.

Paged memory can be demand-paged when the system can move pages as required between primary and secondary memory.

### Segmented memory management

Main article: [Memory segmentation](https://en.wikipedia.org/wiki/Memory_segmentation)

Segmented memory is the only memory management technique that does not provide programs with a linear and contiguous address space.

*Segments* are areas of memory that usually correspond to a logical grouping of information such as a code procedure or a data array. Segments require hardware support in the form of a *segment table* which usually contains the physical address of the segment in memory, its size, and other data such as *access protection bits* and status (swapped in, swapped out, etc.)

Segmentation allows better access protection than other schemes because memory references are relative to a specific segment and the hardware will not permit the application to reference memory not defined for that segment.

It is possible to implement segmentation with or without paging.

In *segmentation without paging*, the segment is the physical unit swapped in and out of memory as required.

In *segmentation with paging*, pages are usually the unit of swapping, and segmentation only adds an additional level of security.

Addresses in a segmented system usually consist of the *segment id* and an *offset* relative to the *segment base address*, defined to be offset zero.

The Intel IA-32 (x86) architecture allows a process to have up to 16,383 segments of up to 4GiB each. IA-32 segments are subdivisions of the computer's linear address space, which is the virtual address space provided by the paging hardware.

The Multics OS is probably the best known system implementing segmented memory. Multics segments are subdivisions of the computer's physical memory of up to 256 pages, each page being 1K 36-bit words in size, resulting in a maximum segment size of 1MiB (with 9-bit bytes, as used in Multics). A process could have up to 4046 segments.

## Rollout/rollin

Rollout/rollin (RO/RI) is an operating system memory management technique where the entire non-shared code and data of a running program is swapped out to auxiliary memory (disk) to free main storage for another task.

Programs may be rolled out by demand or when waiting on some event. Rollout/rollin was commonly used in time-sharing systems, where the user's "think time" was relatively long compared to the time to do the swap.

Unlike virtual storage-paging or segmentation, rollout/rollin does not require any special memory management hardware; however, unless the system has relocation hardware such as a memory map or base and bounds registers, the program must be rolled back in to its original memory locations. 

Rollout/rollin has been largely superseded by virtual memory.
