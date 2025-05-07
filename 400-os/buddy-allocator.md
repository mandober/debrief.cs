# Memory Allocation :: Buddy Allocator

Because coalescing is critical for an allocator, some approaches have been designed around making coalescing simple. One good example is found in the binary buddy allocator. 

In a *Buddy Allocator*, free store is conceptually thought of as one big space of size `2ⁿ` . When a request for memory is made, the search for free space recursively divides free space by 2 until a block that is big enough to accommodate the request is created (it stops when the next split would create too small a block). This chopping of free space creates a bunch of same-sized pairs, called buddies, with sizes that are a power-of-two. This scheme can suffer from internal fragmentation since we are only allowed to create blocks whose size is a power-of-two.

Here is an example of a heap that is progressively split in the attempt to create a block that can satisfy a 7 KiB request. It starts with the entire heap (here 64 KiB) being one solid block. Usually the heap is way larger and the request that would take the entire heap as a solid clock is unlikely - thus, at least one split is bound to occur (??). Anyway, after the first split we get the two actual buddy blocks, each of size 32 KiB. Since this is still too large for the requested 7 KiB, another split 

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

The reason buddy allocation works well is because it is easy to locate the buddy of a particular block: the address of each buddy pair differs by a single bit as all blocks are a power of two. Which bit that is, is determined by the level (depth) of the block in the buddy tree.

64 KiB = 64 × 1024 KiB = 65,536 B (0x10000)

## Buddy tree

```
                                  0x0
                                 //
                               64 KiB
                              /  \
                            32    32 (0x8000)
                           /  \
                         16    16 (0x4000)
                        /  \
                       8    8 (0x2000)
                     /  \
                    4    4 (0x1000)
                  /  \
                 2    2 (0x800, 1000'0000'0000)
               /  \
              1    1 (0x400,    0100'0000'0000)
            /  \
         512    512 (0x200,     0010'0000'0000)
         /  \
      256    256 (0x100,        0001'0000'0000)
      /  \
   128    128 (0x80,            0000'1000'0000)
```


## Buddy blocks

```
0x0                       0x10000
↓                               ↓
┌───────────────────────────────┐ (1)
│               64              │ 0x0000 - 0xFFFF
└───────────────────────────────┘
                ↓ 0x8000
┌───────────────┰───────────────┐ (2)
│       32      ┃       32      │ 0x0000 - 0x7FFF
└───────────────┸───────────────┘ 0x8000 - 0xFFFF
        ↓ 0x4000                  (3)
┌───────┰───────┬───────────────┐ 0x0000 - 0x3FFF
│  16   ┃  16   │       32      │ 0x4000 - 0x7FFF
└───────┸───────┴───────────────┘ 0x8000 - 0xFFFF
    ↓ 0x2000                      (4)
┌───┰───┬───────┬───────────────┐ 0x0000 - 0x1FFF
│ 8 ┃ 8 │  16   │       32      │ 0x2000 - 0x3FFF
│   ┃   │       │               │ 0x4000 - 0x7FFF
└───┸───┴───────┴───────────────┘ 0x8000 - 0xFFFF
↑   ↑   ↑       ↑               ↑
0 2000 4000    8000         10000
```


## Hex semisums

```
0x1               1
0x2               2
0x4               4
0x8               8
0x10             16
0x20             32
0x40             64
0x80            128
0x100           256
0x200           512
0x400         1,024
0x800         2,048
0x1000        4,096
0x2000        8,192
0x4000       16,384
0x8000       32,768
0x1 0000      65,536
0x2 0000     131,072
0x4 0000     262,144
0x8 0000     524,288
0x10 0000  1,048,576
0x20 0000  2,096,152
0x40 0000  4,194,304
0x80 0000  8,388,608


h = d₇16⁷ + d₆16⁶ + d₅16⁵ + d₄16⁴ + d₃16³ + d₂16² + d₁16 + d₀

16⁷ = 268,435,456
16⁶ = 16,777,216
16⁵ = 1,048,576
16⁴ = 65,536
16³ = 4096
16² = 256
16¹ = 16
16⁰ = 1
```
