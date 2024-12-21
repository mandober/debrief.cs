# Jumps

- Jumps are the most direct way to affect the flow of execution of a program.
- Jump instructions work by manipulating the value of the IP register.
- A jump transfers the control of execution to another location in the program, which is normally used to handle some particular situtation.
- Jumps are also used to repeat a set of instructions
- In the higer PLs, jumps are available as the GOTO command, whose destination some languages restrict to a sey of well-defined labels.
- Various types of jumps are encoded as the basic CPU instruction set (ISA).
- These instruction are referenced from assemply languages where the jumps are used to implement various branching logic.
- Generaly, jumps are unconditional (might as well) or conditional, where some particular value determines the jump (jump if equal to 0, jump if overflow, etc.)
- Many languages limit certain types of jumps to a small range.
- Local jumps are jumps within the same function.
- The target address for a jump can be hard to determine, so in assemblers the target is usually specified as a lebel.
- Aside from GOTO, these explicit commands are normally implemented via jumps: `return`, `continue` (loops), `break` (loops). Also things like exceptions, interrupts, 
- continuations can be used to model these exceptional situtions
- The `JMP` instruction transfers control unconditionally to another instruction. it corresponds to goto statements in high-level languages.
- The assembler determines the smallest possible encoding for the direct unconditional jump.


- A **long jump** is ...

- Jumps have different conventions to encode the destination (address: relative, absolute; label: within the same segment or elsewhere).

> A **local jump** is a jump within the same function.

> A **relative jump** is an unconditional jump to a label.

In general, jumps are identified as unconditional or conditional. An **unconditional jump** is the most direct transfer of control. **Conditional jumps** depend on various conditions.








## Links

* Unconditional Jumps
http://www.c-jump.com/CIS77/ASM/FlowControl/C77_0030_unconditional_jumps.htm

* terminology - In C, what is an unconditional jump? - Software Engineering Stack Exchange
https://softwareengineering.stackexchange.com/questions/275173/in-c-what-is-an-unconditional-jump

* Use of Goto in Systems Code - Embedded in Academia
https://blog.regehr.org/archives/894

* terminology - Conditional jump statements in middle- and high-level languages - Software Engineering Stack Exchange
https://softwareengineering.stackexchange.com/questions/409878/conditional-jump-statements-in-middle-and-high-level-languages

* Conditional and Unconditional JUMP instructions in 8085 Microprocessor
https://www.tutorialspoint.com/conditional-and-unconditional-jump-instructions-in-8085-microprocessor

* Section 6.5.  Unconditional Jumps
http://books.gigatux.nl/mirror/cinanutshell/0596006977/cinanut-CHP-6-SECT-5.html

* Intro to x86 Assembly Language (Part 1) - YouTube
https://www.youtube.com/watch?v=wLXIWKUWpSs&t=13s

* code-tutorials/assembly-intro: Intro to x86 Assembly Language.
https://github.com/code-tutorials/assembly-intro

* Jump anywhere - Rosetta Code
https://rosettacode.org/wiki/Jump_anywhere#Haskell
