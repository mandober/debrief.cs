# Multi-level Page Tables

Multi-level page table turns the linear page table into a tree. This approach is so effective that most modern systems employ it.

The basic idea behind a multi-level page table is simple. First, chop up the page table into page-sized units; then, if an entire page of page-table entries (PTEs) is invalid, don't allocate that page of the page table at all.

To track whether a page of the page table is valid (and if valid, where it is in memory), use a new structure, called the *page directory*. Page directory is the first-level page table and it is always loaded in memory. The page directory can either be used to tell you where a page of the page table is, or that the entire page of the page table contains no valid pages.

The page directory, in a two-level table, contains one entry per page of the page table. It consists of a number of page directory entries (PDE). A PDE minimally has a valid bit and a page frame number (PFN), similar to a PTE. However, the meaning of the valid bit is slightly different: if the PDE is valid, it means that at least one of the pages of the page table that the entry points to (via the PFN) is valid, i.e. in at least one PTE on that page pointed to by this PDE, the valid bit in that PTE is set to one. If the PDE is not valid (i.e. equal to zero), the rest of the PDE is not defined.

Multi-level page tables have some obvious advantages over other approaches. First, the multi-level table only allocates page-table space in proportion to the amount of address space you are using; thus it is generally compact and supports *sparse address spaces*. Second, if carefully constructed, each portion of the page table fits neatly within a page, making it easier to manage memory; the OS can simply grab the next free page when it needs to allocate or grow a page table.

Contrast this to a simple (non-paged) linear page table, which is just an array of PTEs indexed by VPN; with such a structure, the entire linear page table must reside contiguously in physical memory. For a large page table (say 4MB), finding such a large chunk of unused contiguous free physical memory can be quite a challenge. With a multi-level structure, we add a level of indirection through use of the page directory, which points to pieces of the page table; that indirection allows us to place page-table pages wherever we would like in physical memory.

There is a cost to multi-level tables - on a *TLB miss*, two loads from memory will be required to get the right translation information from the page table (one for the page directory, and one for the PTE itself), in contrast to just one load with a linear page table. Thus, the multi-level table is an example of a time-space trade-off. We get smaller tables, but not for free; although in the common case (TLB hit), performance is obviously identical, a TLB miss suffers from a higher cost with this smaller table.

Another obvious disadvantage is complexity. Whether it is the hardware or OS handling the page-table lookup (on a TLB miss), doing so is undoubtedly more involved than a simple linear page-table lookup. Often, we are willing to increase complexity in order to improve performance or reduce overheads; in the case of a multi-level table, we make page-table lookups more complicated in order to save valuable memory.

## Example

Consider a small address space of size `16KiB` (2¹⁴), with `64-byte` (2⁶) pages.

- 2⁶  =            64 bytes
- 2⁸  =           256 bytes
- 2¹⁰ =  1KiB =  1024 bytes
- 2¹¹ =  2KiB =  2048 bytes
- 2¹² =  4KiB =  4096 bytes
- 2¹³ =  8KiB =  8192 bytes
- 2¹⁴ = 16KiB = 16384 bytes

So we have a `14-bit` virtual address space, with `8 bits` for VPN and `6 bits` for the offset. A linear page table would have `2⁸` (2¹⁴ / 2⁶ = 2⁸ = 256) entries, even if only a small portion of the address space is in use.

A 16KB address space with 64-byte pages:
```
0000 0000     0
0000 0001     1
0000 0010     2
…
1111 1101   253
1111 1110   254
1111 1111   255
```

In this example, virtual pages 0 and 1 are for code, virtual pages 4 and 5 for the heap, and virtual pages 254 and 255 for the stack; the rest of the pages of the address space are unused.

To build a 2-level page table for this address space, we start with the linear page table and break it up into page-sized units. The full table has `256` entries. Assume each page table entry is `4` bytes. Thus, the size of the page table is `1KiB` (256 × 4 bytes). Given that the size of a page is `64` bytes, the `1KiB` page table can be divided into *16 `64-byte` pages*; each page can hold `16` page table entries.

1024 bytes (1KiB) / 256 bytes = 4
1024 bytes (1KiB) / 128 bytes = 8
1024 bytes (1KiB) /  64 bytes = 16

We now need to figure out how to take a VPN and use it to index first into the page directory and then into (the page of) the page table. Each one is an array of entries; thus, we need to break a VPN into indices for each.

The page table in this example is small; it has 256 entries, spread across 16 pages. The page directory keeps one entry per page of the page table - so it has 16 entries. This means we need to use 4 bits of the VPN as an index into the page table directory. We'll use the first 4 (msb) bits of the VPN for this.

We use the 4:4:6 scheme

```
        VPN           offset
┌────────┴────────┐ ┌───┴─────┐
13 12 11 10 9 8 7 6 5 4 3 2 1 0  (14 bits)
└───┬─────┘ └──┬──┘ └───┬─────┘
PD index   PT index   offset
```

Once we extract the *page directory index (PDI)* from the VPN, we can use it to find the address of the PDE by:

    PDEAddr = PageDirBase + PDIndex * sizeof PDE

This results in a *page directory address*, which we check to make further progress in the translation. If the PDE is marked invalid, we know the access is invalid, and thus raise an exception. If the PDE is valid, we have to fetch the PTE from the page of the page table referenced by this PDE. To find this PTE, we have to index into the portion of the page table using the next 4 bits of the VPN as index.

The *page table index* (PTI) is used to index into the page table itself, giving us the address of the PTE:

    PTEAddr = (PDE.PFN << SHIFT) + PTIndex * sizeof PTE

The *page frame number (PFN)* obtained from the PDE must be left-shifted into place before combining it with the PTI to form the address of the PTE.

To see if this all makes sense, we now fill in a multi-level page table with some actual values, and translate a single virtual address. Let's begin with the page directory for this example.

The diagram shows each PDE which describes something about a page of the page table for the address space.

A Page Directory, and pieces of the Page Table:
```
Page Directory | Page of PT (@PFN:100) | Page of PT (@PFN:101)
PFN | valid    | PFN | valid | prot    | PFN | valid | prot
------------------------------------------------------------
100       1    |  10       1    r-x    |   -       0     ---     0
-         0    |  23       1    r-x    |   -       0     ---     1
-         0    |  -        0    ---    |   -       0     ---     2
-         0    |  -        0    ---    |   -       0     ---     3
-         0    |  80       1    rw-    |   -       0     ---     4
-         0    |  59       1    rw-    |   -       0     ---     5
-         0    |  -        0    ---    |   -       0     ---     6
-         0    |  -        0    ---    |   -       0     ---     7
-         0    |  -        0    ---    |   -       0     ---     8
-         0    |  -        0    ---    |   -       0     ---     9
-         0    |  -        0    ---    |   -       0     ---     10
-         0    |  -        0    ---    |   -       0     ---     11
-         0    |  -        0    ---    |   -       0     ---     12
-         0    |  -        0    ---    |   -       0     ---     13
-         0    |  -        0    ---    |  55       1     rw-     14
101       1    |  -        0    ---    |  45       1     rw-     15
```

In this example, we have two valid regions in the address space (at the beginning and end), and a number of invalid mappings in-between.

In physical page `100` (the physical frame number of the 0th page of the page table), we have the first page of `16` page table entries for the first `16` VPNs in the address space. The middle part of the diagram shows the contents of this portion of the page table.

This page of the page table contains the mappings for the first `16` VPNs; in our example, VPNs `0` and `1` are valid (the code segment), as are `4` and `5` (the heap). Thus, the table has mapping information for each of those pages. The rest of the entries are marked invalid.

The other valid page of the page table is found inside PFN `101`. This page contains mappings for the last 16 VPNs of the address space.

In the example, VPNs `254` and `255` (the stack) have valid mappings. What we can see from this example, is how much space savings are possible with a multi-level indexed structure. Instead of allocating the full 16 pages for a linear page table, we allocate only 3: one for the page directory, and 2 for the chunks of the page table that have valid mappings. The savings for large address spaces (32-bit or 64-bit) are much greater.

Finally, let's use this information in order to perform a translation.   
Here's an address that refers to the 0th byte of `VPN 254`:   
`0x3F80` or `11 1111 1000 0000` in binary.

We use the top 4 bits of the VPN to index into the page directory. Thus, `1111` will select the last (15th, if you start at the 0th) entry of the page directory above. This points us to a valid page of the page table located at address `101`.

We then use the next 4 bits of the VPN, `1110`, to index into that page of the page table and find the desired PTE. `1110` is the next-to-last (14th) entry on the page, and tells us that page `254` of our virtual address space is mapped at physical page `55`.

By concatenating PFN=55 (or hex 0x37) with offset=000000, we can thus form our desired physical address and issue the request to the memory system:

    PhysAddr = (PTE.PFN << SHIFT) + offset
             = 00 1101 1100 0000 (0x0DC0)
