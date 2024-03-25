# UEFI

https://en.wikipedia.org/wiki/UEFI

**UEFI** (Unified Extensible Firmware Interface) is a specification that defines the architecture of the platform firmware used for booting the computer hardware and its interface for interaction with the operating system.

UEFI replaces the BIOS which was present in the *boot ROM* of all personal computers that are IBM PC compatible, although it can provide backwards compatibility with the BIOS through *CSM booting*.

Motivations for developing UEFI were the limitations of BIOS such as
- 16-bit real mode
- 1 MB addressable memory space
- assembly language programming
- PC AT hardware

## Contents

- 1. History
- 2. Advantages
- 3. Compatibility
  - 3.1. Processor compatibility
  - 3.2. Disk device compatibility
    - 3.2.1. Linux
    - 3.2.2. Microsoft Windows
- 4. Features
  - 4.1. Services
  - 4.2. Applications
  - 4.3. Protocols
  - 4.4. Device drivers
  - 4.5. Graphics features
  - 4.6. EFI system partition
  - 4.7. Booting
    - 4.7.1. UEFI booting
    - 4.7.2. CSM booting
    - 4.7.3. Network booting
    - 4.7.4. Secure Boot
  - 4.8. UEFI shell
    - 4.8.1. Commands
  - 4.9. Extensions
  - 4.10. UEFI Capsule
  - 4.11. Hardware
- 5. Classes
- 6. Boot stages
  - 6.1. SEC - Security Phase
  - 6.2. PEI - Pre-EFI Initialization
  - 6.3. DXE - Driver Execution Environment
  - 6.4. BDS - Boot Device Select
  - 6.5. TSL - Transient System Load
  - 6.6. RT - Runtime
- 7. Usage
  - 7.1. Implementations
  - 7.2. Platforms
  - 7.3. Operating systems
  - 7.4. With virtualization
- 8. Applications development
- 9. Criticism
  - 9.1. Secure Boot
  - 9.2. Firmware problems

## History

In the mid-1990s, Intel found these limitations too restrictive for the larger server platforms Itanium CPU was targeting. The effort to address these concerns began in 1998 and was initially called *Intel Boot Initiative*, but was later renamed to *Extensible Firmware Interface* (EFI). In 2005, Intel ceased the development of the EFI specification at version 1.10 (the final release of EFI), and contributed it to the *Unified EFI Forum*, which has been developing the specification since as the *Unified Extensible Firmware Interface* (UEFI). The first open source UEFI implementation, *Tiano*, was released by Intel in 2004. UEFI is independent of platform and programming language, but C is used for the reference implementation *TianoCore EDKII*. Contrary to its predecessor, UEFI is an open standard maintained by an industry consortium.

Version 2.0 of the UEFI specification was released in 2006, adding cryptography and security.

Version 2.1 of the UEFI specification was released in 2007, adding network authentication and the user interface architecture (Human Interface Infrastructure).

In 2018, Arm announced Arm ServerReady, a compliance certification program for landing the generic off-the-shelf operating systems and hypervisors on Arm-based servers. The program requires the system firmware to comply with Server Base Boot Requirements (SBBR). SBBR requires UEFI, ACPI and SMBIOS compliance. In October 2020, Arm announced the extension of the program to the edge and IoT market. The new program name is Arm SystemReady. Arm SystemReady defined the Base Boot Requirements (BBR) specification that currently provides three recipes, two of which are related to UEFI:
1. SBBR: which requires UEFI, ACPI and SMBIOS compliance suitable for enterprise level operating environments such as Windows, Red Hat Enterprise Linux, and VMware ESXi; and
2. EBBR: which requires compliance to a set of UEFI interfaces as defined in the Embedded Base Boot Requirements (EBBR) suitable for embedded environments such as Yocto. Many Linux and BSD distros can support both recipes.

In December 2018, Microsoft announced *Project Mu*, a fork of *TianoCore EDK2* used in Microsoft Surface and Hyper-V products. The project promotes the idea of Firmware as a Service.

The latest UEFI specification, version 2.10, was published in August 2022.
