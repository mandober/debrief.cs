# Control flow

https://en.wikipedia.org/wiki/Control_flow

**Control flow** (not to be confused with flow control e.g. of data in networking) is the order in which individual statements, instructions or function calls of an imperative program are executed or evaluated.

>The emphasis on the explicit control flow is one of the main properties that distinguishes imperative programming language from a declarative one.

Within an imperative programming language, a *control flow statement* is a statement that results in a choice being made as to which of two or more paths to follow.

In functional programming, functions are used to achieve the same result, but usually they are not called the control flow statements.

In imperative programming, a set of statements is generally structured as a *block*, which in addition to grouping, usually also defines a new, nested lexical scope.

*Interrupts* and *signals* are low-level mechanisms that can alter the flow of control in a way similar to a *subroutine*, but usually occur as a response to some external stimulus or event (that can occur *asynchronously*), rather than execution of an in-line control flow statement.

Operationally, at the level of machine or assembly language, control flow instructions usually work by manipulating the program counter.

In some CPUs, the only available control flow instructions are *(un)conditional branch instructions*, also called *jumps*.

## Contents

- Categories
- Primitives
  - Labels
  - Goto
  - Subroutines
  - Sequence
- Minimal structured control flow
- Control structures in practice
- Choice
  - If-then-else statements
  - Case and switch statements
- Loops
  - Count-controlled loops
  - Condition-controlled loops
  - Collection-controlled loops
  - General iteration
  - Infinite loops
  - Continuation with next iteration
  - Redo current iteration
  - Restart loop
  - Early exit from loops
  - Loop variants and invariants
  - Loop sublanguage
  - Loop system cross-reference table
- Structured non-local control flow
  - Conditions
  - Exceptions
  - Continuations
  - Async
  - Generators
  - Coroutines
  - Non-local control flow cross reference
- Proposed control structures
  - Loop with test in the middle
  - Multiple early exit/exit from nested loops
- Security
- Bibliography
  - References
  - See also
  - Further reading


## Categories

The kinds of control flow statements supported by different languages vary, but can be categorized by their effect:
- Continuation at a different statement - *unconditional branch* or *jump*
- Executing a set of statements only if some condition is met, i.e. *choice*, a *conditional branch*
- Executing a set of statements, zero or more times, while/until some condition is met; i.e. *loop* - the same as a conditional branch
- Executing a set of distant statements, after which the flow of control usually returns, e.g. *subroutines*, *coroutines*, *continuations*
- Stopping the program, preventing any further execution, i.e. *unconditional halt*


* Branch (computer science) - Wikipedia
https://en.wikipedia.org/wiki/Branch_(computer_science)

* Branch (computer science) - Wikipedia
https://en.wikipedia.org/wiki/Branch_(computer_science)

* Subroutine - Wikipedia
https://en.wikipedia.org/wiki/Subroutine

* Coroutine - Wikipedia
https://en.wikipedia.org/wiki/Coroutine

* Continuation - Wikipedia
https://en.wikipedia.org/wiki/Continuation

* Near to the Metal - Computerphile - YouTube
https://www.youtube.com/watch?v=uNuFVq5QeRk&list=PLUTypj9XuPp4YBaHucPvr-zisHwfEGIEq
