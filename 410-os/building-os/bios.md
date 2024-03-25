# BIOS

In building an OS, we have to first get acquainted with the CPU architecture and the BIOS.

BIOS (Basic I/O System), as its name suggest, provides the basic input/outut functionality.

BIOS is firmware (burned into a chip on the motherboard) that provides runtime services for operating systems and programs and performs hardware initialization during the booting process (POST or Power on Self-Test).

The system BIOS is the lowest-level software in the computer. It acts as an interface between the hardware (especially the chipsets and CPU) and OS.

The BIOS provides access to the system hardware and enables the creation of the higher-level operating systems (DOS, Windows 95, etc.).

The BIOS is also responsible for allowing you to control your computer's hardware settings, for booting up the machine when you turn on the power (or after reset), and various other system functions (booting the system, providing the BIOS setup program that allows you to change BIOS parameters).

Practically, when a computer boots up, the BIOS is automatically executed (copied into memory and executed). The BIOS performs ome rudematary test to check that the hardware is ok (POST or Power on Self-Test), and than consults the pre-configured list of boot devices ordered by priority. Initially, the list of boot devices in configured by user by entering the BIOS setup (usually F8 when the computer starts). The boot devices are listed by priority with HDDs and SDDs listed first, followed by other devices such as flash drives, floppy disk or even network (PXE boot). 

## Origins

BIOS was introduced in 1981 as a proprietary product of IBM, but later became the industry-wide standard. In 1996, the BIOS Boot Specification was written by Compaq, Phoenix Technologies and Intel. 

UEFI has now practically replaced the BIOS which was present in the boot ROM of all personal computers that are IBM PC compatible, although UEFI also provides backwards compatibility with the BIOS with Compatibility Support Module (CSM) that provides legacy BIOS compatibility. In such a scenario, booting is performed in the same way as on legacy BIOS-based systems, by ignoring the partition table and relying on the content of a *boot sector*. BIOS-style booting from MBR-partitioned disks is commonly called BIOS-MBR, regardless of it being performed on UEFI or legacy BIOS-based systems. Furthermore, booting legacy BIOS-based systems from GPT disks is also possible, and such a boot scheme is commonly called BIOS-GPT.

## BIOS operations

- POST
- BIOS setup program
  - configuring system boot sequence
- booting "the OS"
- runtime services for OS
- hardware initialization during the booting process

All that a CPU - or any hardware for that matter - knows to do is follow the instructions. In order for a computer to function, there must be software, which is a collection of instructions (possibly along with user data).

Regular programs that run on the PC are stored on the secondary storage devices (HDD, SDD), but it order to exectute them, the OS must copy a program into memory (a program then becomes a process). Every program has a section where the instructions are stored (.text segment) and it is this section that gets executed.

However, when the computer boots up, there is no OS, but it is the BIOS that provides the software, i.e. instructions for CPU to execute. To make sure that it is always available to the processor, the software that BIOS provides is burned (flashed) into the chip on the motherboard. This software can be changed, and it often is, especially if the motherboard is recently released, so the manufacturer often provides updates for it (e.g. to fix a bug, to support some newer CPUs, etc.). Software that is flashed onto a chip is called the *firmware*. So, the term 'BIOS' is sometimes used to refer to the chip, but to the firmware as well.

The chip where the BIOS is stored is reprogrammable (EEPROM chips usually have a distinctive see-through window so the UV light can be used to erase them), so the BIOS firmware can be updated.


## Refs
https://en.wikipedia.org/wiki/BIOS
https://en.wikipedia.org/wiki/Boot_ROM
https://en.wikipedia.org/wiki/UEFI
https://en.wikipedia.org/wiki/UEFI#CSM_booting
https://en.wikipedia.org/wiki/Boot_sector
https://en.wikipedia.org/wiki/Option_ROM
https://en.wikipedia.org/wiki/Firmware
https://en.wikipedia.org/wiki/Device_driver
https://en.wikipedia.org/wiki/Power-on_self-test


https://web.archive.org/web/20141221071646/http://www.pcguide.com/ref/mbsys/bios/index.htm
