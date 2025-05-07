# Calling convention

https://en.wikipedia.org/wiki/Calling_convention

A *calling convention* is an implementation-level (low-level) scheme for how subroutines receive parameters from their caller and how they return a result.

Differences in various implementations include where parameters, return values, return addresses and scope links are placed (registers, stack, heap, etc.), and how the tasks, of preparing for a function call and restoring the environment afterwards, are divided between the caller and the callee.

Calling conventions may be related to a particular PL's *evaluation strategy*, but most often are not considered part of it (or vice versa), as the evaluation strategy is usually defined on a higher abstraction level and seen as a part of the language rather than as a low-level implementation detail of a particular PL's compiler.

Differences of calling conventions:
- Where *parameters*, *return values* and *return addresses* are placed (in registers, on the call stack, a mix of both, or in other memory structures)
- For parameters passed in memory, *the order of passing the actual arguments* for formal parameters (or the parts of a large or complex argument)
- How a, possibly long or *complex return value* is delivered from the callee back to the caller (on the stack, in a register, or within the heap)
- How the task of *setup and cleanup* after the call is divided between the caller and the callee
- Whether and how *metadata describing the arguments* is passed
- Where the *previous value of the frame pointer* is stored, which is used to restore the frame pointer when the routine ends (in the stack frame, or in some register)
- Where any *static scope links* for the routine's *non-local data* access are placed (typically at one or more positions in the stack frame, but sometimes in a general register, or, for some architectures, in special-purpose registers)
- How *local variables* are allocated can sometimes also be part of the calling convention (when the caller allocates for the callee)
- Conventions on *which registers* may be directly used by the callee, without being preserved
- Which are the *registers considered volatile* and, if volatile, need not be restored by the callee

Many architectures only have one widely-used calling convention, often suggested by the architect. For RISCs including SPARC, MIPS, and RISC-V, registers names based on this calling convention are often used. For example, MIPS registers $4 through $7 have "ABI names" $a0 through $a3, reflecting their use for parameter passing in the standard calling convention. (RISC CPUs have many equivalent general-purpose registers so there's typically no hardware reason for giving them names other than numbers.)

Although some PLs may partially specify the calling sequence in the language specification, or in a pivotal implementation, different implementations of such languages (i.e. different compilers) may still use various calling conventions, and an implementation may offer a choice of more than one calling convention. Reasons for this are performance, frequent adaptation to the conventions of other popular languages, with or without technical reasons, and restrictions or conventions imposed by various "computing platforms".

## X86 calling conventions

https://en.wikipedia.org/wiki/X86_calling_conventions

*The x86 architecture* is used with many different calling conventions. Due to the small number of architectural registers, and historical focus on simplicity and small code-size, many x86 calling conventions pass arguments on the stack.

The return value (or a pointer to it) is returned in a register. Some conventions use registers for the first few parameters which may improve performance, especially for short and simple leaf-routines very frequently invoked (i.e. routines that do not call other routines).

Example call:

```as
push EAX            ; pass some register result
push dword [EBP+20] ; pass some memory variable (FASM/TASM syntax)
push 3              ; pass some constant
call calc           ; the returned result is now in EAX
```

*Typical callee structure*: some or all (except `ret`) of the instructions below may be optimized away in simple procedures. Some conventions leave the parameter space allocated, using plain `ret` instead of `ret imm16`. In that case, the caller could `add esp,12` in this example, or otherwise deal with the change to ESP.

```as
calc:
  push EBP            ; save old frame pointer
  mov EBP,ESP         ; get new frame pointer
  sub ESP,localsize   ; reserve stack space for locals

                      ; perform calculations, leave result in EAX

  mov ESP,EBP         ; free space for locals
  pop EBP             ; restore old frame pointer
  ret paramsize       ; free parameter space and return.
```


* Caller clean-up
  - `cdecl` (C declaration)
    - variations
  - `syscall`
  - optlink
* Callee clean-up
  - pascal
  - `stdcall`
  - Microsoft `fastcall`
  - Microsoft vectorcall
  - Borland register
  - Watcom register
  - TopSpeed / Clarion / JPI
  - safecall
* Either caller or callee clean-up
  - thiscall
* Register preservation
  - Caller-saved (volatile) registers
  - Callee-saved (non-volatile) registers
* x86-64 calling conventions
  - Microsoft x64 calling convention
  - System V AMD64 ABI
