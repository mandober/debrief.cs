# Memory ballooning

https://en.wikipedia.org/wiki/Memory_ballooning

Memory ballooning is a technique used to eliminate the need to overcommit host memory used by virtual machines (VMs) by letting each VM effectively "give back" unused pages of (virtual) memory.

To implement memory ballooning, the virtual machine's kernel implements a "balloon driver" that allocates unused memory within the VM's address space into a pool of memory (the "balloon"), which makes that memory unavailable to other processes on that VM.

The balloon driver doesn't use the pool of memory; instead it tells the host operating system's hypervisor which memory addresses are in that pool (unused). The host operating system then unmaps physical memory from those memory pages (with no need to copy them to secondary storage). 

The released pages of physical memory return to the host machine's pool of available RAM, and the host machine can use them to keep other virtual machines in physical memory and/or to cache secondary storage.

Depending on the amount of memory required by applications running on the VM, the balloon driver inside the VM can dynamically decrease or increase the number of pages in its "balloon", causing the host computer to remap or unmap physical memory to the VM, as-needed.
