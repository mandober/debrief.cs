# Function

https://en.wikipedia.org/wiki/Function_(computer_science)

A function (also procedure, method, subroutine, routine, or subprogram) is a *callable unit* of software logic that has a well-defined interface and behavior and can be invoked multiple times.

Callable units provide a powerful programming tool. The primary purpose is to allow for the decomposition of problems into chunks that have relatively low cognitive load and to assign the chunks meaningful names (unless they are anonymous). Judicious application can reduce the cost of developing and maintaining software, while increasing its quality and reliability.

Callable units are present at multiple levels of abstraction in the programming environment. For example, a programmer may write a function in source code that is compiled to machine code that implements similar semantics. There is a callable unit in the source code and an associated one in the machine code, but they are different kinds of callable units - with different implications and features.

## Contents

- 1. Terminology
- 2. History
  - 2.1. Language support
  - 2.2. Libraries
  - 2.3. Return by indirect jump
  - 2.4. Jump to subroutine
  - 2.5. Call stack
    - 2.5.1. Delayed stacking
- 3. Features
- 4. Implementations
  - 4.1. General characteristics
  - 4.2. Naming
  - 4.3. Call syntax
  - 4.4. Parameters
  - 4.5. Return value
  - 4.6. Side effects
  - 4.7. Local variables
  - 4.8. Nested calls, recursion
  - 4.9. Nested scope
  - 4.10. Reentrancy
  - 4.11. Overloading
  - 4.12. Closure
  - 4.13. Exception reporting
  - 4.14. Call overhead
    - 4.14.1. Compiler optimization
    - 4.14.2. Inlining
  - 4.15. Sharing
  - 4.16. Inter-operability
  - 4.17. Built-in functions
- 5. Programming
  - 5.1. Trade-offs
    - 5.1.1. Advantages
    - 5.1.2. Disadvantages
  - 5.2. Conventions
- 6. Examples
  - 6.1. Early BASIC
  - 6.2. Small Basic
  - 6.3. Visual Basic
  - 6.4. C and C++
  - 6.5. PL/I
  - 6.6. Python
  - 6.7. Prolog

## Terminology [revise!]

The meaning of each callable term (function, procedure, method, etc.) is, in fact, different - they are not synonymous. Nevertheless, they each add a capability to programming that has commonality.

The terms used tend to reflect the context in which they are used - usually depending on the language. For example:

*Subprogram*, *routine* and *subroutine* were more commonly used in the past but are less common today.

*Routine* and *subroutine* have essentially the same meaning but describe a hierarchical relationship, much like how a subdirectory is structurally subordinate to its parent directory; program and subprogram are similarly related.

Some consider *function* to imply a *mathematical function*, having no side-effects, but in many contexts function refers to any callable.

In the context of Visual Basic and Ada, `Sub`, short for *subroutine* or *subprocedure*, is the name of a callable that does not return a value whereas a `Function` does return a value.

Object-oriented languages such as C# and Java use the term *method* to refer to a member function of an object.

## History

The idea of a *callable unit* was initially conceived by John Mauchly and Kathleen Antonelli during their work on ENIAC and recorded in a January 1947 Harvard symposium on "Preparation of Problems for EDVAC-type Machines".

Maurice Wilkes, David Wheeler, and Stanley Gill are generally credited with the formal invention of this concept, which they termed a *closed sub-routine*, contrasted with an *open subroutine* or *macro*.

However, Alan Turing had discussed subroutines in a paper of 1945 on design proposals for the NPL ACE, going so far as to invent the concept of a *return address stack*.

The idea of a subroutine was worked out after computing machines had already existed for some time. The *arithmetic and conditional jump* instructions were planned ahead of time and have changed relatively little, but the special instructions used for *procedure calls* have changed greatly over the years.

The earliest computers and microprocessors, such as the Manchester Baby and the RCA 1802, did not have a single subroutine call instruction. Subroutines could be implemented, but they required programmers to use the call sequence - a series of instructions - at each *call site*.

*Subroutines* were implemented in Konrad Zuse's `Z4` in 1945.

In 1945, Alan M. Turing used the terms "bury" and "unbury" as a means of *calling and returning from subroutines*.

In January 1947, John Mauchly presented general notes at "A Symposium of Large Scale Digital Calculating Machinery" under the joint sponsorship of Harvard University and the Bureau of Ordnance, United States Navy, where he discusses serial and parallel operation suggesting

"the structure of the machine need not be complicated one bit. It is possible, since all the logical characteristics essential to this procedure are available, to evolve a coding instruction for placing the subroutines in the memory at places known to the machine, and in such a way that they may easily be called into use. In other words, one can designate subroutine A as division and subroutine B as complex multiplication and subroutine C as the evaluation of a standard error of a sequence of numbers, and so on, through the list of subroutines needed for a particular problem. All these subroutines will then be stored in the machine, and all one needs to do is make a brief reference to them by number, as they are indicated in the coding."

Kay McNulty had worked closely with John Mauchly on the ENIAC team and developed an idea for subroutines for the ENIAC computer she was programming during World War II. She and the other ENIAC programmers used the subroutines to help calculate missile trajectories.

Goldstine and von Neumann wrote a paper dated 16 August 1948 discussing the use of subroutines.

Some very early computers and microprocessors, such as the IBM 1620, the Intel 4004 and Intel 8008, and the PIC microcontrollers, have a *single-instruction subroutine call* that uses a *dedicated hardware stack* to store *return addresses* - such hardware supports only a few levels of *subroutine nesting*, but can support *recursive subroutines*.

Machines before the mid-1960s, such as the UNIVAC I, the PDP-1, and the IBM 1130, typically use a *calling convention* which saved the instruction counter in the first memory location of the called subroutine. This allows arbitrarily deep levels of subroutine nesting but does not support recursive subroutines.

The IBM System/360 had a subroutine call instruction that placed the saved instruction counter value into a general-purpose register; this can be used to support arbitrarily deep subroutine nesting and recursive subroutines. The Burroughs B5000 (1961) is *one of the first computers to store subroutine return data on a stack*.

The DEC PDP-6 (1964) is one of the first accumulator-based machines to have a subroutine call instruction that saved the return address in a stack addressed by an accumulator or index register.

The later PDP-10 (1966), PDP-11 (1970) and VAX-11 (1976) lines followed suit; this feature also supports both arbitrarily deep subroutine nesting and recursive subroutines.

### Language support

In the very early assemblers, subroutine support was limited. Subroutines were not explicitly separated from each other or from the main program, and indeed the source code of a subroutine could be interspersed with that of other subprograms.

Some assemblers would offer predefined macros to generate the call and return sequences.

By the 1960s, assemblers usually had much more sophisticated support for both inline and separately assembled subroutines that could be linked together.

One of the first programming languages to support *user-written subroutines and functions* was FORTRAN II. The IBM FORTRAN II compiler was released in 1958. ALGOL 58 and other early programming languages also supported procedural programming.

### Libraries

Even with this cumbersome approach, subroutines proved very useful. They allowed the use of the same code in many different programs. Memory was a very scarce resource on early computers, and subroutines allowed significant savings in the size of programs.

Many early computers loaded the program instructions into memory from a *punched tape*. Each subroutine could then be provided by a separate piece of tape, loaded or spliced before or after the main program (or "mainline"); and the same subroutine tape could then be used by many different programs. A similar approach was used in computers that loaded program instructions from *punched cards*.

The name *subroutine library* originally meant a library, in the literal sense, which kept indexed collections of tapes or decks of cards for collective use.

### Return by indirect jump

To remove the need for self-modifying code, computer designers eventually provided an indirect jump instruction, whose operand, instead of being the return address itself, was the *location of a variable or processor register containing the return address*.

On those computers, instead of modifying the function's return jump, the calling program would store the return address in a variable so that when the function completed, it would execute an indirect jump that would direct execution to the location given by the predefined variable.

### Jump to subroutine

Another advance was the jump to subroutine instruction, which combined the saving of the return address with the calling jump, thereby minimizing overhead significantly.

In the IBM System/360, for example, the branch instructions BAL or BALR, designed for procedure calling, would save the return address in a processor register specified in the instruction (by convention register 14). To return, the subroutine had only to execute an indirect branch instruction (BR) through that register. If the subroutine needed that register for some other purpose (such as calling another subroutine), it would save the register's contents to a private memory location or a register stack.

In systems such as the HP 2100, the JSB instruction would perform a similar task, except that the return address was stored in the memory location that was the target of the branch. Execution of the procedure would actually begin at the next memory location. In the HP 2100 assembly language, one would write, for example

```cpp
...
JSB MYSUB    (Calls subroutine MYSUB.)
BB    ...          (Will return here after MYSUB is done.)
```

to call a subroutine called MYSUB from the main program.

The subroutine would be coded as

```cpp
MYSUB NOP          (Storage for MYSUB's return address.)
AA    ...          (Start of MYSUB's body.)
...
JMP MYSUB,I  (Returns to the calling program.)
```

The JSB instruction placed the address of the NEXT instruction (namely, BB) into the location specified as its operand (namely, MYSUB), and then branched to the NEXT location after that (namely, AA = MYSUB + 1). The subroutine could then return to the main program by executing the indirect jump JMP MYSUB, I which branched to the location stored at location MYSUB.

Compilers for Fortran and other languages could easily make use of these instructions when available. This approach supported *multiple levels of calls*; however, since the return address, parameters, and return values of a subroutine were assigned fixed memory locations, it did not allow for recursive calls.

Incidentally, a similar method was used by Lotus 1-2-3, in the early 1980s, to discover the recalculation dependencies in a spreadsheet. Namely, a location was reserved in each cell to store the return address. Since circular references are not allowed for natural recalculation order, this allows a tree walk without reserving space for a stack in memory, which was very limited on small computers such as the IBM PC.

### Call stack

Most modern implementations of a function call use a call stack, a special case of the stack data structure, to implement function calls and returns.

Each procedure call creates a new entry, called a *stack frame*, at the top of the stack; when the procedure returns, its stack frame is deleted from the stack, and its space may be used for other procedure calls. Each stack frame contains the private data of the corresponding call, which typically includes the procedure's *parameters* and *internal variables*, and the *return address*.

The call sequence can be implemented by a sequence of ordinary instructions (approach still used in RISC and VLIW architectures), but many traditional machines designed since the late 1960s have included *special instructions* for that purpose.

The call stack is usually implemented as a contiguous area of memory. Usually the stack starts at a higher address and grows "down", towards the lower addresses (grows backwards in memory).

Some designs, notably some Forth implementations, used two separate stacks, one mainly for control information (like return addresses and loop counters) and the other for data. The former was, or worked like, a call stack and was only indirectly accessible to the programmer through other language constructs, while the latter was more directly accessible.

When *stack-based procedure calls* were first introduced, an important motivation was to save precious memory. With this scheme, the compiler does not have to reserve separate space in memory for the private data (parameters, return address, and local variables) of each procedure. At any moment, the stack contains only the private data of the calls that are currently active (namely, which have been called but haven't returned yet). Because of the ways in which programs were usually assembled from libraries, it was (and still is) not uncommon to find programs that include thousands of functions, of which only a handful are active at any given moment. For such programs, the call stack mechanism could save significant amounts of memory. Indeed, the call stack mechanism can be viewed as the earliest and simplest method of *automatic memory management*.

Another advantage of the call stack method is that it allows *recursive function calls*, since each nested call to the same procedure gets a separate instance of its private data.

In a multi-threaded environment, there is generally more than one stack. An environment that fully supports *coroutines* or *lazy evaluation* may use data structures other than stacks to store their **activation records**.

https://en.wikipedia.org/wiki/Call_stack
https://en.wikipedia.org/wiki/Recursion_(computer_science)
https://en.wikipedia.org/wiki/Coroutine
https://en.wikipedia.org/wiki/Lazy_evaluation
https://en.wikipedia.org/wiki/Thread_(computer_science)
https://en.wikipedia.org/wiki/Return_statement

#### Delayed stacking

One disadvantage of the call stack mechanism is the increased cost of a procedure call and its matching return.

The extra cost includes incrementing and decrementing the stack pointer (and, in some architectures, checking for stack overflow), and accessing the local variables and parameters by frame-relative addresses, instead of absolute addresses. The cost may be realized in increased execution time, or increased processor complexity, or both.

This overhead is most obvious and objectionable in leaf procedures or **leaf functions**, which return without making any procedure calls themselves.

To reduce that overhead, many modern compilers try to *delay the use of a call stack until it is really needed*. For example, the call of a procedure P may store the return address and parameters of the called procedure in certain processor registers, and transfer control to the procedure's body by a simple jump. If the procedure P returns without making any other call, the call stack is not used at all. If P needs to call another procedure Q, it will then use the call stack to save the contents of any registers (such as the return address) that will be needed after Q returns.

## Features

In general, a callable unit is a list of instructions that, starting at the first instruction, executes sequentially except as directed via its internal logic. It can be invoked many times during the execution of a program. Execution continues at the next instruction after the call instruction when it returns control.

## Implementations

The features of implementations of callable units evolved over time and varies by context. This section describes features of the various common implementations.

### General characteristics

Most modern programming languages provide features to define and call functions, including syntax for accessing such features, including:
- delimiting the implementation of a function from the rest of the program
- assigning an identifier (name) to a function (i.e. name binding)
- declaring formal parameters by name and data type
- assigning a data type to return value
- specifying a return value in function body (usually via `return` statement)
- calling a function
- passing args (actual parameters) corresponding to formal parameters
- returning control to the caller
- binding the function's return value at the call site
- ignoring returned values
- providing a private nested scope for function's local variables
- accessing variables from the enclosing scopes
- propagating exceptions out of the function
- handling exceptions that propagate (bubble up) in the calling context
- package functions into a module, library, object, class, interface

### Naming

Some languages, such as Pascal, Fortran, Ada and many dialects of BASIC, use a different name for a callable unit that returns a value (function or subprogram) vs one that does not (subroutine or procedure).

Other languages, such as C, C++, C# and Lisp, use only one name for a callable unit, function, whether it returns a value or not.

The C-family languages use the keyword 'void' to indicate that a function returns nothing interesting. Since C23, `_noreturn` keyword is used as return type of *diverging functions*.

### Call syntax

If declared to return a value, a call can be embedded in an expression in order to consume the return value. For example, a square root callable unit might be called like y = sqrt(x).

A callable unit that does not return a value is called as a stand-alone statement like `print("hello")`. This syntax can also be used for a callable unit that returns a value, but the return value will be ignored.

Some older languages require a keyword for calls that do not consume a return value, like `CALL print("hello")`.

### Parameters

Functions declare the resources required for their operation via the input parameters or **formal parameters**. A function that gets all the resources necessary to perform its functionality through its formal parameters is a function that can be more easily reused (even copy-pasted) into different contexts and code bases; it is contrasted by a function that references resources from its environment willy-nilly, without declaring what it needs through a parameter declaration list. Parameter list consists of pairs of identifiers and their types and serves as a sort of manifest (manifest of goods) the function requires in order to deliver whatever it promised. 

The parameter list, along with the function's name and return type, forms a part of the function's signature, uniquely identifying the function and offering an insight into its possible production (return value). However, what is clearly stated are the ingredients the caller needs to supply, so the function can fullfill its obligations (its part of the deal). The deal is between the caller (the call site) and the callee (the function): if the caller provides the callee with the specified resources, the callee is obliged to deliver the promised result. So, using undeclared resources is like smuggling, which breaks the implicit contract between the caller and the callee, and probably prevents the function to become popular (reused, i.e. copy-pasted into various code bases).

Most languages support declaring *formal parameters*. The caller must pass the suitable *arguments* (also called *actual parameters*) that match the parameters *positionally*.

Programming languages have different conventions for passing arguments.
