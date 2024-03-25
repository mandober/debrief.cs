# CPU modes

General CPU modes
- unrestricted mode (kernel mode, master mode, supervisor mode, privileged mode)
- restricted mode (user mode, slave mode, problem state)
  - multiple user modes w/ hierarchy of privileges
  - ring-based security

CPU modes
- real mode
  - big real mode
  - virtual real mode
- protected mode

Processor modes refer to the various ways that the processor creates an operating environment for itself. Specifically, the processor mode controls how the processor sees and manages the system memory and the tasks that use it.

There are 3 main CPU modes developed along with the evolution of PC, starting with its beginnings as the Intel 8088 chip.

## Real Mode

The original IBM PC could only address 1 MB of system memory, and the original versions of DOS created to work on it were designed with this in mind. DOS is by its nature a single-tasking operating system, so it can only handle one program at a time.

Many decisions made in these early days have survived even today for compatibility's sake. Modern CPUs start in the *real mode*, making the CPU compatible with the original Intel 8088 chip.

When powered on, the CPU runs in real mode, acting like an "8088 on steroids", meaning that except for speed, it is subject to the same restrictions of the original 8088, such as the limit to 1 MB of addressable memory, along with the slow memory access that doesn't even take advantage of the 32-bit processing of the yesteryear's CPUs, let alone 64-bit processing of modern CPUs.

The real mode is used by DOS and DOS utils. There are relatively few DOS programs that use just the standard 640K that DOS makes available. Special programs (DOS extenders) "extend" the memory allowing DOS to address more than 1 MB of memory in 32-bit access.

*DOS protected mode interface (DPMI)* is a protocol that describes how to make DOS work in protected mode.

The first 64 KB of extended memory, called the *high memory area (HMA)*, is actually accessible even in real mode, despite the fact that this was supposed to be forbidden, due to a bug in the original IBM AT implementation.


## Protected Mode

Starting with the 80286 chip in the IBM AT, a new processor mode was introduced called *protected mode*. This is a much more powerful mode of operation than real mode, and it was used in all multitasking OSes. 

The advantages of protected mode compared to real mode:
- full access to all of the system's memory. There is no 1 MB limit in protected mode
- ability to multitask, meaning having the OS manage the execution of multiple programs simultaneously
- support for virtual memory, allowing the use of disks as additional vmemory
- faster (32-bit) access to memory, and faster 32-bit drivers for IO transfers

Each running program has its own memory space and is protected from conflicting with other running programs. If a program tries to use a memory address that it isn't allowed to, a *protection fault* is generated.

Although introduced with the 286 CPU, the most popular OS back in the early 80s was stil DOS. The use of protected mode didn't become popular until the rise of Windows later. All major OSs today use protected mode, including Windows, Mac and Linux. Even DOS, which normally runs in real mode, can access protected mode using DPMI (DOS protected mode interface), often employed by DOS games to break the 640 KB conventional memory barrier.

All processors from the 286 onward can use the protected mode. 386 and later CPUs can switch on the fly from real to protected mode and vice-versa. The 286 can only switch from real to protected mode once (switching back requires a reboot). Protected mode is also sometimes called *386 Enhanced Mode*, since it became mainstream with that family of processors.

## Virtual Real Mode

The third mode of processor operation is actually an additional capability or an enhancement of the protected mode.

Protected mode is normally used to run graphical multitasking operating systems such as the various flavors of Windows. However, due to the desire to run old DOS programs under Windows (which use real mode, not protected mode) the *virtual real mode* was created.

In essence, it emulates real mode from within protected mode. A protected mode OS such as Windows can create multiple *virtual real mode machines*, each of which makes the program running them think it is the only program running on the machine. Each virtual machine gets its own 1 MB address space, an image of the real hardware BIOS routines, etc.

Virtual real mode is used when the command prompt is opened in Windows 95. When a DOS app is started, Windows 95 creates a virtual DOS machine for it to run under. Virtual real mode was introduced starting with the 386 family of CPUs.

## Big Real Mode

*Big real mode* is a modified version of the processor's real mode with the segment limits changed from 1MB to 4GB.

Big real mode allows the BIOS or an Option ROM to read and write extended memory without the overhead of protected mode.

The BIOS puts the processor in big real mode during POST to allow simplified access to extended memory.

The CPU is in the big real mode while the PMM Services are callable. POST Memory Manager (PMM) is a software component of the BIOS that provides for the allocation of memory blocks during system POST.


## Refs

* Processor Modes
https://flint.cs.yale.edu/feng/cos/resources/BIOS/procModes.htm
