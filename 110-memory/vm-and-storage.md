# Storage devices

## Storage devices

* What are the properties of ideal computer memory?
* What is the core idea of the storage hierarchy?
* Relation of storage capacity and access time to distance to computing core?
* Relation of costs/bandwidth to the distance to computing core?
* Typical access times? How does this translate to relative distances?
* Typical sizes of different storage levels?
* How does this translate to relative distances?
* What are the tasks of each level of storage hierarchy?
* How to use storage hierarchy to cache reads only?
* How to use storage hierachy to cache both reads and writes?
* Inclusion: data of a higher level is included in a lower level
* Data replacement strategies: when evicitng data to update a cache
* Writing modified data (writeback or writethrough)


Properties of unicorn memory
- non-volatile, forever persistent
- unlimited capacity
- instant random access
- huge bandwidth for sequential access
- free

Memory/storage hierarchy compromise
- on CPU
  - registers (SRAM), 1 cycle (0.3ns @ 3.3GHz)
  - cache (SRAM)
    - L1, ~3 cycles (1ns)
    - L2, ~10 cycles (3ns)
    - L3, ~60 cycles (18ns)
- main memory (DRAM), 20-60ns (60-180 cycles)
- secondary memory (disk drives)
  - SDD, 25-100μs
  - HDD, 5-10ms

↑ better access time, faster transfer, higher cost
↓ capacity increases, cost drops

    CPU @
     3.33 GHz = 3.33 × 1⁹ cycles/s   ⇒ 1 cycle ≈ 0.300{300…} ns
      3.3 GHz = 3.3 × 1⁹ cycles/s    ⇒ 1 cycle ≈ 0.3030{30…} ns
        3 GHz = 3 × 1⁹   cycles/s    ⇒ 1 cycle = 0.33333{3…} ns
        1 GHz = 1⁹ cycles per second ⇒ 1 cycle = 1ns
        1 MHz = 1⁶ cycles per second ⇒ 1 cycle = 1μs
        1 KHz = 1³ cycles per second ⇒ 1 cycle = 1ms
        1 Hz  = 1  cycle  per second ⇒ 1 cycle = 1s

1 cycle of CPU @ 3.3GHz takes approx. 0.3ns. 
Light travels approx. 20cm in 0.3ns.

The further we get form core (CPU), the lower the speed and access time, the lower the cost, the higher the capacity.


Caching data from lower levels is called inclusion. 
*Inclusion property*: L1 data is included in L2, L2 in L3, etc.

    registers ⊆ L1 ⊆ L2 ⊆ L3 ⊆ RAM ⊆ Disk

*Data replacement strategy* decide which data to evict when updating a cache.


**Memory access time** is how long it takes for a character in RAM to be transferred to/from CPU. Modern high-end RAM chips have access time of ~10ns.

Memory Access Times
- 1ns  for read with a cache hit
- 5ns  for read with a cache miss
- 2ns  for write with a cache hit
- 10ns for write with a cache miss

      Average Memory Access Time (AMAT)
             = hit ratio  × access time in cache (hit)
        + (1 - hit ratio) × access time in main memory (miss)

  Q: Given that main memory access is 1200ns, cache access is 100ns. If the average memory access time is not to exceed 120ns, the cache hit ratio must be at least - what percentage? A: 98%

  AMAT = HR × ATiC + (1 - HR) × ATiM

    120 = 100 × h + (1 - h) × 1200
    120 = 100h + 1200 - 1200h
    120 = 1200 - 1100h
    1100h = 1200 - 120
    1100h = 1080
    h = 1080/1100 = 0.981
    thus, hit ratio is 98%


Cache metrics:
- HitRatio:  HR = hits/(hits + misses) = 1 - MR
- MissRatio: MR = misses/(misses + hits) = 1 - HR
- AMAT = HitTime + MissRatio × MissPenalty

Q: Suppose the cache takes 4 cycles to respond, and main memory takes 100 cycles. Without the cache, each memory access would take 100 cycles. With the cache, a cache hit takes 4 cycles, and a cache miss takes 104 cycles. What hit ratio is needed to so that the AMAT with the cache is 100 cycles, the break-even point?

A: We only need a hit ratio of 4% in order for memory system of the Cache + Main Memory to perform as well as Memory alone.

100 = 4 + (1 - HR) × 100 ⇒ HR = 4%


Q: Suppose we wanted an AMAT of 5 cycles.

A: Clearly most of the accesses would have to be cache hits. We can use the AMAT formula to compute the necessary hit ratio. Working through the arithmetic we see that 99% of the accesses must be cache hits in order to achieve an average access time of 5 cycles.

5 = 4 + (1 - HR) × 100 ⇒ HR = 99%

Could we expect to do that well when running actual programs? Happily, we can come close. In a simulation of the *Spec CPU2000 Benchmark*, the hit ratio for a standard-size L1 cache was measured to be 97.5% over some ~10 trillion accesses.
https://research.cs.wisc.edu/multifacet/misc/spec2000cache-data/


*Effective access time (EAT)* is the average time that the system spends to access a page, either in main memory or in secondary storage. EAT depends on several factors, such as the page size, the page fault rate, the memory access time, and the disk access time.

*Memory cycle time* is *memory access time* plus *transient time*, which is any additional time required before a second access can commence, e.g. time required for DRAM DDR memory to "recover" before it can be accessed again. (memory cycle time = memory access time + recovery time)

*Memory transfer rate* is the rate at which data can be transferred in and out of a memory unit.

*Disk Access Time* is the average time it takes to obtain the first character of data after initiating a request. It includes the time to move the disk head to the appropriate track (*seek time*), and the time to rotate the platter to the appropriate sector (*latency*). Disk access time is always given as an average, because seek time and latency vary depending on the current position of the head and platter.

*Disk vs SSD*: while access times of fast HDD are typically 5-10ms, SSD access times are in 25-100μs range. Thus, SSD is as much as 100 times faster. However, access time of storage devices is only one metric: channel speed (transfer rate) and caching improve overall performance.

```
 0.025 ms =     25 μs
 0.1   ms =    100 μs
 1     ms =  1,000 μs
 5     ms =  5,000 μs
10     ms = 10,000 μs
```


At x86_64, there are 16 general purpose registers, each 8B (64 bits). But there are also 16 SIMD registers of 32B each.

- 16×8B general registers
- 16×32B SIMD (single instruction, multiple data)
- L1 may be 32 KiB
- L2 may be 256 KiB
- L3 may be 8 MiB


Writing modified (dirty) data:
When a cached word is changed, how do we record back that data?
- writethrough: immediately write back the element to main memory
- writeback: wait for the word to be evicted, then write it back to main memory

The behavor is similar with any two neighbouring elements of the memory hierachy (reg ⇔ L1, L1 ⇔ L2, L2 ⇔ L3, L3 ⇔ mem, mem ⇔ drive)

This leads to "all levels are equal" pattern: given any storage level in the memory/storage hierarchy, and things like a *data layout*, *data structure* or *algorithm*, things that solve some problem at that level: if they solve the problem at a particular storage level, then they will likely also solve that or a similar problem at another level. In other words, whatever technic works for one level of memory hierarchy will very likely work for other levels as well.

## Multicore storage hierarchies
A single CPU chip nowadays comes with multiple cores (e.g. 4 cores or computational units). Each core has its own registers and L1 and L2 cache, but the L3 cache is shared among the cores.

## NUMA
Non-uniform memory access (NUMA) architecture is where there are two (or more) physical CPUs present on the motherboard, and each processor is multicore as well. A very important difference is that with NUMA, main memory is separated in two banks, with each bank exclusive to one processor.

Access times vary because now we also have the situation that one CPU wants to access its memory bank, while the other CPU is also accessing its own bank.

Some approximate times:
- a core accessing L1 may take 4 cycles
- but accessing L2 takes 10 cycles
- if data in L3 is not shared with other cores, the access time is 40 cycles
- if it's shared for reading with other cores it takes about 64 cycles
- if data in L3 was modified by another core, then it takes 75 cycles


"Remote access" to L3 is here also possible, which is when a core of one CPU accesses L3 cache of the other CPU. Such accesses take 100-300 cycles.

There are other differences in the storage hierarchy with NUMA having to do with the locality of memory to their CPU. It is allowed that one CPU wants to access the other CPU's memory bank, but such access is slower (~100ns) then if it accessed its own memory (~60ns).

## HDD

* What is a platter?
* What is a diskhead and a disk arm?
* How do tracks and cylinders relate? 
* What is the difference of a circular sector from a HD sector?
* What is zone bit recording?
* What does this imply for sequential access?
* Where are self-correcting blocks used?
* What is the difference of HD sectors and operating systems blocks?
* What is physical cylinder/head/sector-addressing?
* What is logical cylinder/head/sector-addressing?
* How does it relate to the former?
* What is logical block addressing?
* What is sparing?
* What does this imply for sequential accesses?

Disk addressing
- CHS (cylinder, head, sector), e.g. 1024/16/256
- Logical CHS addressing
- Logical Block Addressing (LBA)

These disk addressing schemas are in increasing level of abstraction; for LBA there is almost nothing we can infer about how the data will be stored, so we cannot exploit some knowledge of the internal workings of a HDD for performance gains.

Failling blocks may be replaced with not-so-near blocks, so there is no guarantee that a sequential read really reads a contiguous region of blocks on a disk.

## Sequential vs Random Access

What exactly is a random access? What are its major components? What is a sequential access? How to estimate the costs of a sequential access? What is track skewing? How did hard disks evolve over the last decades? What do we learn from that? Bonus Question: What does this imply for index structures of a database?

## Cache

### Basic Cache Algorithm

The cache will hold many different blocks of data. For now let's assume each block is an individual memory location. Each data block is "tagged" with its address. A combination of a data block and its associated *address tag* is called a *cache line*.

When an address is received from the CPU, we'll search the cache looking for a block with a matching address tag. If we find a matching address tag, we have a *cache hit*. On a read access, we'll return the data from the matching cache line. On a write access, we'll update the data stored in the cache line and, at some point, update the corresponding location in main memory.

If no matching tag is found, we have a *cache miss*. So we'll have to choose a cache line to use to hold the requested data, which means that some previously cached location will have to be evicted. For a read operation, we'll fetch the requested data from main memory, add it to the cache (updating the tag and data fields of the cache line) and, of course, return the data to the CPU. On a write, we'll update the tag and data in the selected cache line and, at some point, update the corresponding location in main memory.

So the contents of the cache is determined by the memory requests made by the CPU. If the CPU requests a recently-used address, chances are good the data will still be in the cache from the previous access to the same location. As the working set slowly changes, the cache contents will be updated as needed. If the entire working set can fit into the cache, most of the requests will be hits and the AMAT will be close to the cache access time.

Of course, we need to figure out how to quickly search the cache, i.e. we need a fast way to answer the query of whether a particular address tag can be found in a cache line.

    on reference to Mem[X]:
      look for X amomng cache tags

    on hit: X = TAG(i), for some cache line i
    ∙ read: return DATA(i)
    ∙ write: change DATA(i); write to Mem(X)

    on miss: X not found in TAG of any cache line
    ∙ replacement selection:
        select some line k to hold Mem[X] (allocation)
    ∙ read: read Mem[X]
            set TAG(k) = X, DATA(k) = Mem[X]
    ∙ write: write to Mem(X)
            set TAG(k) = X, DATA(k) = new Mem[X]

### Direct-mapped Caches

https://www.youtube.com/watch?v=p2DReFbW35c&list=PLUl4u3cNGP62WVs95MNq3dQBqY2vGOtQ2&index=119

The simplest cache hardware consists of an SRAM with a few additional pieces of logic. The cache hardware is designed so that each memory location in the CPU's address space maps to a particular cache line, hence the name *direct-mapped (DM) cache*.

There are many more memory locations then there are cache lines, so many addresses are mapped to the same cache line, and the cache can only hold the data for one of those addresses at a time.

The operation of a DM cache: we use part of the incoming address as an *index* to select a single cache line to be searched. The search consists of comparing the rest of the incoming address with the address tag of the selected cache line. If the tag matches the address, that is a *cache hit* and we can immediately use the data in the cache to satisfy the request.

In this design, we've included an additional *valid bit* which is 1 when the tag and data fields hold valid information. The valid bit for each cache line is initialized to 0 when the cache is powered on, indicating that all cache lines are empty. As data is brought into the cache, the valid bit is set to 1 when the cache line's tag and data fields are filled. The CPU can request that the valid bit be cleared for a particular cache line - this is called *flushing the cache*.

If, for example, the CPU initiates a read from disk, the disk hardware will read its data into a block of main memory, so any cached values for that block will be out-of-date. The CPU will flush those locations from the cache by marking any matching cache lines as invalid.

## Virtual memory

2 kinds of addresses
- CPU uses virtual addresses
- Main memory uses physical addresses

Hardware (incl. MMU) translates virtual addresses to physical addresses via the OS-managed table, the *page map table*.

Conceptually, the MMU uses the virtual address as an index to select an entry in the table, which tells us the corresponding physical address.

The table allows a particular virtual address to be found anywhere in main memory. In normal operation we'd want to ensure that two virtual addresses don't map to the same physical address. But it would be okay if some of the virtual addresses did not have a translation to a physical address. This would indicate that the contents of the requested virtual address haven't yet been loaded into main memory, so the MMU would signal a memory-management exception to the CPU, which could assign a location in physical memory and perform the required I/O operation to initialize that location from secondary storage.

The MMU table gives the system a lot of control over how physical memory is accessed by the program running on the CPU. For example, we could arrange to run multiple programs in quick succession (a technique called *time sharing*) by changing the page map when we change programs. Main memory locations accessible to one program could be made inaccessible to another program by proper management of their respective page maps. And we could use memory-management exceptions to load program contents into main memory on demand instead of having to load the entire program before execution starts.

In fact, we only need to ensure the current *working set* of a program is actually resident in main memory. Locations not currently being used could live in secondary storage until needed.

## Virtual Memory Implementation: Paging

We would need an impossibly large table to separately map each virtual address to a physical address. Instead, we divide both the virtual and physical address spaces into fixed-sized blocks, called *pages*.

Page sizes are always a power-of-2 bytes, say `2^p` bytes, so `p` is the number of address bits needed to select a particular location on the page.

       32 - p         p
    VirtualPage#  | offset
    PhysicalPage# | offset

We'll the use low-order `p` bits of the virtual or physical address as the *page offset*. The remaining address bits, called the *page number*, tell us which page is being accessed.

A typical page size is 4KiB to 16KiB, which correspond to p=12 and p=14, respectively. Suppose p=12.

If the CPU produces a 32-bit virtual address, the low-order 12 bits of the virtual address are the page offset and the high-order 20 bits are the virtual page number.

Similarly, the low-order `p` bits of the physical address are the page offset, and the remaining physical address bits are the physical page number.

>The key idea is MMU manages pages, not individual locations.

We'll move entire pages from secondary storage into main memory. By the principal of locality, if a program access one location on a page, we expect it will soon access other nearby locations. By choosing the page offset from the low-order address bits, we'll ensure that nearby locations live on the same page (unless we are near one end of the page or the other). So pages naturally capture the notion of locality.

Since pages are large, by dealing with pages when accessing secondary storage, we'll take advantage that reading or writing many locations is only slightly more time consuming than accessing the first location.

>MMU maps virtual page numbers to physical page numbers.

It does this by using the *virtual page number (VPN)* as an index into the page table. Each entry in the page table indicates if the page is resident in main memory and, if it is, provides the appropriate *physical page number (PPN)*.

PPN is combined with the page offset to form the physical address for main memory.

If the requested virtual page is NOT resident, MMU signals a memory-management exception, called a *page fault*, to the CPU so it can load the appropriate page from secondary storage and set up the appropriate mapping in the MMU.

The plan to use main memory as page cache is called *paging* or *demand paging* since movements of pages to and from secondary storage is determined by the demands of the program.

## Demand Paging

Initially, all the virtual pages for a program reside in secondary storage and the MMU is empty, i.e. there are no pages resident in physical memory.

The CPU starts running the program and each virtual address it generates, either for an instruction fetch or data access, is passed to the MMU to be mapped to a physical address in main memory.

If the virtual address is resident in physical memory, the main memory hardware can complete the access.

If the virtual address in NOT resident in physical memory, the MMU signals a page fault exception, forcing the CPU to switch execution to special code called the *page fault handler*.

The page fault handler allocates a physical page to hold the requested virtual page and loads the virtual page from secondary storage into main memory. It then adjusts the page map entry for the requested virtual page to show that it is now resident and to indicate the physical page number for the newly allocated and initialized physical page.

When trying to allocate a physical page, the handler may discover that all physical pages are currently in use. In this case, it chooses an existing page to replace, e.g. a resident virtual page that hasn't been recently accessed. It swaps the contents of the chosen virtual page out to secondary storage and updates the page map entry for the replaced virtual page to indicate it is no longer resident.

Now there is a free physical page to re-use to hold the contents of the virtual page that was missing.

The *working set of the program*, i.e. the set of pages the program is currently accessing, is loaded into main memory through a series of page faults.

After a flurry of page faults when the program starts running, the working set changes slowly, so the frequency of page faults drops dramatically, perhaps close to zero if the program is small and well-behaved.

It is possible to write programs that consistently generate page faults, a phenomenon called *thrashing*. Given the long access times of secondary storage, a program that is thrashing runs very slowly, usually so slowly that users give up and rewrite the program to behave more sensibly.

## Simple Page Map Design

There's one entry in the page map for each virtual page.

For example, if the CPU generates a 32-bit virtual address and the page size is 2^12 bytes (4096 B, 4 KiB), the virtual page number has 32-12 = 20 bits and the page table will have 2^20 (1,048,576) entries.

Each entry in the page table contains a *resident bit*, `R`, which is set to 1 when the virtual page is resident in physical memory.

If R is 1, the entry also contains the PPN, indicating where to find the virtual page in physical memory.

If R is 0 (for unallocated or swapped pages), an access to that virtual page will cause a page fault. 

There is an additional state bit called the *dirty bit*, `D`. When a page has just been loaded from secondary storage, it is "clean", i.e the contents of physical memory match the contents of the page in secondary storage, and D = 0.

If subsequently, CPU stores into a location on the page, the `D = 1` bit for the page is set to 1, indicating the page is *dirty*, i.e. the contents of memory now differ from the contents of secondary storage, and thus need to be written back.

## Virtual memory

On 32-bit architecture, the max installable memory is 4GiB. Memory is *byte-addressable*, so we need to address each of those 2³² bytes (from 0 to 2³² - 1).


10:   1024     20:   1,048,576    30: 1,073,741,824
11:   2048     21:   2,097,152    31: 2,147,483,648
12:   4096     22:   4,194,304    32: 4,294,967,296
13:   8192     23:   8,388,608    33:
14:  16,384    24:  16,677,216    34:
15:  32,768    25:  33,554,432    35:
16:  65,536    26:  67,108,864    36:
17: 131,072    27: 134,217,728    37:
18: 262,144    28: 268,435,456    38:
19: 524,288    29: 536,870,912    39:

1 byte = 2³ bits (8)
1 word = 2⁵ bits (32)
1KiB = 2¹⁰ bytes = 2⁸  words
1MiB = 2²⁰ bytes = 2¹⁸ words
1GiB = 2³⁰ bytes = 2²⁸ words = (2¹⁰)³ B = 1024³ B
4GiB = 2³² bytes = 2³⁰ words

- An address (VA or PA) needs 32 bits to address 2³² bytes of memory.
- CPU works with VA, as do processes
- VA needs to be translated to PA
- Virtual address space is 2³²
- Physical address space depends on the installed memory, but if 4GiB is installed the it is also 2³²
- This means the mapping could be 1:1 (it's not but it could be)

A program specifies a VA which gets translated to a PA. The RAM is then read using the PA, and the read datum is returned to the program. If the PA points to a location that was paged out, then the page is first loaded back to memory and the translation table is updated; then the lookup is restarted (this time it will be found to be in memory).

## Paging

Paging is a mapping of a contiguous VA space to non-contiguous PA space.

One page table per process.

    VAtoPA(VA):
      pageNum = upper_bits_of_VA
      if pageNum out-of-range:
        pagefault
      if pageTable[pageNum].resident != 1:
        pagefault
      offset = lower_bits_of_VA
      upper_bits_of_PA == pageTable[pageNum].frameNumber
      lower_bits_of_PA == offset (?)


Take a VA. Its lower bits are offset. 
Its higher bits are the logical page number. 
We have the offset and the logical page number.
Use the logical page number as index into the page table.
If it goes beyond the end of the page table, exception.
We look at that table entry at that index:
if the resident bit is not set: pagefault.
Otherwise, take the associated frame number, 
and replace the logical page number 
with the frame number to get the PA.
This is what the MMU does.



## Page table

*Page Table* maps virtual addresses (VA) to physical addresses.

Page Table consists of *page table entries (PTE)*. If every byte-addressable virtual address were to be mapped to a byte-addressable physical address, there would be 2³² entries in the page table, which would take 4GiB with over 4 billion entries (2³² = 4,294,967,296).

But since CPU prefers to work with words (1 word is 4 bytes @32-bit architecture), the number of entries is decreased to 2³⁰ (2³² / 2²). However, 2³⁰ entries is still too large a number, 1,073,741,824 = 1GiB. With word-aligned memory we need to be able to address every word. Each table entry needs the PA which is 32 bits, so the page table alone takes 1GiB.

To solve this tremendously large use of space, we need a new approach. We divide memory address into pages, usually 4KiB in size. *Virtual address space is divided into pages*, and *physical address space into frames*, but usually both pages and frames are of the same size (4KiB).

Then we'd need 1 PTE for every 4KiB, so an PTE amounts to containing 1024 words.

Page sizes
- 1 KiB = 1024 (2¹⁰) bytes = 256 (2⁸) words
- 2 KiB = 2048 (2¹¹) bytes = 512 (2⁹) words
- 4 KiB = 4096 (2¹²) bytes = 1024 (2¹⁰) words (default)
- 8 KiB = 8192 (2¹³) bytes = 2048 (2¹¹) words

- 4GiB of installed memory is 2³² bytes or (2³⁰ words)
- 4GiB / 4 KiB = 2³² / 2¹² = 2²⁰ (number of 4KiB pages)
- 2²⁰ = 1,048,576 = 1MiB, so the page table takes 1MiB?
- 1,048,576 4KiB pages = 4 GiB
- 1MiB × 4KiB = 4GiB

The page table keeps a record of physical page numbers (PPN), which is 20 bits, and flags (permissions), which take additional 12 bits; so an PTE is 32 bits or 4 bytes. Each page table entry takes 4 bytes. Page table width is 4 bytes and its height is 2²⁰ (it has 2²⁰ entries? isn't it 2¹⁰? It is but in multi-level page tables).

The page table takes 4 × 2²⁰ bytes = 2²² bytes = 4,194,304 bytes = 4 MiB.

So a page table takes 4MiB and each process needs its own page table.

## Multi-level page tables

In a 2-level paging system, we have 2 page tables: the root table (which is always in memory) and the second-level page table. Both have 2¹⁰ entries, so the total effective number of PTE is 2²⁰ like before with a single table.

If we further split the second-level page table into two tables: one for resident entries and one for non-allocated addresses, the table with non-allocated address does not have to be in memory.

## Paging on x86

- x86 uses 2-level paging
- x86_64 uses 4-level paging, or even 5-level paging

In x86 2-level paging, the first-level table is called *page directory* and the second-level table is called *page table*. Page directory stores *page directory entries (PDE)*, while page table stores *page table entries (PTE)*.

There is a specialized register `CR3` that points to the current page.

A 32-bit virtual (logical, linear) address is broken up into 3 parts
- 10 bits for PDE
- 10 bits for PTE
- 12 bits for offset
