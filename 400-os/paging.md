# Paging

It is sometimes said that the OS takes one of two approaches when solving most any space-management problem. The first approach is to chop things up into *variable-sized pieces*, as with segmentation in virtual memory. Unfortunately, this solution has inherent difficulties, in particular, when dividing a space into different-size chunks, the space itself can become fragmented, and thus allocation becomes more challenging over time.

Thus, it may be worth to consider the second approach: to chop up space into *fixed-sized pieces*. In virtual memory, this idea is called *paging*, and it goes back to an early and important system, the Atlas.

Instead of splitting up a process address space into a number of variably-sized logical segments (code, heap, stack), we divide it into fixed-sized units, called *pages*. Correspondingly, we view physical memory as an array of fixed-sized blocks called *frames*. Each frame can contain a single page.

Aside: 64-bit address space is hard to imagine as it is so amazingly large. An analogy might help: if you think of a 32-bit address space as the size of a tennis court, a 64-bit address space is about the size of Europe.

Paging has a number of advantages over other approaches, probably the most important being *flexibility*: with a fully-developed paging approach, the system will be able to support the abstraction of an address space effectively, regardless of how a process uses the address space; e.g. we won't make assumptions about the direction the heap and stack grow and how they are used.

Another advantage is *simplicity of free-space management*. When the OS wants to map the virtual address space of a process onto physical memory, it can find the adequate number of free pages, e.g. by keeping a free list.

The OS records the mapping of pages to frames in a per-process data structure called a **page table**. Most structures related to paging are per-process structures, an exception being the *inverted page table*.

To translate a virtual memory address, we split it into two components: the **virtual page number (VPN)** and the **offset** within the page.

## Simplified example

For this example, we deal with a 64 bytes virtual address space (VAS). The page size is set to 16 bytes, so there are 4 virtual pages: 0b00, 0b01, 0b10, 0b11.

Physical memory, as shown in the diagram below, consists of 8 frames, making for a 128-byte physical memory. At the OS discretion, the pages of VAS have been placed at arbitrary locations throughout physical memory. The OS uses a per-process page table to keep track of this mapping:

Page → Frame:
0. VP 0 → PF 3
1. VP 1 → PF 7
2. VP 2 → PF 5
3. VP 3 → PF 2

To translate a virtual address into physical address, we first split the virtual address into two parts: *virtual page number (VPN)* and the *offset* within the page. We said the VAS is 64 bytes, which is 2⁶, so an address takes 6 bits. Since a page is 16 bytes, only 4 pages are possible, and since 4 = 2², it takes 2 bits to encode 4 VPNs. Thus, we have a 2-bit VPNs. The remaining bits tell us which byte of the page we are interested in - this is the offest and it is translated because it remains the same - it is just copied over into a physical address. PAS is 128 bytes, which is 2⁷, so it takes 7 bits to represent all the address (i.e. all bytes since this is byte-addressable arch).

Thus, 6 bit VAs are mapped into 7 bit PAs.

For example, a virtual address `21` decimal is `01:0101` in binary. The first 2 bits are the VPN used as index in to the page table (the remaining 4 bits are the offset).

When we look up the page table at index `01`, we find the associated entry is frame `7` in decimal or `111` in binary. Thus, the virtual address `21` is on the 5th (i.e. `0101`th) byte of virtual page `1`.

The binary number `111` is the PFN or PPN. To assemble the physical address, we take the PPN and concatenate the offset to it, obtaining the PA `111:0101` (`117` in decimal). The offset stays the same (it is not translated), because the offset just tells us which byte within the page we want.

VA (21) `01:0101` → `111:0101` (117) PA

```
VAS = 64 B (64-byte virtual address space)
┌────────────┐0
│ P₀         │
├────────────┤16
│ P₁         │
├────────────┤32
│ P₂         │
├────────────┤48
│ P₃         │
└────────────┘64

PAS = 128 B (128 bytes of physical memory)
┌────────────┐0
│ (reserved) │    frame #0 (000)
├────────────┤16
│            │    frame #1 (001)
├────────────┤32
│ P₃         │    frame #2 (010)
├────────────┤48
│ P₀         │    frame #3 (011)
├────────────┤64
│            │    frame #4 (100)
├────────────┤80
│ P₂         │    frame #5 (101)
├────────────┤96
│            │    frame #6 (110)
├────────────┤112
│ P₁         │    frame #7 (111)
└────────────┘128
```

Page Table:

n|VPN | PFN
-|----|--------
0| 00 | 011 (3)
1| 01 | 111 (7)
2| 10 | 101 (5)
3| 11 | 010 (2)
