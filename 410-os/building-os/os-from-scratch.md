# OS from scratch

Building an OS
https://www.youtube.com/playlist?list=PLFjM7v6KGMpiH2G-kT781ByCNC_0pKpPN
https://github.com/nanobyte-dev/nanobyte_os/

x86 architecture
real 16 mode, 16 bit mod
protected 32 mode
INT 10h, text mode BIOS interrupt to print text to screen
INT 13h, "graphical" mode BIOS interrupt for printing to screen


## The boot process

https://nanobyte.dev/transcripts/building-an-os-1-hello-world

There are actually two ways in which the BIOS can load an operating system. In the first method which is now called *legacy mode*, the BIOS loads the first block of data (the first sector) from each boot device into memory, until it finds the signature `0xAA55`. Once it finds that signature, it jumps to the first instruction in the loaded block; and this is where the OS starts. The second method is called *EFI*, which works a bit differently. In this mode, the BIOS looks for a certain EFI partition on each device, which contains special EFI programs.

A **boot sector** is the sector of a persistent data storage device which contains machine code to be loaded into memory and then executed by a computer system's built-in firmware (e.g. the BIOS). Usually, the very first sector of the hard disk is the boot sector, regardless of sector size (512 or 4096 bytes) and partitioning flavor (MBR or GPT). The purpose of chain loading first a firmware (e.g. the BIOS), then some code contained in the boot sector, and then, for example, an operating system, is maximal flexibility.

After POST-ing, the BIOS consults the list of configured boot devices in the set boot-priority order: HDD1, HDD2, Floppy, USB Drive, etc. It loads the first sector of the first boot device into memory (typically a HDD, although here we also use a floppy), making sure that the last two bytes of that first sector ends in `0xAA55`. If it doesn't find the signature, the BIOS tries the next configured boot device, until either the signature is found or the boot list is exhausted, halting the computer. If it finds the signature, the BIOS jumps to the first instruction in the loaded block, and this is where the OS begins loading.


At this stage, due to the backwards compatibility with the original 8086 CPU, the computer is in the so-called **real 16 mode** (16 bit mode, a word is 16 bits or 2 bytes). The mode is set in assembly (nasm).

## Real memory model

The 8086 CPU had 20-bit address bus, meaning it can access up to 2²⁰ = 1MB of memory (at the time, typical computers had around 64 to 128 KB). 

*Segment and offset memory addressing scheme* is used in this mode.

    segment:offset
    0x1234:0x56

Two 16-bit values, the segment and the offset are used. Each segment contains 64 KB of memory, where each byte can be accessed by using the offset value. Segments overlap every 16 bytes.

This means that we can convert a `segment:offset` address to an absolute address by shifting the segment 4 bits to the left (or multiplying it by 16), and then adding the offset.

```
linear_address = segment << 4 + offset;
// or
linear_address = segment * 16 + offset;
```

It also means there are multiple ways of addressing the same location in memory. For example, the absolute address `0x7C00` (where the BIOS loads the OS) can be written as any of these:

    segmen:offset       linear_address
    0x0000:0x7C00       0x7C00
    0x0001:0x7BF0       0x7C00
    0x0010:0x7B00       0x7C00
    0x00C0:0x7000       0x7C00
    0x07C0:0x0000       0x7C00


There are some special registers used to specify the actively used segments:
- `CS` contain the *code segment*, which is the segment the processor executes code from. The IP register (program counter) only gives us the offset.
- `DS` and `ES` are *data segments*. Newer processors introduced additional data segments `FS` and `GS`.
- `SS` contains the current stack register.

In order to access (read or write) any memory location, its segment needs to be loaded into one of these registers, by setting the corresponding register. 
>The code segment can only be modified by performing a jump.

## Referencing a memory location from assembly

>[segment : base + index * scale + displacement]

where:
- segment: one of CS, DS, ES, FS, GS, SS. Default: DS (SS if BP is used as base)
- base
  - 16-bit: BP or BX
  - 32/64-bit: any general purpose register
- index:
  - 16-bit: SI or DI
  - 32/64-bit: any general purpose register
- scale (32/64-bit only): 1, 2, 4 or 8
- displacement: a signed constant number

The processor is capable of doing some arithmetic for us, as long as we use this expression.

The first CPU with the x86 architecture was Intel 8086 released in 1978. With the advance of the 386 CPU just a few years later, 32-bit mode was introduced which rendered 16-bit mode obsolete, and new CPU features were not backported to 8086 remaining in 16 bit mode. The main (only) use of 16-bit mode today is the startup sequence. Most operating systems switch to 32 or even 64-bit mode (Long mode) immediately after starting up.

All operating systems have to do the same thing in order to boot, but until we get there, let's get back to referencing our memory locations. So, I already talked about the base and index operands. The scale and displacement operands are numerical constants; the scale can only be used in 32 and 64-bit modes, and it can only have a value of 1, 2, 4 or 8. The displacement can be any signed integer constant.

All the operands in a memory reference expression are optional, so you only have to use whatever you need.

### Examples

#### Example 1

```
var: dw 100
  mov ax, var     ; copy offset to ax
  mov ax, [var]   ; copy memory contents of ds:var to ax
```

First, I defined a label which points to a word having the value 100. The first instruction `mov ax, var` puts the offset of the label into the `ax` register. The the second instruction `mov ax, [var]` copies the memory contents that the label points to. Since we didn't specify a segment register, `DS` is going to be used by default. We haven't used the base, index or scale, but only a constant, which is the offset denoted by the `var` label. In assembly, labels are simply constants which point to specific memory offsets.

#### Example 2

```
array: dw 100, 200, 300
  ; read third element in array
  mov bx, array
  mov si, 2 * 2
  mov ax, [bx + si]
```

Here's a more complicated example, where we want to read the third element in an array. We put the offset of the array into `BX`, and the index of the third element in `SI`. Since we use zero-based indexing, the third element is at array[2]; each element in the array is a word, which is 2 bytes wide, so we put in SI the value 4.

Note: You can see here that we use the multiplication symbol. The assembler is capable of calculating the result of constant expressions, and put the result in the resulting machine code. However, you can't write `mov bx, ax * 2`. AX is not known at compile time, so it is not a constant. To perform this multiplication, you have to use the MUL (multiply) instruction. Referencing memory is the only place where you can put registers in an expression!

Finally, we put into AX the third element in the array, by referencing the memory location at `BX + SI`. BX is our base register, and SI is our index register.

---

At the moment, we are using an image to emulate a floppy disk, setting it up so that `qemu` uses it as a boot device. Only the first sector of the floppy image is significant so far, as it contains the required signature - the rest of the floppy image is zeroed out (to 1,44 KB). So, we are now limited just to the first sector of a floppy disk, i.e. the first 512 bytes, which is too confined a space to develop an OS.


## OS initialization

The code segment (CS) register has been set up for us by the BIOS and it points to segment 0x0000. There are some BIOSes which actually jump to our code using a different segment and offset (e.g. 0x07C0:0x0000), but the standard behavior is to use `0x0000:0x7C00`.

Next, we have to initialize DS and ES, but we can't write to segment registers directly, so we do a little dance: we use AX to intemediate this.

The `mov` instruction copies data from the source (on the left side) to the destination (on the right side).

We also need to set up the *stack segment (SS)* to 0, and the *stack pointer (SP)* to the beginning of our program.

The next instruction, `jz`, is a conditional jump which will jump to the `.done` label if the *zero flag* is set. Essentially, if the next character is null, we jump outside the loop.

After exiting the loop, we pop the registers we previously pushed in reverse order, and then we'll return from this function.

So far, our function takes a string, iterates every character until it encounters the null character, and then exits. 

What's left to do is to print the character to the screen using the BIOS. The BIOS also provides some basic functionality, such as writing text to the screen, whcih is invoked with interrupts.

## Interrupts

An interrupt is a signal which makes the processor stop whatever it is doing and handle it.

There are 3 possible ways of triggering an interrupt:
- Through an exception; an exception is generated by the CPU if a critical error is encountered, and it cannot continue executing. For example, dividing by zero will trigger an interrupt. Operating systems can use these interrupts to stop the misbehaving process, or to attempt to restore it to working order.
- Hardware can also trigger interrupts. For example, when a key is pressed on the keyboard, or when the disk controller finished performing an asynchronous read.
- From code, through the `INT` instruction. Interrupts are numbered from 0 to 255, so the `INT` instruction requires a parameter indicating the interrupt number to trigger.

The BIOS has installed some interrupt handlers we can use. Typically, the BIOS reserves an interrupt number for a category of functions, and the value in the AH register is used to choose between the available functions in that category.

Examples of BIOS interrupts:
- INT 10h -- Video
- INT 11h -- Equipment check
- INT 12h -- Memory size
- INT 13h -- Disk I/O
- INT 14h -- Serial communication
- INT 15h -- Cassette
- INT 16h -- Keyboard
- and more

To print text to the screen, we will need to call `INT 10h` which contains the video services category. By setting the AH register to `0x0A`, we call the "write text in teletype mode" function.

Detailed description of this function:

VIDEO - TELETYPE OUTPUT

- AH = `0x0E`
- AL = character to write, e.g. 'X'
- BH = page number
- BL = foreground color (graphics modes only)
- Returns: nothing
- Desc: Displays a character on the screen, advancing the cursor and scrolling the screen as necessary
- Notes: Characters 0x07 (BEL), 0x08 (BS), 0x0A (LF), and 0x0D (CR) are interpreted appropriately.

To call this function we set:
- AH to 0Eh
- AL to the ASCII character that we want to print
- BH to the page number (which is 0)
- BL (the foreground color) is only used in graphics mode, so we can ignore it because we're currently running in text mode.

```asm
mov ah, 0x0E        ; call bios interrupt
; al is already set by `lodsb`
mov bh, 0           ; set page number to 0
int 0x10
```

Finally let's add a string containing "Hello world", followed by a new line. To add a new line, we need to print both the line feed and the carriage return characters (this can be encoded in a macro). To declare the string we use the `DB` (define bytes) directive.

```asm
%define ENDL 0x0D, 0x0A
msg_hello: db 'Hello world!', ENDL, 0
```

All that's left to do is to set `DS:SI` to the address of the string, and then call puts.

```asm
; print hello world message
mov si, msg_hello
call puts
```

Let's now test our program:

```bash
make
qemu-system-i386 -fda build/main_floppy.img
```

We have written a tiny OS that can print "Hello worls" to the screen! Next time we improve our assembly skills and learn some new stuff, by extending our OS to print numbers to the screen. After that, we will get into the complex task of loading stuff from the disk.


## Bootsector

On an IBM PC compatible machine, the BIOS selects a boot device, then copies the first sector from the device (which may be an MBR, VBR or any executable code), into physical memory at memory address `0x7C00`.

Since 512 bytes is too little space to do anything, this space is used to store the code of the bootloader. The bootloader than loads the OS that is located elsewhere (at an offset from there).

The purpose of chain loading first a firmware (e.g., the BIOS), then some code contained in the boot sector, and then, for example, an operating system, is maximal flexibility.

In case a boot sector receives physical damage, the hard disk will no longer be bootable, unless used with a custom BIOS that defines a non-damaged sector as the boot sector. However, since the very first sector additionally contains data regarding the partitioning of the hard disk, the hard disk will become entirely unusable except when used in conjunction with custom software.

A disk can be partitioned into multiple partitions and, on conventional systems, it is expected to be. There are two definitions on how to store the information regarding the partitioning:
* A *master boot record* (MBR) is the first sector of a data storage device that has been partitioned. The MBR sector may contain code to locate the active partition and invoke its volume boot record.
* A *volume boot record* (VBR) is the first sector of a data storage device that has not been partitioned, or the first sector of an individual partition on a data storage device that has been partitioned. It may contain code to load an operating system (or other standalone program) installed on that device or within that partition.

The presence of an IBM PC compatible boot loader for x86-CPUs in the boot sector is by convention indicated by a two-byte hexadecimal sequence `0x55 0xAA` - called the **boot sector signature** - at the end of the boot sector (offsets `0x1FE` and `0x1FF`). This signature indicates the presence of at least a dummy boot loader which is safe to be executed, even if it may not be able actually to load an operating system.

It does not indicate a particular (or even the presence of) file system or operating system, although some old versions of DOS 3 relied on it in their process to detect FAT-formatted media (newer versions do not). 

Boot code for other platforms or CPUs should not use this signature, since this may lead to a crash when the BIOS passes execution to the boot sector assuming that it contains valid executable code. Nevertheless, some media for other platforms erroneously contain the signature, anyway, rendering this check not 100% reliable in practice.

If the BIOS or MBR code does not detect a valid boot sector and therefore cannot pass execution to the boot sector code, it will try the next boot device in the row. If they all fail it will typically display an error message and invoke INT 18h. This will either start up optional resident software in ROM (ROM BASIC), reboot the system via INT 19h after user confirmation or cause the system to halt the bootstrapping process until the next power-up.

Systems not following the above described design are:
- CD-ROMs usually have their own structure of boot sectors; for IBM PC compatible systems this is subject to El Torito specifications.
- C128 or C64 software on Commodore DOS disks where data on Track 1, Sector 0 began with a magic number corresponding to string "CBM".[2]
- IBM mainframe computers place a small amount of boot code in the first and second track of the first cylinder of the disk, and the root directory, called the Volume Table of Contents, is also located at the fixed location of the third track of the first cylinder of the disk.
- Other (non IBM-compatible) PC systems may have different boot sector formats on their disk devices.

On IBM PC compatible machines, the BIOS is ignorant of the distinction between VBRs and MBRs, and of partitioning. The firmware simply loads and runs the first sector of the storage device. If the device is a floppy or USB flash drive, that will be a VBR. If the device is a hard disk, that will be an MBR. It is the code in the MBR which generally understands disk partitioning, and in turn, is responsible for loading and running the VBR of whichever primary partition is set to boot (the active partition). The VBR then loads a second-stage bootloader from another location on the disk.

Furthermore, whatever is stored in the first sector of a floppy diskette, USB device, hard disk or any other bootable storage device, is not required to immediately load any bootstrap code for an OS, if ever. The BIOS merely passes control to whatever exists there, as long as the sector meets the very simple qualification of having *the boot record signature of `0x55, 0xAA` in its last two bytes*. This is why it is easy to replace the usual bootstrap code found in an MBR with more complex loaders, even large multi-functional boot managers (programs stored elsewhere on the device which can run without an operating system), allowing users a number of choices in what occurs next. With this kind of freedom, abuse often occurs in the form of boot sector viruses.

## Bootloader
