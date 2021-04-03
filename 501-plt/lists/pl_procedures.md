# PL: semi-clustered terms about callables

# Functions

* Function abstraction:
  - function declaration
  - function definition
  - function statement
  - function expression
  - function signature
  - function prototype
  - external function

function application
main function
function object
recursion
FFI

* Calling conventions:
  - CDECL
  - fastc

* Calling mechanics:
  - the (call) stack
  - stack overflow
  - stack underrun/underflow

* Call convention:
  - call-by-value (evaluate args before the function call)
  - call-by-name (don't evaluate args before the function call)
  - call-by-need (evaluate args only as a last resort)

* Name-wise:
  - named function
  - anonymous function

* Types (I):
  - inline function
  - inlined function
  - callback function
  - closure
  - thunk
  - continuation
  - generator

* Types (II):
  - preemptive function, omni-something
  - run-to-completion

* Identifiers-wise
  - function type
  - function input type
  - function output type
  - function parameter
  - formal parameters (is it always a tuple or mul-tuple individual params?)
  - actual parameter
  - function argument, argument
  - function scope
  - shadowed identifier
  - function binding
  - free variable
  - bound (local) variable
  - return value
  - return status
  - variables
  - static variables
  - constants

* State-wise:
  - closure
  - mathematical function
  - pure function
    - side-effects
    - honest function, IoC, (use only what was required)
    - memoization
    - referential transparency (replace fn with its result)

* Arity
  - nullary
  - unary
  - binary
  - ternary
  - n-ary
  * have arity

- currying, uncurrying, tuple and list wrt to args and formal params
- partial application


----

# Callables

# Programming Language Concepts: Callables

- Components/Elements
  - head, header
  - body

- Variables
  - Parameter
    - Formal parameter
    - Actual parameter
  - Argument

- Evaluation strategies
  - Eager evaluation
  - Lazy evaluation
  - Partial evaluation
  - Remote evaluation
  - Short-circuit evaluation

- Calling conventions/Evaluation strategies
  - 1. Strict evaluation
    - 1.1 Applicative order
    - 1.2 Call by value
      - 1.2.1 Implicit limitations
    - 1.3 Call by reference
    - 1.4 Call by sharing
    - 1.5 Call by copy-restore
    - 1.6 Partial evaluation
  - 2. Non-strict evaluation
    - 2.1 Normal order
    - 2.2 Call by name
    - 2.3 Call by need
    - 2.4 Call by macro expansion
  - 3. Nondeterministic strategies
    - 3.1 Full β-reduction
    - 3.2 Call by future
    - 3.3 Optimistic evaluation

Anonymous function

Aggregate function
Binary-safe
Blocks (C language extension)
Call site
Call stack
Call-with-current-continuation
Callable object
Callback (computer programming))
Calling convention
Closure (computer programming))
Convenience function
Coroutine
Default argument
Deferred Procedure Call
Defun
Delegate (CLI))
Driver wrapper
Event (computing))
First-class function
First-class message
Foreign function interface
Function object
Function pointer
Function prologue
Function prototype
Function type
Higher-order function
Inline expansion
Interrupt handler
Leaf subroutine
Named parameter
Nested function
Null function
Parameter (computer programming))
Procedural parameter
Protected procedure
Protected procedure call
Pure function
Recursion (computer science))
Reentrancy (computing))
Return statement
Return type
Stored procedure
Stubroutine
Tail call
Type signature
Uniform Function Call Syntax
User exit
User-defined function
Va list
Variadic function
Wrapper function

## Programming Language Concepts: Functions

* Function
  - functions in math
  - functions in PL (subroutine, procedure, function, block)
  * by IO
    - input and output
    - procedure: optional input and output
    - function (input and output requirements)

Purity
- side-effects

  - Function mechanics
    - call stack
    - calling conventions
  - Function construction
    - definition
    - declaration
    - prototype
    - application
  - Function components
    - head
      - keyword
      - identifier (name)
      - formal parameters
    - body
    - Arguments

- Evaluation strategy
  - lazy
  - normal
  - applicative
- Types of calls
  - call by value
  - call by sharing
  - call by address
  - call by reference
  - call by name
  
  - Functions as values
    - first-class functions
    - accepting a function
    - returning a function
    - HOF
  - Properties
    - honesty
    - purity
    - mutability
    - referential transparency
  - Optimizations
    - Memoization
    - Inlining
    - Tail-call optimization
  - Operations
    - Currying
    - Partial application
    - Composition
    - Pipeline
  - Recursion
    - Primitive recursion
    - Recursion
    - Tail-call
  - More about functions:
    - async
    - generators
    - idempotency
    - arity
    - fix-point
    - anonymous
    - thunk
    - evaluation
  - Functions in:
    - Math
    - C
    - Rust
    - JS
    - TS
    - Python
    - VBA


Evaluation strategies
Eager evaluation
Lazy evaluation
Partial evaluation
Remote evaluation
Short-circuit evaluation

Anonymous function
Closure
Delegate

Aggregate function
Binary-safe
Blocks (C language extension)

Call site
Call stack
Call-with-current-continuation
Callable object
Callback
Calling convention

Convenience function
Coroutine
Default argument
Deferred Procedure Call
Defun
Driver wrapper
Event (computing))
First-class function
First-class message
Foreign function interface
Function object
Function pointer
Function prologue
Function prototype
Function type
Higher-order function
Inline expansion
Interrupt handler
Leaf subroutine
Named parameter
Nested function
Null function
Parameter (computer programming))
Procedural parameter
Protected procedure
Protected procedure call
Pure function
Recursion (computer science))
Reentrancy (computing))
Return statement
Return type
Stored procedure
Stubroutine
Tail call
Type signature
Uniform Function Call Syntax
User exit
User-defined function
Va list
Variadic function
Wrapper function


Subroutine
https://en.wikipedia.org/wiki/Subroutine

Parameter, Argument
https://en.wikipedia.org/wiki/Parameter_(computer_programming)

Calling convention
https://en.wikipedia.org/wiki/Calling_convention

Evaluation strategy
https://en.wikipedia.org/wiki/Evaluation_strategy
https://en.wikipedia.org/wiki/Category:Evaluation_strategy
