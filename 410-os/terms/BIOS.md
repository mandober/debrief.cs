# BIOS

https://en.wikipedia.org/wiki/BIOS

BIOS (Basic Input/Output System) is firmware used to provide runtime services for operating systems and programs and to perform hardware initialization during the booting process (power-on startup).

The BIOS is stored in the reprogrammable chip on the motherboard.

The name originates from the Basic Input/Output System used in the CP/M operating system in 1975.

The BIOS was originally a proprietary product of the IBM introduced in 1981. It was soon reversed-engineered by Phoenix Technologies that seeked to create IBM-compatible systems. The interface of that original system became a de facto industry-wide standard. In 1996, the BIOS Boot Specification was written by Compaq, Phoenix Technologies and Intel.


The BIOS in modern PCs initializes and tests the system hardware components (POST or Power-on self-test), and loads a *boot loader* from a storage device which then initializes a kernel.

In the era of DOS, the BIOS provided BIOS interrupt calls for the keyboard, display, storage, and other I/O devices that standardized an interface to application programs and the operating system. Modern operating systems don't rely on BIOS (and the interrupt calls).

Most BIOS implementations are specifically designed to work with a particular motherboard model, by interfacing with various ports and devices, especially with the system chipset.

Originally, BIOS firmware was stored in a ROM chip on the motherboard. Later, the BIOS contents are stored on flash memory so it can be rewritten without removing the chip from the motherboard. This allows easy, end-user updates to the BIOS firmware so new features can be added or bugs can be fixed, but it also creates a possibility for the computer to become infected with BIOS rootkits. Furthermore, a BIOS upgrade that fails could brick the motherboard. 

The last version of Microsoft Windows to officially support running on PCs which use legacy BIOS firmware is Windows 10 as Windows 11 requires a UEFI-compliant system. Unified Extensible Firmware Interface (UEFI) is a successor to the legacy PC BIOS, aiming to address its technical limitations.

## Contents

- 1. History
- 2. BIOS setup utility
- 3. BIOS Operation
  - System startup
  - Boot process
  - Boot priority
  - Boot failure
- 4. Boot environment
- 5. Extensions (option ROMs)
  - Boot procedure
  - Initialization
  - Physical placement
- 5. Operating system services
  - Processor microcode updates
  - Identification
  - Overclocking
  - Modern use
- 6. Configuration
  - Setup utility
  - Hardware monitoring
  - Reprogramming
- 7. Hardware
- 8. Vendors and products
  - Open-source BIOS firmware
- 9. Security
- 10. Alternatives and successors

## 1. History

### CP/M BIOS

The term BIOS (Basic Input/Output System) was created by Gary Kildall and first appeared in the CP/M operating system in 1975, describing the machine-specific part of CP/M loaded during boot time that interfaces directly with the hardware (a CP/M machine usually only had a simple boot loader in its ROM).

### DOS BIOS

Versions of MS-DOS, PC DOS or DR-DOS contain the file (variously called `IO.SYS`, `IBMBIO.COM`, `IBMBIO.SYS`, `DRBIOS.SYS`), known as the "DOS BIOS" (aka "DOS I/O System") that contained the lower-level hardware-specific part of the OS. Together with the underlying hardware-specific, but OS-independent, "System BIOS" residing in ROM, this represented the analogue of the CP/M BIOS.

### IBM BIOS

The BIOS was originally a proprietary product of IBM, but it was reverse engineered by companies like Phoenix Technologies that sought to create compatible computer systems.

With the introduction of PS/2 machines, IBM divided the *System BIOS* into the real-mode and protected-mode portions.
* The real-mode portion, named *Compatibility BIOS (CBIOS)*, was meant to provide backward compatibility with existing OSs (such as the DOS).
* The protected-mode portion, named *Advanced BIOS (ABIOS)*, provided new interfaces specifically suited for multitasking OSs (such as the OS/2).

## 2. BIOS setup utility

The BIOS of the original IBM PC and XT had no interactive user interface. Errors that signaled problems during POST were displayed on the screen as codes or messages or were emitted as sounds.

BIOS options on the IBM PC and XT were set by switches and jumpers on the main board and on expansion cards.

Starting around the mid-1990s, it became typical for the BIOS ROM to include a BIOS setup utility that could be accessed by hitting a designated key sequence (e.g. DEL) immediately after the power-up. Rather than dealing with DIP switches, the BIOS setup utility allowed users to configure the BIOS options through an interactive menu using keyboard.

IBM-compatibles held the BIOS configuration in a ROM chip powered by a battery. However, the BIOS setup utility wasn't in this ROM, but had to be loaded from a bootable floopy disk that was supplied with the computer (loosing the floppy meant not being able to change the BIOS settings).

Modern motherboards hold the BIOS in a chip, which also has a flash ROM (CMOS) that stores the BIOS settings. The BIOS is powered by its own (pill-shaped) battery. Remounting the battery clears the user-configured BIOS settings. In order to update the BIOS firware, the chip is flashed in a special procedure, although nowadays many BIOSes allow updates from the comfort of the OS through the dedicated GUI utility.

The BIOS setup utility has not essentially changed in nature from the ROM-resident BIOS setup utilities of the late 1990s. The BIOS setup utility was for a long time TUI-based, consisting of interactive menus presenting options that could be changed by keyboard. Toward the end of the BIOS era, when the transition to the BIOS's successor, UEFI, had already begun, graphical user intefaces were introduced that could be controlled by mouse, the concept which was inherited by UEFI.

## 3. BIOS Operation

### System startup and POST

Early Intel CPUs start by executing instructions at physical memory address `0x000ffff0`. Later CPUs start by running the BIOS from the system ROM.

If a computer has just been powered up (aka cold boot) the full POST runs. But if the computer was restarted using the `Ctrl+Alt+Del` keyboard sequence, a special flag was stored in a non-volatile BIOS memory (CMOS) which indicated to the BIOS that the lengthy POST and memory detection process may be skipped.

The POST identifies, tests and initializes system devices such as the CPU, RAM, system chipset, motherboard ports, video card, and also integrated and other peripherals like disk drives (HDD, SDD, optical, floppy), keyboard, mouse, etc.

### Boot process

Today, there are two boot procedures, the legacy process controlled by the BIOS, and the new procedure managed by UEFI.

>Legacy boot process: BIOS → MBR → bootloader → kernel → OS

### BIOS and INT 19h

>Power-up → BIOS → POST → option ROM scan → INT 19h

After POST-ing, the BIOS calls the interrupt `INT 19h`, attempting to hand-off the booting process to a configured bootloader. It proceeds by first consulting the user-configured list of boot devices. The BIOS picks the first boot device (normally a SDD/HDD) and tries to load the boot sector (which is the first sector) from it. Failing to read the sector, the BIOS tries the next device from the boot list. If all boot devices fail, the CPU usually halts and the computer restarts or shuts down.

If the boot sector can be read, most BIOSes will check for the *boot sector signature* before deeming the device legit. The boot sector signature is a magic number consisting of the bytes `0x55` and `0xAA` as the last two bytes of the boot sector (which has 512 bytes total).

### Boot sector signature

More precisely,
at the offset `+ 0x1fe` of the boot sector the bytes `0x55 0xaa` must be found;
i.e. `0x55` at the offset `+0x1FE` and 
     `0xaa` at the offset `+0x1FF`.
i.e.
  510ᵗʰ byte must be 0x55
  511ˢᵗ byte must be 0xaa
i.e.
  0101:0101 0x55    from bit 4080 to 4087
  1010:1010 0xaa    from bit 4088 to 4095 (last byte, 4095 is the last bit)
i.e.
  0000:0000 0000:0000 0101:0101 1010:1010 0x00 0x00 0x55 0xaa


```
512 bytes = 4096 bits = 64² bits
4096 = 2048×2 = 1024×4 = 512×8 = 256×16 = 128×32 = 64×64

boot sector: 4096 bits, from 0 to 4095

0    4    8    c     10   14   18   1c
0000:0000 0000:0000  0000:0000 0000:0000
20   24   28   2c    30   34   38   3c
0000:0000 0000:0000  0000:0000 0000:0000
40   44   48   4c    50   54   58   5c
0000:0000 0000:0000  0000:0000 0000:0000
60   64   68   6c    70   74   78   7c
0000:0000 0000:0000  0000:0000 0000:0000
...
1ea       1eb        1ec       1ed
0000:0000 0000:0000  0101:0101 1010:1010
1ee       1ef        1fa       1fb
0000:0000 0000:0000  0101:0101 1010:1010
1fc       1fd        1fe       1ff
0000:0000 0000:0000  0101:0101 1010:1010
                     ↑         ↑       ↑
                     4080      4088    4095 (lsb)


----boot sector----------------------------------------------------
@ 0000 (0 dec)   : 0x00 = 0000 0000 = (0 dec)    0ᵗʰ byte
@ 0001 (1 dec)   : 0x00 = 0000 0000 = (0 dec)    1ˢᵗ byte
...
@ 01fe (510 dec) : 0x55 = 0101 0101 = (85 dec)   510ᵗʰ byte
@ 01ff (511 dec) : 0xaa = 1010 1010 = (170 dec)  511ˢᵗ byte
-------------------------------------------------------------------
@ 0200 (512 dec)
@ 0x0fff (4095 dec)
@ 0x1000 (4096 dec)


1   |  0 | 0000:0000 0000:0000 0000:0000 0000:0000 | 0x00 0x00 0x00 0x00
2   |  4 | 0000:0000 0000:0000 0000:0000 0000:0000 | 0x00 0x00 0x00 0x00
3   |  8 | 0000:0000 0000:0000 0000:0000 0000:0000 | 0x00 0x00 0x00 0x00
4   | 12 | 0000:0000 0000:0000 0000:0000 0000:0000 | 0x00 0x00 0x00 0x00
5   | 16 | 0000:0000 0000:0000 0000:0000 0000:0000 | 0x00 0x00 0x00 0x00
6   | 20 | 0000:0000 0000:0000 0000:0000 0000:0000 | 0x00 0x00 0x00 0x00
7   | 24 | 0000:0000 0000:0000 0000:0000 0000:0000 | 0x00 0x00 0x00 0x00
8   | 28 | 0000:0000 0000:0000 0000:0000 0000:0000 | 0x00 0x00 0x00 0x00
9   | 32 | 0000:0000 0000:0000 0000:0000 0000:0000 | 0x00 0x00 0x00 0x00
10  | 36 | 0000:0000 0000:0000 0000:0000 0000:0000 | 0x00 0x00 0x00 0x00
...
128 |508 | 0000:0000 0000:0000 0101:0101 1010:1010 | 0x00 0x00 0x55 0xaa
```

128×32 = 128 rows with 32 bits (4 bytes) in each

### BIOS and INT 19h cont.

Since little-endian representation must be assumed in the context of IBM PC compatible machines, this can be written as 16-bit word `0xAA55` in programs for x86 processors (note the swapped order), whereas it would be written as `0x55AA` in big-endian representation.

Since this has been mixed up numerous times in books and even in original Microsoft reference documents, this article uses the offset-based byte-wise on-disk representation to avoid any possible misinterpretation.

>When a bootable device is found, the BIOS transfers control to the loaded sector (which presumingly contains a bootloader).

The BIOS does not interpret the contents of the boot sector other than to check the boot sector signature.

Interpretation of data structures like *partition tables* and *BIOS Parameter Blocks* is done by the boot program located in the boot sector itself (or by other programs loaded through the boot process).

A non-disk device such as a network adapter attempts booting by a procedure that is defined by its option ROM or the equivalent integrated into the motherboard BIOS ROM. As such, option ROMs may also influence or supplant the boot process defined by the motherboard BIOS ROM.

With the El Torito optical media boot standard, the optical drive actually emulates a 3.5" high-density floppy disk to the BIOS for boot purposes. Reading the "first sector" of a CD-ROM or DVD-ROM is not a simply defined operation like it is on a floppy disk or a hard disk. Furthermore, the complexity of the medium makes it difficult to write a useful boot program in one sector. The bootable virtual floppy disk can contain software that provides access to the optical medium in its native format.

### Boot priority

The user can select the boot priority implemented by the BIOS. For example, most computers have a hard disk that is bootable, but sometimes there is a removable-media drive that has higher boot priority, so the user can cause a removable disk to be booted.

In most modern BIOSes, the boot priority order can be configured by the user. In older BIOSes, limited boot priority options are selectable; in the earliest BIOSes, a fixed priority scheme was implemented, with floppy disk drives first, fixed disks (i.e., hard disks) second, and typically no other boot devices supported, subject to modification of these rules by installed option ROMs. The BIOS in an early PC also usually would only boot from the first floppy disk drive or the first hard disk drive, even if there were two drives installed.

### Boot failure

On the original IBM PC and XT, if no bootable disk was found, ROM BASIC was started by calling INT 18h. Since few programs used BASIC in ROM, clone PC makers left it out; then a computer that failed to boot from a disk would display "No ROM BASIC" and halt (in response to INT 18h).

Later computers would display a message like "No bootable disk found"; some would prompt for a disk to be inserted and a key to be pressed to retry the boot process. A modern BIOS may display nothing or may automatically enter the BIOS configuration utility when the boot process fails.

## 4. Boot environment

The environment for the boot program is very simple: the CPU is in *real mode* and the general-purpose and segment registers are undefined, except SS, SP, CS, and DL.

`CS:IP` always points to physical address `0x07C00`. What values CS and IP actually have is not well defined: most BIOSes use a `CS:IP` of `0x0000:0x7C00` while others use 0x07C0:0x0000.

Because boot programs are always loaded at this fixed address (`0x07C00`), there is no need for a boot program to be relocatable. `DL` register may contain the drive number, as used with `INT 13h`, of the boot device.

`SS:SP` points to a valid stack that is presumably large enough to support hardware interrupts, but otherwise SS and SP are undefined. 

A stack must be already set up in order for interrupts to be serviced, and interrupts must be enabled in order for the system timer-tick interrupt, which BIOS always uses at least to maintain the time-of-day count and which it initializes during POST, to be active and for the keyboard to work. The keyboard works even if the BIOS keyboard service is not called; keystrokes are received and placed in the 15-character type-ahead buffer maintained by BIOS.

*The boot program must set up its own stack*, because the size of the stack set up by BIOS is unknown and its location is likewise variable; although the boot program can investigate the default stack by examining SS:SP, it is easier and shorter to just unconditionally set up a new stack.

* At boot time, all BIOS services are available, and the memory below address `0x00400` contains the interrupt vector table.

* BIOS POST has initialized the system timers, interrupt controller(s), DMA controller(s), and other motherboard/chipset hardware as necessary to bring all BIOS services to ready status.

* DRAM refresh for all system DRAM in conventional memory and extended memory, but not necessarily expanded memory, has been set up and is running.

* The interrupt vectors corresponding to the BIOS interrupts have been set to point at the appropriate entry points in the BIOS, hardware interrupt vectors for devices initialized by the BIOS have been set to point to the BIOS-provided ISRs, and some other interrupts, including ones that BIOS generates for programs to hook, have been set to a default dummy ISR that immediately returns.

* The BIOS maintains a reserved block of system RAM at addresses `0x00400-0x004FF` with various parameters initialized during the POST. All memory at and above address `0x00500` can be used by the boot program; it may even overwrite itself.

```
-------------- 0x07C00 pointed to by CS:IP
--------------
--------------
-------------- 0x500 and above can be used by boot program (up to ?)
-------------- 0x4ff BIOS reserved block w/ POST params
-------------- 0x400 BIOS reserved block w/ POST params
-------------- 0x3ff BIOS interrupt vectors ↓
-------------- 0x000 BIOS interrupt vectors ↑
```



## Refs

- Memory Layout and Memory Map
  https://flint.cs.yale.edu/feng/cos/resources/BIOS/mem.htm

- BIOS Data ACPI Table (BDAT) - Describes interfaces for BIOS Data ACPI Table
  https://uefi.org/sites/default/files/resources/BDAT%20Specification%20v4.0%20Draft5_0.pdf

- Advanced Configuration and Power Interface (ACPI) Specification
  http://www.uefi.org/sites/default/files/resources/ACPI_6.0.pdf

- JEDEC Specifications
  http://www.jedec.org/standards-documents
