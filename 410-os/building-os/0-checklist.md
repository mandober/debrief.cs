# Checklist

- asm: make a floppy image with bootsector containing the boot signature
- asm: palce the boot signature `0xaa55` as the last 2 bytes (of 512 bytes)
- asm: pad the file with zeros
- info: BIOS leaves us in the real mode, 2^16 address space available
- asm: get current memory location (`$` and `$$` in asm)
- asm: get innitial memory location of the code
- asm: jumps
- memory addressing: segmented memory addressing scheme
- asm: print a character by invoking the BIOS interrupt INT 10h
- asm: print a string by looping (subroutines in asm)
- asm: check if the CPU supports CPUID instruction
- asm: check if the CPU supports protected mode (32-bit mode)
- asm: check if the CPU supports long mode (64-bit mode)
- asm: check for multiboot support (by magic number 0x36d76289)
- asm: enter protected mode
- asm: enter long mode (requires setting up paging)
- asm: setup stack
- asm: setup paging, i.e. virtual memory (required for the long mode)
- asm: setup heap
- paging: setup paging
- paging: setup paging tables
- paging: 4 KB pages (both virtual and physical)



## CPUID
Check for various CPU features by trying to flip a particular bit in the FLAGS register; if the bit remains flipped (the CPU does not revert it), the feature is supported. First make sure the CPU supports CPUID instruction. If it does (it better), many features can be checked by loading a particular number in a particular register, invoking the CPUID instruction, then checking the CPU's response by querying a particular register.

## Paging
Paging allows mapping of virtual addresses to physical addresses. We do this by creating *page tables* that define all the mappings which the CPU looks up whenever we try to access (read or write) memory. A single page is a chunk of 4 KB of memory. When we map memory, we map a full page of virtual memory to physical memory at a time.

There are 4 types of page tables:
- level 4
- level 3
- level 2
- level 1

Each table can hold up to 512 entries. 
Each virtual address takes up 48 bits of the 64 bits available (the other bits are unused). 

The CPU treats the first 9 bits (of 48) as an index into the level 4 page table, and the corresponding entry will point to a level 3 page table. 

The CPU then uses the next 9 bits to index into the level 3 page table yielding an entry pointing to a level 2 page table.

This continues until we reach the level one page table where the entry now points to the start of a page in physical memory. The final bits of the virtual address are used as an offset in the physical page.

The CPU determines the address of the level 4 page table at any moment by reading the pointer stored in the *CR3* register.

```
0              12         21         30         39        47
↓              ↓          ↓          ↓          ↓         ↓
0000:0000 0000:0000 0000:0000 0000:0000 0000:0000 0000:0000
└───┬────────┘ └───┬─────┘└───┬─────┘└───┬─────┘└───┬─────┘
 offset           l1         l2         l3         l4   ← indices to levels
  into                                              ↑
physical                                           CR3
 memory
```

bits  |sum | desc
00-11 | 12 | offset into the physical memory address
12-20 |  9 | index into the level        1 table ↑
21-29 |  9 | index into the level      2 table ↑
30-38 |  9 | index into the level    3 table ↑
39-47 |  9 | index into the level  4 table ↑
CR3 register points to the level 4 table ↑
