# INT 10 Video services

https://en.wikipedia.org/wiki/INT_10H

**INT 10h** is shorthand for BIOS interrupt call 0x10, the 17th *interrupt vector* in an x86-based computer system. The BIOS typically sets up a real mode interrupt handler at this vector that provides video services. Such services include setting the video mode, character and string output, and graphics primitives (reading and writing pixels in graphics mode).

To use this call, load `AH` with the number of the desired subfunction, load other required parameters in other registers, and make the call.

On a modern x86 system, BIOS calls can only be performed in Real mode, or Virtual 8086 mode. v8086 is not an option in Long mode. This means that a modern OS, which operates in *Protected mode (32 bit)*, or *Long mode (64 bit)*, would need to switch into real mode and back to call the BIOS - a hugely expensive operation. Hobbyist and old systems can drop into Real mode to switch the video mode, then draw to the framebuffer directly.

In EFI 1.x systems, the INT 10H and the VESA BIOS Extensions (VBE) are replaced by the EFI UGA protocol. In widely used UEFI 2.x systems, the INT 10H and the VBE are replaced by the UEFI GOP.




## Refs

https://en.wikipedia.org/wiki/INT_10H

https://www.ctyme.com/intr/int-10.htm

https://web.archive.org/web/20121212035831/http://www.ousob.com/ng/asm/ng6f862.php

* A Font changing routine (Retrieved 2020)
http://www.fysnet.net/font.htm

* Ralf Brown's Interrupt List
https://www.cs.cmu.edu/~ralf/files.html
