# BIOS interrupt call

https://en.wikipedia.org/wiki/BIOS_interrupt_call

BIOS implementations provide interrupts that can be invoked by OSs and programs to use the facilities of the firmware on IBM PC compatible computers (not all computers with BIOS are IBM PC compatible).

Traditionally, BIOS calls are mainly used by DOS programs and some other software such as boot loaders (especially simple DOS utilities and games that boot directly and run without an OS).

BIOS runs in the real address mode of the x86 CPU, so programs that call BIOS either must also run in real mode or must switch to real mode before calling BIOS and then switch back again.

For this reason, modern OSs that use the CPU in Protected mode or Long mode generally do not use the BIOS interrupt calls to support system functions, although they use the BIOS interrupt calls to probe and initialize hardware during booting.

Real mode has the 1MB memory limitation, so modern boot loaders (e.g. GRUB2, Windows Boot Manager) use the *unreal mode* or protected mode (and execute the BIOS interrupt calls in the *Virtual 8086 mode*, but only for OS booting) to access up to 4GB memory.

In all computers, software instructions control the physical hardware (screen, disk, keyboard, etc.) from the moment the power is switched on. In a PC, the BIOS, pre-loaded in ROM on the motherboard, takes control immediately after the CPU is reset, including during power-up, when a hardware reset button is pressed, or when a critical software failure (a triple fault) causes the mainboard circuitry to automatically trigger a hardware reset. The BIOS tests the hardware and initializes its state; finds, loads, and runs the boot program (usually, an OS boot loader, and historical ROM BASIC); and provides basic hardware control to the software running on the machine, which is usually an operating system (with application programs) but may be a directly booting single software application.

For IBM's part, they provided all the information needed to use their BIOS fully or to directly utilize the hardware and avoid BIOS completely, when programming the early IBM PC models (prior to the PS/2). From the beginning, programmers had the choice of using BIOS or not, on a per-hardware-peripheral basis. IBM did strongly encourage the authorship of "well-behaved" programs that accessed hardware only through BIOS INT calls (and DOS service calls), to support compatibility of software with current and future PC models having dissimilar peripheral hardware, but IBM understood that for some software developers and hardware customers, a capability for user software to directly control the hardware was a requirement. In part, this was because a significant subset of all the hardware features and functions was not exposed by the BIOS services. For two examples (among many), the MDA and CGA adapters are capable of hardware scrolling, and the PC serial adapter is capable of interrupt-driven data transfer, but the IBM BIOS supports neither of these useful technical features.

Today, the BIOS in a new PC still supports most, if not all, of the BIOS interrupt function calls defined by IBM for the IBM AT (introduced in 1984), along with many more newer ones, plus extensions to some of the originals (e.g. expanded parameter ranges) promulgated by various other organizations and collaborative industry groups. This, combined with a similar degree of hardware compatibility, means that most programs written for an IBM AT can still run correctly on a new PC today, assuming that the faster speed of execution is acceptable (which it typically is for all but games that use CPU-based timing). Despite the considerable limitations of the services accessed through the BIOS interrupts, they have proven extremely useful and durable to technological change.

## Contents
- Purpose of BIOS calls
- Calling BIOS: BIOS software interrupts
- Invoking an interrupt
- Interrupt table
- INT 18h: execute BASIC
- BIOS hooks
- DOS
- Bypassing BIOS
