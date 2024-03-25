# Assembly

We need to make an image for a boot device. We can start with a floppy image (1.44 KB) and later transition to a CD boot image for extra space. The boot image is passed to qemu as the operand to a boot device. The `-fda` switch specifies the first floppy drive (the second floppy drive is denoted by `-fdb`).

```shell
qemu-system-x86_64 -fda build/main_floppy.img
```

The main program is specified here as `qemu-system-x86_64`, which is just a shortcut instead of specifying the x86_64 architecture as a param (using `qemu-system-i386` would also work as well, at the moment - checked!).

The boot image is coded in assembly and compiled to a flat binary file with `nasm`.

The BIOS of the `qemu` virtualizer is set to select the first floppy as the primary boot device, with our boot image "inserted" in the floppy drive. The BIOS copies the first sector (i.e. the boot sector, which is 512 bytes long) from the boot device (from the "floppy disk") into the physical memory, always to the address `0x7C00`. The BIOS then checks that the boot sector's last two bytes (out of 512 bytes total) are `0AA55h`, which indicates that the boot device is "legit", so the BIOS can yield the control to the code (usually a boot loader) on the device.

```asm
org 0x7C00                   ; set origin

bits 16                      ; we work in 16-bit mode

%define ENDL 0x0D, 0x0A      ; macro for NL

start:                       ; label to enforce main as entry point
  jmp main

;
; Prints a string to the screen
; Params:
;   - ds:si points to string
;
puts:
  ; save registers we will modify
  push si
  push ax
  push bx

.loop:
  lodsb               ; loads the next char in al
  or al, al           ; verify if next char is 0 (null)
  jz .done            ; jump if zero to .done
  mov ah, 0x0E        ; prepare a param: for the call to INT 10h
  mov bh, 0           ; prepare a param: set page number to 0 (?)
  int 0x10            ; call INT 10h
  jmp .loop

.done:
  pop bx
  pop ax
  pop si
  ret

main:
  ; setup data segments
  mov ax, 0           ; can't set ds/es directly
  mov ds, ax          ; so do a little dance
  mov es, ax          ; to set it indirectly

  ; setup the stack
  mov ss, ax
  mov sp, 0x7C00      ; stack grows downwards from where we are loaded

  ; print message
  mov si, msg_hello
  call puts

  ; then halt the CPU
  hlt


.halt                 ; keep halting
  jmp .halt

msg_hello: db 'Building an OS: BIOS printing.', ENDL, 0

times 510-($-$$) db 0  ; zero out 512 bytes of boot sector except
dw 0AA55h              ; for the last two bytes with magic number

; the end
```

The BIOS selects a boot device, then copies the first sector from the device into the physical memory at the address `0x7C00`.
