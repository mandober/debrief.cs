# Segmentation

Putting the entire address space of each process in memory, using the base and bounds registers, the OS can easily relocate processes to different parts of physical memory; however, there is a big chunk of unused space between the stack and the heap. Although the space between the stack and heap is not being used by the process, it is still taking up physical memory when we relocate the entire address space somewhere in physical memory. It also makes it quite hard to run a program when the entire address space doesn't fit into memory.

How to support a large address space? How do we support a large address space with potentially lots of free space between the stack and the heap?

Segmentation was invented in the early 1960's to solve this problem: instead of having just one base and bounds pair in our MMU, there would be a base and bounds pair per logical segment of the address space. A *segment* is a contiguous portion of the address space of a particular length. 

There would be 3 logically distinct segments: code, stack and heap. What segmentation allows the OS to do is to place each one of those segments in different parts of physical memory, and thus avoid filling physical memory with unused virtual address space.

The term *segmentation fault* or violation arises from a memory access on a segmented machine to an illegal address. The term persisted and it was even used on machines with no support for segmentation at all.

The hardware uses segment registers during translation. How does it know the offset into a segment, and to which segment an address refers? One common approach, sometimes referred to as an explicit approach, is to chop up the address space into segments based on the top few bits of the virtual address, the technique used in the VAX/VMS system.
