# Calling conventions

https://en.wikipedia.org/wiki/X86_calling_conventions

This article describes the calling conventions used when programming x86 architecture microprocessors.

Calling conventions describe the interface of called code:
- The order in which atomic (scalar) parameters, or individual parts of a complex parameter, are allocated
- How parameters are passed (pushed on the stack, placed in registers, or a mix of both)
- Which registers the called function must preserve for the caller (also known as: callee-saved registers or non-volatile registers)
- How the task of preparing the stack for, and restoring after, a function call is divided between the caller and the callee

This is intimately related with the assignment of sizes and formats to programming-language types. 

Another closely related topic is *name mangling*, which determines how symbol names in the code are mapped to symbol names used by the linker. 

>Calling conventions, type representations, and name mangling are all part of what is known as an *Application Binary Interface* (ABI).

There are subtle differences in how various compilers implement these conventions, so it is often difficult to interface code which is compiled by different compilers. On the other hand, conventions which are used as an API standard (such as stdcall) are very uniformly implemented.

## Contents

- 1. Historical background
- 2. Caller clean-up
  - 2.1. cdecl
    - 2.1.1. Variations
  - 2.2. syscall
  - 2.3. optlink
- 3. Callee clean-up
  - 3.1. Pascal
  - 3.2. stdcall
  - 3.3. Microsoft fastcall
  - 3.4. Microsoft vectorcall
  - 3.5. Borland register
  - 3.6. Watcom register
  - 3.7. TopSpeed, Clarion, JPI
  - 3.8. safecall
- 4. Either caller or callee clean-up
  - 4.1. thiscall
- 5. Register preservation
  - 5.1. Caller-saved (volatile) registers
  - 5.2. Callee-saved (non-volatile) registers
- 6. x86-64 calling conventions
  - 6.1. Microsoft x64 calling convention
  - 6.2. System V AMD64 ABI
- 7. List of x86 calling conventions
- 8. References
  - 8.1. Footnotes
  - 8.2. Other sources
- 9. Further reading

## 1. Historical background

The standard for IBM PC compatibles was defined by the Intel processors (8086, 80386) and the literal hardware IBM shipped. Hardware extensions and all software standards (save for a BIOS calling convention) were thrown open to market competition.

A multitude of independent software firms offered operating systems, compilers for many programming languages, and applications. Many different calling schemes were implemented by the firms, often mutually exclusive, based on different requirements, historical practices, and programmer creativity.

After the IBM compatible market shakeout, Microsoft operating systems and programming tools (with differing conventions) predominated, while second-tier firms like Borland and Novell, and open-source projects like GNU Compiler Collection (GCC), still maintained their own standards. Provisions for interoperability between vendors and products were eventually adopted, simplifying the problem of choosing a viable convention.

## Call/return sequences

Main article: Calling convention

A number of possible call/return sequences are possible depending on the hardware instruction set, including the following:

* The `CALL` instruction 
  pushes address 
  of the next instruction 
  on the stack 
  and branches 
  to the specified address. 
  The `RETURN` instruction 
  pops the return address 
  from the stack 
  into the instruction pointer 
  and execution resumes 
  at that address. 
  Examples: *x86*, PDP-11.

* The `CALL` instruction 
  puts the address 
  of the next instruction 
  in a register 
  and branches 
  to the specified address. 
  The `RETURN` instruction sequence 
  places the return address 
  from the register 
  into the instruction pointer 
  and execution resumes 
  at that address. 
  Examples: IBM System/360, z/Architecture, most RISC arch.

* The `CALL` instruction 
  places address 
  of the next (or current) instruction 
  in the location at the call address 
  and branches 
  to the specified address + 1. 
  The `RETURN` instruction sequence
  branches to the return address 
  by an indirect jump 
  to the first instruction 
  of the subroutine. 
  Examples: IBM 1130, SDS 9XX, PDP-8.


## 2. Caller clean-up

In these types of calling conventions, the *caller cleans the arguments from the stack (resets the state of the stack just as it was before the callee function was called)*.

### 2.1. cdecl

The cdecl (which stands for C declaration) is a calling convention for the programming language C and is used by many C compilers for the x86 architecture.

In cdecl, subroutine *arguments are passed on the stack*.

If the *return values* are Integer values or memory addresses, they are put into the `EAX` register by the callee, whereas floating point values are put in the `ST0` x87 register.

Registers `EAX`, `ECX`, and `EDX` are *caller-saved*, and the rest are *callee-saved*. The x87 floating point registers `ST0` to `ST7` must be empty (popped or freed) when calling a new function, and `ST1` to `ST7` must be empty on exiting a function. `ST0` must also be empty when not used for returning a value.

In the context of the language C, function *arguments* are pushed on the stack in the *right-to-left (RTL) order*, i.e. the *last argument is pushed first*.

cdecl calling convention
- default for x86 C compilers
- caller clean-up
  - caller cleans args from the stack
  - resets the state of the stack as it was before the call
- args:
 - passed on the stack (not in registers)
 - in right-to-left order, last arg pushed first
- return value:
  - put by callee
  - if integral or pointer in `EAX`
  - if floating in `ST0`
- registers:
  - caller-saved registers:
    - `EAX`, `ECX`, `EDX`
  - callee-saved registers:
    - all the rest
  - registers conditions:
    - `ST0-ST7` must be empty on before the call
    - `ST1-ST7` must be empty on exiting the called function
    - `ST0`     must be empty if not used to return a value



Consider the following C source code snippet:

```c
int callee(int, int, int);

int caller(void) {
  return callee(1, 2, 3) + 5;
}
```

On x86, it might produce the following assembly code (Intel syntax):

```asm
caller:
    ; make new call frame
    ; (some compilers may produce an 'enter' instruction instead)
    push    ebp       ; save old call frame
    mov     ebp, esp  ; initialize new call frame
    ; push call arguments, in reverse
    ; (some compilers may subtract the required space from the stack pointer,
    ; then write each argument directly, see below.
    ; The 'enter' instruction can also do something similar)
    ; sub esp, 12      : 'enter' instruction could do this for us
    ; mov [ebp-4], 3   : or mov [esp+8], 3
    ; mov [ebp-8], 2   : or mov [esp+4], 2
    ; mov [ebp-12], 1  : or mov [esp], 1
    push    3
    push    2
    push    1
    call    callee    ; call subroutine 'callee'
    add     esp, 12   ; remove call arguments from frame
    add     eax, 5    ; modify subroutine result
                      ; (eax is the return value of our callee,
                      ; so we don't have to move it into a local variable)
    ; restore old call frame
    ; (some compilers may produce a 'leave' instruction instead)
    mov     esp, ebp  ; most calling conventions dictate ebp be callee-saved,
                      ; i.e. it's preserved after calling the callee.
                      ; it therefore still points to the start of our stack frame.
                      ; we do need to make sure
                      ; callee doesn't modify (or restore) ebp, though,
                      ; so we need to make sure
                      ; it uses a calling convention which does this
    pop     ebp       ; restore old call frame
    ret               ; return
```


The caller cleans the stack after the function call returns.

The cdecl calling convention is usually the *default calling convention* for x86 C compilers, although many compilers provide options to automatically change the calling conventions used. To manually define a function to be cdecl, some support the following syntax:

```asm
return_type __cdecl func_name();
```



### 2.1.1. Variations
### 2.2. syscall
### 2.3. optlink

## 3. Callee clean-up
### 3.1. Pascal
### 3.2. stdcall
### 3.3. Microsoft fastcall
### 3.4. Microsoft vectorcall
### 3.5. Borland register
### 3.6. Watcom register
### 3.7. TopSpeed, Clarion, JPI
### 3.8. safecall
