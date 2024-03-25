# OS :: GLOSSARY

## Big Real Mode
Big Real Mode is a modified version of the processor's real mode with the segment limits changed from 1MB to 4GB. Big real mode allows the BIOS or an Option ROM to read and write extended memory without the overhead of protected mode. The BIOS puts the processor in big real mode during POST to allow simplified access to extended memory. The processor will be in big real mode while the PMM Services are callable.

## BIOS
The Basic Input Output System is the system software embedded on a chip located on the computer's main board. The BIOS executes POST to test and initialize the system components and then boots the operating system. The BIOS also handles the low-level input/output to the various peripheral devices connected to the computer at run time. Additionally, most BIOSes have a Setup program that allows the user to configure the system.

The BIOS (Basic I/O System) is a firmware that resides in a reprogrammable chip on the motherboard, and it is responsible for performing the testing and initialization of the system's hardware during the booting process. The BIOS the boot device from a preconfigured list of booting devices and loads the boot sector form the preferred device, thereby yiedling control to the bootloader which then loads the OS.

The BIOS also provides some rudimentary functionality by acting as an interface between the hardware and CPU. However, to exploit this functionality, we would have to work in real 16-bit mode (which is where the BIOS leaves us). This limiting environment is not normally used (since the boot process continues on, loading the OS), except by the OS designers and bootloader writers. BIOS can thus be thought of as a rudimentary OS that provides many system calls/fucntions (called interrputs).

## Byte-addressable
In computer architecture, byte addressing supports accessing individual bytes (of memory). Byte-addressable computers are sometimes called byte machines, in contrast to word-addressable machines that access data by word (a byte is 8 bits and a word varies from 16, 32, 64 bits).

## Control Registers
The 5 control registers (`CR0` through `CR5`) determine the operating mode of the processor and the characteristics of the currently executing task (see the section "Control Registers" in Chapter 2 of the Intel Architecture Software Developer's Manual, Volume 3).

## Extended Memory
The Extended Memory area starts at memory address 1MB and ends at memory address 4GB. Extended memory is normally only accessible when the processor is in protected mode. One exception to this is big real mode.

## Flat binary file
A binary file is called flat when it contains only the raw executable code (possibly with self-contained data). It has no header as opposed to executable files that run within the OS, which adhere to some file format convention and contain a header that identifies them, so the OS can handle them correctly.

## Gate A20
Gate A20 controls 1MB memory wrap-around. When Gate A20 is enabled, it forces memory accesses to wrap around and fall within the 0-1MB area by forcing address line 20 to be zero. This has the effect of not allowing access to extended memory. When Gate A20 is disabled, memory accesses beyond 1MB do not wrap around, thus allowing access to all of extended memory.

## Option ROM
An Option ROM (aka expansion ROM) is the firmware located in a ROM chip on a device. Its physical address is in system memory between addresses `C0000h` and `DFFFFh`. The BIOS may copy the component to shadow memory during POST. An Option ROM is characterized by the first two locations containing a two-byte signature of `55h AAh`. Option ROM is responsible for initializing its associated device, allowing it to be available to the rest of the system for booting, to extend BIOS interrupts routines, or during run time.

## Paragraph
A Paragraph is 16 contiguous bytes of memory. Paragraph alignment of data means that the address of the data is of the form xxxx0h.

## PMM
The POST Memory Manager is a software component of the BIOS that provides for the allocation of memory blocks during system POST.

## POST
The Power-On Self-Test (POST) is the part of the BIOS that takes control immediately after the computer is turned on. POST initializes the computer hardware in preparation for loading the operating system.

## Run-time
Execution of run-time software takes place after the operating system has loaded. BIOS run-time services are available at POST and remain callable after the operating system has booted. Application programs and operating systems call BIOS run-time services for hardware-related functions. The PMM Services are not callable during run-time, and buffers allocated by the PMM during POST are not available at runtime.

## Virtual 8086 mode
In the 80386 microprocessor and later, virtual 8086 mode (aka virtual real mode, V86-mode, VM86) allows the execution of real mode applications that are incapable of running directly in protected mode while the CPU is running a protected mode OS.

## Word-addressable
In computer architecture, word addressing means that memory addresses uniquely identify words of memory. This is in contrast to byte addressing, where addresses uniquely identify bytes.
