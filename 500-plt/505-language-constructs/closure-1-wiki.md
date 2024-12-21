# Closure

https://en.wikipedia.org/wiki/Closure_(computer_programming)

In programming languages, a *closure*, aka *lexical closure* or *function closure*, is a technique for implementing *lexically scoped name binding* in a language with *first-class functions*.

>Operationally, a **closure** is a *record* storing a function, together with an environment.

The function may be stored as a reference to a function, such as a function pointer.

The *environment* is a mapping associating each *free variable* of the function (variables that are used locally, but defined in an enclosing scope) with the value (or reference) to which the *name* was bound when the closure was created.

These names usually refer to values, mutable variables, or functions, but can also be other entities such as constants, types, classes, or labels.

Unlike a plain function, a closure allows the function to access those *captured variables* through the closure's copies of their values or references, even when the function is invoked outside their scope.

## Contents

- 1. History and etymology
- 2. Anonymous functions
- 3. Applications
  - 3.1. First-class functions
  - 3.2. State representation
  - 3.3. Other uses
- 4. Implementation and theory
- 5. Differences in semantics
  - 5.1. Lexical environment
  - 5.2. Example 1: Reference to an unbound variable
  - 5.3. Example 2: Accidental reference to a bound variable
  - 5.4. Closure leaving
- 6. Closure-like constructs
  - 6.1. Callbacks (C)
  - 6.1.1. Nested function and function pointer (C)
  - 6.2. Local classes and lambda functions (Java)
  - 6.3. Blocks (C, C++, Objective-C 2.0)
  - 6.4. Delegates (C#, VB.NET, D)
  - 6.5. Function objects (C++)
  - 6.6. Inline agents (Eiffel)
  - 6.7. C++Builder __closure reserved word


## 1. History and etymology

## 2. Anonymous functions

## 3. Applications

### 3.1. First-class functions

### 3.2. State representation

A closure can be used to associate a function with a set of "private" variables, which persist over several invocations of the function. The scope of the variable encompasses only the closed-over function, so it cannot be accessed from other program code. These are analogous to private variables in object-oriented programming, and in fact closures are similar to stateful function objects (or functors) with a single call-operator method.

In stateful languages, closures can thus be used to implement paradigms for state representation and information hiding, since the closure's upvalues (its closed-over variables) are of indefinite extent, so a value established in one invocation remains available in the next. Closures used in this way no longer have referential transparency, and are thus no longer pure functions; nevertheless, they are commonly used in impure functional languages such as Scheme.

### 3.3. Other uses


## 4. Implementation and theory

Closures are typically implemented with a special data structure that contains a pointer to the function code (function pointer), plus a representation of the function's lexical environment (i.e. the set of available variables) at the time when the closure was created.

The *referencing environment* binds the non-local names to the corresponding variables in the lexical environment at the time the closure is created, additionally extending their lifetime to at least as long as the lifetime of the closure.

When the closure is entered at a later time, possibly in a different lexical environment, the function is executed with its non-local variables referring to the ones captured by the closure, not the current environment.

A language implementation cannot easily support full closures if its run-time memory model allocates all automatic variables on a linear stack. In such languages, a function's automatic local variables are deallocated when the function returns.
>However, a closure requires that the free variables it references survive the enclosing function's execution.
Therefore, those variables must be allocated so that they persist until no longer needed, typically via *heap allocation*, rather than on the stack, and their lifetime must be managed so that they survive until all closures referencing them are no longer in use.

This explains why, typically, languages that natively support closures also use *garbage collection*. The alternatives are manual memory management of non-local variables (explicitly allocating on the heap and freeing when done), or, if using stack allocation, for the language to accept that certain use cases will lead to *undefined behaviour*, due to dangling pointers to freed automatic variables, as in *lambda expressions in C++11* or *nested functions in GNU C*.

**The funarg problem** (or "functional argument" problem) describes the difficulty of implementing functions as first class objects in a stack-based programming language (such as C or C++).

Similarly, in D version 1, it is assumed that the programmer knows what to do with *delegates* and automatic local variables, as their references will be invalid after return from its definition scope (automatic local variables are on the stack) - this still permits many useful functional patterns, but for complex cases needs explicit heap allocation for variables. D version 2 solved this by detecting which variables must be stored on the heap, and performs automatic allocation. Because D uses garbage collection, in both versions, there is no need to track use of variables as they are passed.

In strict functional languages with immutable data (e.g. Erlang), it is very easy to implement automatic memory management (garbage collection), as there are no possible cycles in variables' references. For example, in Erlang, all arguments and variables are allocated on the heap, but references to them are additionally stored on the stack. After a function returns, references are still valid. Heap cleaning is done by incremental garbage collector.

In ML, local variables are lexically scoped, and hence define a stack-like model, but since they are bound to values and not to objects, an implementation is free to copy these values into the closure's data structure in a way that is invisible to the programmer.

Scheme, which has an ALGOL-like lexical scope system with dynamic variables and garbage collection, lacks a stack programming model and does not suffer from the limitations of stack-based languages. Closures are expressed naturally in Scheme. The lambda form encloses the code, and the free variables of its environment persist within the program as long as they can possibly be accessed, and so they can be used as freely as any other Scheme expression.

Closures are closely related to *Actors* in the Actor model of concurrent computation where the values in the function's lexical environment are called *acquaintances*. An important issue for closures in concurrent programming languages is whether the variables in a closure can be updated and, if so, how these updates can be synchronized. Actors provide one solution.

Closures are closely related to function objects; the transformation from the former to the latter is known as *defunctionalization* or *lambda lifting*; see also *closure conversion*.

https://en.wikipedia.org/wiki/Function_object
https://en.wikipedia.org/wiki/Defunctionalization
https://en.wikipedia.org/wiki/Lambda_lifting
https://en.wikipedia.org/wiki/Closure_conversion
https://en.wikipedia.org/wiki/Callback_(computer_programming)

https://en.wikipedia.org/wiki/Escape_continuation

https://en.wikipedia.org/wiki/Lambda_lifting

## 5. Differences in semantics

## 6. Closure-like constructs

https://en.wikipedia.org/wiki/Function_object




## See more

https://en.wikipedia.org/wiki/Command_pattern
https://en.wikipedia.org/wiki/Currying
https://en.wikipedia.org/wiki/Lambda_calculus
https://en.wikipedia.org/wiki/Partial_application
https://en.wikipedia.org/wiki/Syntactic_closure
https://en.wikipedia.org/wiki/Value-level_programming
