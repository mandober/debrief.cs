# Number Repr

8 bits = 1 byte

* 2's (1's) compiment for unsigned:
  - bit pattern interpreted as a positive number
* 2's compliment for signed:



bits | sign | type | byte 8 | word 16 | dword 32 | qword 64 |
-----|------|------|--------|---------|----------|----------|---
8    | s    | int  | 
8    | u    | int  | 
16   | s    | int  | 
16   | u    | int  | 
32   | s    | int  | 
32   | u    | int  | 
64   | s    | int  | 
64   | u    | int  | 


- each CPU has inherent bitness
  - modern CPUs are 64-bit, so 1 "word" should equal that number of bits
  - 1 word = 64 bits = 8 bytes
- alternative naming scheme of bit-widths (MS nomenclature):
  -  8-bit: 1 byte,  "byte"
  - 16-bit: 2 bytes, "word"
  - 32-bit: 4 bytes, "dword" (double word)
  - 64-bit: 8 bytes, "qword" (quad word)



- 8-bit signed integer, integer number 1 is represented as 00000001B.
- In 8-bit unsigned integer, integer number 1 is represented as 00000001B.
- In 16-bit signed integer, integer number 1 is represented as 00000000 00000001B.
- In 32-bit signed integer, integer number 1 is represented as 00000000 00000000 00000000 00000001B.
- In 32-bit floating-point representation, number 1.0 is represented as 0 01111111 0000000 00000000 00000000B, i.e., S=0, E=127, F=0.
- In 64-bit floating-point representation, number 1.0 is represented as 0 01111111111 0000 00000000 00000000 00000000 00000000 00000000 00000000B, i.e., S=0, E=1023, F=0.
- In 8-bit Latin-1, the character symbol '1' is represented as 00110001B (or 31H).
- In 16-bit UCS-2, the character symbol '1' is represented as 00000000 00110001B.
- In UTF-8, the character symbol '1' is represented as 00110001B.
- If you "add" a 16-bit signed integer 1 and Latin-1 character '1' or a string "1", you could get a surprise.




Integer number 1, floating-point number 1.0 character symbol '1', and string "1" are totally different inside the computer memory. You need to know the difference to write good and high-performance programs.

In 8-bit signed integer, integer number 1 is represented as 00000001B.
In 8-bit unsigned integer, integer number 1 is represented as 00000001B.
In 16-bit signed integer, integer number 1 is represented as 00000000 00000001B.
In 32-bit signed integer, integer number 1 is represented as 00000000 00000000 00000000 00000001B.
In 32-bit floating-point representation, number 1.0 is represented as 0 01111111 0000000 00000000 00000000B, i.e., S=0, E=127, F=0.
In 64-bit floating-point representation, number 1.0 is represented as 0 01111111111 0000 00000000 00000000 00000000 00000000 00000000 00000000B, i.e., S=0, E=1023, F=0.
In 8-bit Latin-1, the character symbol '1' is represented as 00110001B (or 31H).
In 16-bit UCS-2, the character symbol '1' is represented as 00000000 00110001B.
In UTF-8, the character symbol '1' is represented as 00110001B.
If you "add" a 16-bit signed integer 1 and Latin-1 character '1' or a string "1", you could get a surprise.
