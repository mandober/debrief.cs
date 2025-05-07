# Free space management

Managing free space can certainly be easy, as we will see when we discuss the concept of paging. It is easy when the space you are managing is divided into fixed-sized units; in such a case, you just keep a list of these fixed-sized units; when a client requests one of them, return the first entry.

Where free-space management becomes more difficult is when the free space you are managing consists of variable-sized units. This arises in a user-level memory-allocation library such as `malloc` and in an OS managing physical memory when using segmentation to implement virtual memory. In either case, the problem that exists is known as *external fragmentation*: the free space gets chopped into little pieces of different sizes and is thus fragmented; subsequent requests may fail because there is no single contiguous space that can satisfy the request, even though the total amount of free space exceeds the size of the request.

The signatures of malloc and free

```c
void* malloc(size_t size);
void free(void* ptr);
```

show that malloc takes a single parameter as the number of bytes requested by the application. It hands back a void pointer (an address) to a memory of that size or greater.

The complementary routine `free` takes a pointer and frees the corresponding chunk. The user does not inform the library of the size of allocation, so the library must figure it out some other way.

The managed space is known historically as the *heap*, and the data structure used to manage it is called a *free list*. This list contains references to the free chunks in the heap.

If an allocator hands out chunks of memory larger than what is requested, that extra space will go unused, contribuing to *internal fragmentation* (because the waste occurs inside the allocated unit).

A free list contains a set of elements making the free space in the heap. If the request is for space smaller then the chunk, *splitting* is performed by dividing the chunk in two. One part is used to satisfy the request and the other remains in the free list.

When the user returns a pointer to free the associated memory, the library frees that block of memory, but it can also check the neighbouring blocks to merge if they are also free. This is called *coalescing*. With coalescing, an allocator can ensure that large free extents are available.

To track the size of a memory block, allocators use a header that is stored just before the start of the chunk which is handed to the user. The header contains the info about the chunk, at least its size and status. When the user calls `free(ptr)`, the allocator uses pointer arithmetic to figure out where the header begins.

The allocator may also implement a mechanism to try to detect illegal operations performed by users, particularly if the user attempts to write to a region of memory where they have no writing rights. This can be accomplished by planting the so-called magic number (arbitrary number) before and after the chunk that is handed to the user. On returning the chunk, the allocator can check if the magic numbers have been overwritten indicating a faulty use.

The free list that tracks free chunks is usually embedded in the free chunk space. Since a free chunk is not in use, we can put a temporary list's node right inside it.

An allocator can obtain the initial buffer of memory from `mmap` or by calling `sbrk`/`brk`. To service the `sbrk` request, the OS finds free physical pages, maps them into the address space of the requesting process, and then returns the value of the end of the new heap. `sbrk(0)` just return the current "break".

Polices for determining which chunk to use to satisfy a user's request include:
- best fit
- worst fit
- first fit
- next fit


*Best fit* policy means returning the smallest chunk that still satisfies the request, thus ensuring that the wasted space is minimized. However, the cost may be a performance penalty to search the list exhaustively to find the smallest fitting chunk.

*Worst fit* approach is the opposite of best fit. It finds the largest possible chunk, splits in in two and satisfies the request with one part, keeping the other in the list. Worst fit tries to leave big chunks free instead of lots of small chunks that may result from the best-fit approach. However, it also requires exhaustively searching the list. Worse still, most studies show that it performs badly, leading to excess fragmentation, while still having a high overhead.

*First fit* method simply uses the first block that can satisfy the request, possibly splitting it if it's too large. First fit has the advantage of speed since there is no search at all, but it often produces a lot of small blocks that infest the start of the free list. Thus, how the allocator manages the free list ordering of chunks becomes an issue. One approach is to use *address-based ordering*: keep the list ordered by address; then coalescing is easier and fragmentation tends to be reduced.

*Next fit* method keeps an extra pointer to the location within the free list referred to last, rather then always restarting the search for a suitable chunk from the beginning. The idea here is to spread the search for a free chunk throughout the list more uniformly and avoid splintering the beginning of the list. The performance of this approach is similar to the first fit, as an exhaustive search is avoided.

Beyond the basic approaches described above, there is a slew of techniques and algorithms to improve memory allocation. Some of these include:
- bump allocator (no deallocation except all at once)
- slab or pool allocator (uniform chunks freed all at once)
- arena allocator (chunks of same size)
- free list allocator (described above)
- segregated list allocator (free lists of different chunk sizes)
- buddy allocator

*Segregated lists* approach keeps free list of chunks of different sizes. More precisely, it has a list of small chunks (of some particluar size), middle, large, and huge chunks. Basically, it has several parallel free lists instead of just one. It may also maintain a list of catch-all sizes. Another version of the segregated lists method maintains the list of chunks of popular sizes and forwards all other requests to a more general allocator. By having a chunk of memory dedicated for one particular size fragmentation becomes less of a concern. Allocation and the requests to free the memory can be served quickly when they are of the same size, as no search is required.

This approach introduces new complications into a system as well, like the question of how much memory to dedicate to the specialized pool, as opposed to the general pool?

干he *slab allocator* by Jeff Bonwick handles this issue nicely. Namely, when the kernel boots up, it allocates a number of *object caches* for kernel objects that are likely to be requested frequently (such as locks, file-system inodes, etc.). The object caches are each segregated free lists of a given size and serve memory allocation and free requests quickly. When a given cache is running low on free space, it requests some slabs of memory from a more general memory allocator (the total amount requested being a multiple of the page size and the object in question). Conversely, when the reference counts of the objects within a given slab all go to zero, the general allocator can reclaim them from the specialized allocator, which is often done when the virtual memory system needs more memory.

ßecause coalescing is critical for an allocator, some approaches have been designed around making coalescing simple. One good example is found in the binary buddy allocator. 

In a *Buddy Allocator*, free store is conceptually thought of as one big space of size `2ⁿ` . When a request for memory is made, the search for free space recursively divides free space by 2 until a block that is big enough to accommodate the request is created (it stops when the next split would create too small a block). This chopping of free space creates a bunch of same-sized pairs, called buddies, with sizes that are a power-of-two. This scheme can suffer from internal fragmentation since we are only allowed to create blocks whose size is a power-of-two.

廾ere is an example of a heap that is progressively split in the attempt to create a block that can satisfy a 7 KiB request. It starts with the entire heap (here 64 KiB) being one solid block. Usually the heap is way larger and the request that would take the entire heap as a solid clock is unlikely - thus, at least one split is bound to occur (??). Anyway, after the first split we get the two actual buddy blocks, each of size 32 KiB. Since this is still too large for the requested 7 KiB, another split 

```
┌───────────────────────────────┐
│               64              │
└───────────────────────────────┘
                ↓
┌───────────────┰───────────────┐
│       32      ┃       32      │
└───────────────┸───────────────┘
        ↓
┌───────┰───────┬───────────────┐
│  16   ┃  16   │       32      │
└───────┸───────┴───────────────┘
    ↓
┌───┰───┬───────┬───────────────┐
│ 8 ┃ 8 │  16   │       32      │
└───┸───┴───────┴───────────────┘
```

The leftmost 8KB block is given to the user.

The beauty of buddy allocation is found in what happens when that block is freed. When returning the 8KB block to the free list, the allocator checks whether its buddy 8KB block is free; if so, it coalesces the two blocks into a 16KB block. The allocator then checks if the buddy of the 16KB block is free; if so, it coalesces them as well. This recursive coalescing process continues up the tree, either restoring the entire free space or stopping when one of the buddy blocks is in use.

## Other Ideas

One major problem with many of the approaches described above is their lack of scaling. Specifically, searching lists can be quite slow. Thus, advanced allocators use more complex data structures to address these costs, trading simplicity for performance. Examples include balanced binary trees, splay trees, or partially-ordered trees.

Given that modern systems often have multiple processors and run multi-threaded workloads, it is not surprising that a lot of effort has been spent making allocators work well on multiprocessorbased systems.
