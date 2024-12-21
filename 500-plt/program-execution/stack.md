# Stack



## The Call stack

https://en.wikipedia.org/wiki/Call_stack

The entire physical memory is available to the CPU as a linear arrray of byte-sized cells, each with a unique numeric address. The MMU in CPU aids in overlaying the virtual memory system over the physical memory. A consequence of this is that each running program thinks it is the only one running and that it has all memory at its disposal. In reality, the CPU serves blocks, or the so-called pages, of virtual memory to programs, some backed up by the primary memory and some mapped to a secondary storage, according to the "you snooze you loose" rule.

Memory resources are managed by MMU in CPU and it divides memory in several areas; from low to high addresses, a range at the end is reserved for the kernel.

Each running process sees a similar set of memory segments, although each process sees a different arrangment of memory sections

but in general, each sees and has the same, or very similar, memory areas. 

The stack is a part of memory available to a program at runtime.


The stack is very fast, and is where memory is allocated in Rust by default.
But the allocation is local to a function call, and is limited in size.

The heap, on the other hand, is slower, and is explicitly allocated by your program. But it's effectively unlimited in size, and is globally accessible.

This meaning of heap, which allocates arbitrary-sized blocks of memory in arbitrary order, is quite different from the heap data structure.

Rust stack allocates by default, which means that basic values go on the stack.

When a function gets called, some memory gets allocated for all of its local variables and some other information. This is called a *stack frame*. When the function exits, its stack frame gets deallocated. Allocation and deallocation happens automatically.

Stack allocation is very fast. Since we know all the local variables we have ahead of time, we can grab the memory all at once. And since we'll throw them all away at the same time as well, we can get rid of it very fast too. The downside is that we can't keep values around if we need them for longer than a single function. 


## Stack

```
stack origin                              0xbf ff f6 d8
┌─────────────────────────┐ stack frame   0xbf ff f6 d8
│1....... 2.......        │
│3....... 4.......        │
├─────────────────────────┤ stack frame   0xbf ff f6 d4
│                         │
│                         │
│                         │
│                         │
├─────────────────────────┤ stack frame   0xbf ff f6 d0
│                         │
│                         │
├─────────────────────────┤
│                         │
│                         │
└─────────────────────────┘
```
pushl and popl (l is for long i.e. 4B on x86) operate on the value that is on top of the stack, but movl opcoe will operate on any value in the stack frame.

A memory address to operate on is calculated as offset from the value (address) held by base pointer, %ebp.

Add two 4bytes (32b) signed ints (long words in GCC):
- same instructions whether signed or unsigned

`int t = x + y;` in assembly: `addl 8(%ebp), %eax`

similar to: `int x += y`:
`int eax; int *ebp; eax += ebp[2];`



---

The stack is fast because of the way it accesses the data: it never has to search for a place to put new data or a place to get data from because that place is always the top. Another property that makes the stack fast is that all data on the stack must take up a known, fixed size.

For data with a size unknown to us at compile time or a size that might change, we can store data on the heap instead. 

The heap is less organized: when we put data on the heap, we ask for some amount of space. The operating system finds an empty spot somewhere in the heap that is big enough, marks it as being in use, and returns to us a pointer to that location. This process is called allocating on the heap, and sometimes we abbreviate the phrase as just allocating.

Pushing values onto the stack is not considered allocating. Because the pointer is a known, fixed size, we can store the pointer on the stack, but when we want the actual data, we have to follow the pointer.

Contemporary processors are faster if they jump around less in memory. 
A processor can do its job better if it works on data that's close to other data rather than farther away. Allocating a large amount of space on the heap can also take time.

When our code calls a function, the values passed into the function (including, potentially, pointers to data on the heap) and the function's local variables get pushed onto the stack. When the function is over, those values get popped off the stack.

Keeping track of what parts of code are using what data on the heap, minimizing the amount of duplicate data on the heap, and cleaning up unused data on the heap so we don't run out of space are all problems that ownership addresses.


# Stack-based memory allocation

https://en.wikipedia.org/wiki/Stack-based_memory_allocation


Stacks in computing architectures are regions of memory where data is added or removed in a last-in-first-out (LIFO) manner.

In most modern computer systems, each thread has a reserved region of memory referred to as its stack. When a function executes, it may add some of its state data to the top of the stack; when the function exits it is responsible for removing that data from the stack. At a minimum, a thread's stack is used to store the location of function calls in order to allow return statements to return to the correct location, but programmers may further choose to explicitly use the stack. If a region of memory lies on the thread's stack, that memory is said to have been allocated on the stack.

Because the data is added and removed in a last-in-first-out manner, stack-based memory allocation is very simple and typically faster than heap-based memory allocation (also known as dynamic memory allocation). Another feature is that memory on the stack is automatically, and very efficiently, reclaimed when the function exits, which can be convenient for the programmer if the data is no longer required. If however, the data needs to be kept in some form, then it must be copied from the stack before the function exits. Therefore, stack based allocation is suitable for temporary data or data which is no longer required after the creating function exits.

A thread's assigned stack size can be as small as only a few bytes on some small CPUs. Allocating more memory on the stack than is available can result in a crash due to stack overflow.

Some processor families, such as the x86, have special instructions for manipulating the stack of the currently executing thread. Other processor families, including PowerPC and MIPS, do not have explicit stack support, but instead rely on convention and delegate stack management to the operating system's application binary interface (ABI).
