# Linux Address Space

Linux virtual address space consists of
- user space, where .text, .data, .stack, .heap, etc. reside
- kernel space, where kernel code, stacks, heap, etc. reside

On a *context switch*, the user portion of the currently-running process and its address space changes. Kernel portion remains the same across processes.

A program running in user mode cannot access kernel virtual pages; only by trapping into the kernel and transitioning to privileged mode can such memory be accessed.

In 32-bit Linux (Linux with a 32-bit virtual address space), the split between user and kernel portions of the address space takes place at address 0xC0000000, or three-quarters of the way through the address space. Thus, virtual addresses 0 through 0xBFFFFFFF are user virtual addresses; the remaining virtual addresses (0xC0000000 through 0xFFFFFFFF) are in the kernel's virtual address space. 64-bit Linux has a similar split but at slightly different points. 

One slightly interesting aspect of Linux is that it contains two types of kernel virtual addresses. The first are known as *kernel logical addresses*. This is what you would consider the normal virtual address space of the kernel; to get more memory of this type, kernel code merely needs to call `kmalloc`. Most kernel data structures live here, such as page tables, per-process kernel stacks, and so forth. Unlike most other memory in the system, kernel logical memory cannot be swapped to disk. The most interesting aspect of kernel logical addresses is their connection to physical memory. Specifically, there is a direct mapping between kernel logical addresses and the first portion of physical memory. Thus, kernel logical address 0xC0000000 translates to physical address 0x00000000, 0xC0000FFF to 0x00000FFF, and so forth. This direct mapping has two implications. The first is that it is simple to translate back and forth between kernel logical addresses and physical addresses; as a result, these addresses are often treated as if they are indeed physical. The second is that if a chunk of memory is contiguous in kernel logical address space, it is also contiguous in physical memory. This makes memory allocated in this part of the kernel's address space suitable for operations which need contiguous physical memory to work correctly, such as I/O transfers to and from devices via directory memory access (DMA).

The other type of kernel address is a *kernel virtual address*. To get memory of this type, kernel code calls a different allocator, `vmalloc`, which returns a pointer to a virtually contiguous region of the desired size. Unlike kernel logical memory, kernel virtual memory is usually not contiguous; each kernel virtual page may map to non-contiguous physical pages (and is thus not suitable for DMA). However, such memory is easier to allocate as a result, and thus used for large buffers where finding a contiguous large chunk of physical memory would be challenging.

In 32-bit Linux, another reason for the existence of kernel virtual addresses is that they enable the kernel to address more than (roughly) 1GB of memory. Years ago, machines had much less memory than this, and enabling access to more than 1GB was not an issue. However, technology progressed, and soon there was a need to enable the kernel to use larger amounts of memory. Kernel virtual addresses, and their disconnection from a strict one-to-one mapping to physical memory, make this possible.

However, with the move to 64-bit Linux, the need is less urgent, because the kernel is not confined to only the last 1GB of the virtual address space.
