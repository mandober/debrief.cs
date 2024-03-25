# Building an OS :: Intro

BIOS is hardwired to first interact with the processor. The BIOS firmware (code on the chip) is loaded into memory and executed when a computer starts. The BIOS provides initial instructions to the CPU that enumarate and inspect the hardware (POST). In a normal operation, with an OS already available, the BIOS selects the first configured booting device and 
loads the bootloader.

`0x7C00` (where the BIOS loads the OS)

There are actually two ways in which the BIOS can load an operating system. In the first method which is now called *legacy mode*, the BIOS loads the first block of data (the first sector) from each boot device into memory, until it finds the signature `0xAA55`. 

Once it finds that signature, it jumps to the first instruction in the loaded block; and this is where the OS starts. The second method is called *EFI*, which works a bit differently. In this mode, the BIOS looks for a certain EFI partition on each device, which contains special EFI programs.
