# SMBIOS

https://en.wikipedia.org/wiki/System_Management_BIOS

**System Management BIOS** (SMBIOS) specification defines data structures and access methods to read management information produced by the BIOS. This eliminates the need for the OS to probe hardware directly to discover what devices are present in the computer.

Since its release in 1995, the widely implemented SMBIOS standard has simplified the management of more than two billion client and server systems.

SMBIOS was originally known as Desktop Management BIOS (DMIBIOS), since it interacted with the Desktop Management Interface (DMI).

For OS-present, OS-absent, and pre-OS environments, SMBIOS offers motherboard and system vendors a standard format to present management information about their products. By extending the system firmware interface, SMBIOS can be used with management applications that use DMTF's Common Information Model (or another technology, such as SNMP). It eliminates the need for error-prone operations, such as probing system hardware for presence detection.

Version 3.6.0 was released in 2022.

Open Source Projects using DMTF SMBIOS Technologies:
- Linux kernel contains an SMBIOS decoder and makes the SMBIOS table accessible to programs through the /sys virtual filesystem.
- Coreboot is an open-source firmware implementation for x86 and ARM, and includes code to generate the SMBIOS table.
- EDK2 is the standard development framework for UEFI/PI. It includes code to generate the SMBIOS table, and a table viewer (smbiosview) that can be run from the UEFI shell. https://github.com/tianocore/tianocore.github.io/wiki/EDK-II/
- dmidecode (C) is a CLI to view the SMBIOS table with support for Linux and FreeBSD. https://www.nongnu.org/dmidecode/
- dmidecode (Python) reports information about your system's hardware as described in your system BIOS according to the SMBIOS/DMI standard.

## Refs

https://www.dmtf.org/standards/smbios
http://www.linofee.org/~jel/develop/prtdiag/
https://ezix.org/project/wiki/HardwareLiSter
https://powertweak.sourceforge.net/
https://www.nongnu.org/dmidecode/
