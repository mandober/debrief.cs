# Interrupt vector table

https://en.wikipedia.org/wiki/Interrupt_vector_table

An **interrupt vector table** (IVT) is a data structure that associates a list of *interrupt handlers* with a list of *interrupt requests* in a table of *interrupt vectors*.

Each entry of the interrupt vector table, called an interrupt vector, is the address of an interrupt handler (also known as ISR). While the concept is common across processor architectures, IVTs may be implemented in architecture-specific fashions. For example, a dispatch table is one method of implementing an interrupt vector table.

Interrupts are assigned a number between 0 to 255. The interrupt vectors for each interrupt number are stored in the lower 1024 bytes of main memory. For example, interrupt 0 is stored from 0000:0000 to 0000:0003, interrupt 1 from 0000:0004 to 0000:0007, and so on.

## Interrupt List

Int Nr| IVT address         | Interrupt Name
------|---------------------|--------------------------------------------------
0     | 00-03               | CPU divide by zero
1     | 04-07               | Debug single step
2     | 08-0B               | Non Maskable Interrupt (NMI input on CPU)
3     | 0C-0F               | Debug breakpoints
4     | 10-13               | Arithmetic overflow
5     | 14-17               | BIOS provided Print Screen routine
6     | 18-1B               | Reserved
7     | 1C-1F               | Reserved
8     | 20-23               | IRQ0, Time of day hardware services
9     | 24-27               | IRQ1, Keyboard Interface
A     | 28-2B               | IRQ2, ISA Bus cascade services for second 8259
B     | 2C-2F               | IRQ3, Com 2 hardware
C     | 30-33               | IRQ4, Com1 hardware
D     | 34-37               | IRQ5, LPT2, Parallel port hardware (HDD on XT)
E     | 38-3B               | IRQ6, Floppy Disk adaptor
F     | 3C-3F               | IRQ7, LPT1, Parallel port hardware
10    | 40-43               | Video services, see note 1
11    | 44-47               | Equipment check
12    | 48-4B               | Memory size determination
13    | 4C-4F               | Floppy I/O routines
14    | 50-53               | Serial port I/O routines
15    | 54-57               | PC used for Cassette tape services
16    | 58-5B               | Keyboard I/O routines
17    | 5C-5F               | Printer I/O routines
18    | 60-63               | Points to basic interpreter in a "real" IBM PC
19    | 64-67               | Bootstrap loader
1A    | 68-6B               | Time of day services
1B    | 6C-6F               | Services Ctrl-Break service
1C    | 70-73               | Timer tick (provides 18.2 ticks per second)
1D    | 74-77               | Video parameters
1E    | 78-7B               | Disk parameters
1F    | 7C-7F               | Video graphics
20    | 80-83               | Program termination (obsolete)
21    | 84-87               | All DOS services available through this Interrupt
22    | 88-8B               | Terminate address
23    | 8C-8F               | Ctrl-Break exit address
24    | 90-93               | Critical error handler
25    | 94-97               | Read logical sectors
26    | 98-9B               | Write logical sectors
27    | 9C-9F               | Terminate and stay resident routines (obsolete)
28-3F | A0-A3 to FC-FF      | Reserved for DOS
40-4F | 100-103 to 13C-13F  | Reserved for BIOS
50    | 140-143             | Reserved for BIOS
51    | 144-147             | Mouse functions
52-59 | 148-14B to 164-167  | Reserved for BIOS
5A    | 168-16B             | Reserved for BIOS


Most processors have an interrupt vector table, including chips from Intel, AMD, Infineon, Microchip Atmel, NXP, ARM etc.

## Handling methods

An interrupt vector table is used in the 3 most popular methods of finding the starting address of the interrupt service routine:
- Predefined
- Fetch
- Interrupt acknowledge

### Predefined
The "predefined" method loads the program counter (PC) directly with the address of some entry inside the interrupt vector table. The jump table itself contains executable code. While in principle an extremely short interrupt handler could be stored entirely inside the interrupt vector table, in practice the code at each entry is a single jump instruction that jumps to the full interrupt service routine (ISR) for that interrupt. The Intel 8080, Atmel AVR and all 8051 and Microchip microcontrollers use the predefined approach.

### Fetch
The "fetch" method loads the PC indirectly, using the address of some entry inside the interrupt vector table to pull an address out of that table, and then loading the PC with that address. Each and every entry of the IVT is the address of an interrupt service routine. All Motorola/Freescale microcontrollers use the fetch method.

### Interrupt acknowledge
For the "interrupt acknowledge" method, the external device gives the CPU an interrupt handler number. The interrupt acknowledge method is used by the Intel Pentium and many older microprocessors.

When the CPU is affected by an interrupt, it looks up the interrupt handler in the interrupt vector table, and transfers control to it.


## Refs

Interrupt Jump Table
https://www.ctyme.com/intr/int.htm
