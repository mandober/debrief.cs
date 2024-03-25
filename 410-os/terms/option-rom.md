# Option ROM

https://en.wikipedia.org/wiki/Option_ROM

An Option ROM is a firmware that resides in a ROM on a device and is executed at boot time to initialize the device, and optionally to add support for it to the system BIOS. In its usual use, it is essentially a driver that interfaces between the BIOS API and a particular device.

Technically, an option ROM is firmware that is executed by the BIOS after POST and before the BIOS boot process, gaining complete control of the system and being generally unrestricted in what it can do.

The BIOS relies on each option ROM to return control to the BIOS so that it can either call the next option ROM or commence the boot process. For this reason, it is possible (but not usual) for an option ROM to keep control and preempt the BIOS boot process. 

The BIOS (at least as originally designed by IBM) generally scans for and initializes (by executing) option ROMs in ascending address order at 2 KB address intervals within two different address ranges above address `0xC0000` in the conventional (20-bit) memory address space; later systems may also scan additional address ranges in the 24-bit or 32-bit extended address space.

Option ROMs are necessary to enable non-Plug and Play peripheral devices to boot and to extend the BIOS to provide support for any non-PnP peripheral device in the same way that standard and motherboard-integrated peripherals are supported.

Option ROMs are also used to extend the BIOS or to add other firmware services to the BIOS. In principle, an option ROM could provide any sort of firmware extension, such as a library of video graphics subroutines, or a set of PCM audio processing services, and cause it to be installed into the system RAM and, optionally, the CPU interrupt system before the boot time.

One of the more common option ROMs is the video BIOS which gets loaded very early on in the boot process and hooks `INT 10h` so that the output from the POST can be displayed.

The video BIOS is almost always located in the memory segment beginning at `0xC0000`, the start of the memory area reserved for option ROMs; this is because when the motherboard has a built-in VGA controller, the option ROM will reside in the BIOS - the BIOS knows where it is and shadows it into RAM at a fixed time. 

Other ROMs can be located from segments `C8000h` all the way up to `F4000h` in early PCs.The final search address was limited to segment `DFFFFh` or `EFFFFh` in modern products. 

The BIOS Boot Specification requires that option ROMs be aligned to 2 KB boundaries (e.g. segments C8000h, C8800h, C9000h, C9800h, etc.). 
- the first two bytes of the ROM must be `0x55 0xAA`.
- the 3rd byte indicates the ROM size
- the 4th byte is where the BIOS begins execution of the option ROM to initialize it before the system boots. Often this initialization is done by a 3 byte jump instruction starting with hexadecimal value `0xE9`.
