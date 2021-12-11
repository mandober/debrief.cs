# BIOS

Basic Input/Output System (BIOS) is a firmware that performs hardware initialization during the boot-up process, optionally providing runtime services to the OS.

The BIOS firmware is the first piece of software that runs when the computer is turned on.

The name originates from the Basic Input/Output System used in the CP/M operating system in 1975.

The BIOS originally proprietary to the IBM PC has been reverse engineered by companies looking to create compatible systems. The interface of that original system serves as a de facto standard.

The BIOS in a modern PC initializes and tests the system hardware components, and loads a *boot loader* from a memory device, which then takes control and initializes the OS.

In the era of DOS, the BIOS provided a hardware abstraction layer (HAL) for keyboard, display and other I/O devices, becoming the standard interface to the hardware for OS and apps. However, this role of BIOS has diminished since modern OSs can access the hardware directly.

Most BIOS implementations are specifically designed to work with a particular motherboard model, by interfacing with various devices that make up the complementary system chipset.

Originally, BIOS firmware was stored in a ROM chip on the PC motherboard. In modern computer systems, the BIOS contents are stored on flash memory so it can be rewritten without removing the chip from the motherboard.

This allows easy, end-user updates to the BIOS firmware so new features can be added or bugs can be fixed, but it also creates a possibility for the computer to become infected with BIOS rootkits.

Furthermore, a BIOS upgrade that fails can brick the motherboard permanently, unless the system includes some form of backup for this case.

*Unified Extensible Firmware Interface (UEFI)* is a successor to the BIOS, aiming to address its technical shortcomings.
