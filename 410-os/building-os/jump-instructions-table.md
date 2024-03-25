# Jump Instructions Table

Mnemonic  | Meaning                               | Conditions
----------|---------------------------------------|--------------------
JMP       | unconditional jump                    | (none)
JA        | Jump if Above                         | CF=0 and ZF=0
JAE       | Jump if Above or Equal                | CF=0
JB        | Jump if Below                         | CF=1
JBE       | Jump if Below or Equal                | CF=1 or ZF=1
JC        | Jump if Carry                         | CF=1
JCXZ      | Jump if CX Zero                       | CX=0
JE        | Jump if Equal                         | ZF=1
JG        | Jump if Greater (signed)              | ZF=0 and SF=OF
JGE       | Jump if Greater or Equal (signed)     | SF=OF
JL        | Jump if Less (signed)                 | SF != OF
JLE       | Jump if Less or Equal (signed)        | ZF=1 or SF != OF
JNA       | Jump if Not Above                     | CF=1 or ZF=1
JNAE      | Jump if Not Above or Equal            | CF=1
JNB       | Jump if Not Below                     | CF=0
JNBE      | Jump if Not Below or Equal            | CF=0 and ZF=0
JNC       | Jump if Not Carry                     | CF=0
JNE       | Jump if Not Equal                     | ZF=0
JNG       | Jump if Not Greater (signed)          | ZF=1 or SF != OF
JNGE      | Jump if Not Greater or Equal (signed) | SF != OF
JNL       | Jump if Not Less (signed)             | SF=OF
JNLE      | Jump if Not Less or Equal (signed)    | ZF=0 and SF=OF
JNO       | Jump if Not Overflow (signed)         | OF=0
JNP       | Jump if No Parity                     | PF=0
JNS       | Jump if Not Signed (signed)           | SF=0
JNZ       | Jump if Not Zero                      | ZF=0
JO        | Jump if Overflow (signed)             | OF=1
JP        | Jump if Parity                        | PF=1
JPE       | Jump if Parity Even                   | PF=1
JPO       | Jump if Parity Odd                    | PF=0
JS        | Jump if Signed (signed)               | SF=1
JZ        | Jump if Zero                          | ZF=1


## Jumping cost

JUMPS ↓   CPU → | 808x | 286 | 386 | 486 | Bytes
Jx: jump        |   16 | 7+m | 7+m |   3 | 2
 vs no jump     |    4 |   3 |   3 |   1 |
Jx: near-label  |      |     | 7+m |   3 | 4
 vs no jump     |      |     |   3 |   1 |


- e.g. on 8086 CPU, it takes 16 cycles to execute a jump
- It's a good programming practice to organize code so the expected case is executed without a jump since the actual jump takes longer to execute than falling through the test.
- see JCXZ and JMP for their respective timings
- see Instruction Timing FLAGS

## Refs

https://flint.cs.yale.edu/feng/cos/resources/BIOS/Resources/assembly/j---.html
https://flint.cs.yale.edu/feng/cos/resources/BIOS/Resources/assembly/jcxz.html
https://flint.cs.yale.edu/feng/cos/resources/BIOS/Resources/assembly/jmp.html
https://flint.cs.yale.edu/feng/cos/resources/BIOS/Resources/assembly/instructiontiming.html
