# Introduction

*Functional Programming* (FP) is based around the idea that computation takes place by evaluating application of functions to arguments. Functions must be first-class values, that is, *Higher-Order Functions* (they take and return functions); functions can also be components of data structures.

*Lambda Calculus* (LC) is the first functional programming language (FPL) albeit a mathematical formalism, and many modern FPLs are founded upon it, or have it as their core language to which the entire surface syntax can be desugared.

Functional languages differ on the bases of whether they are
- strongly or weakly typed, or untyped
- dynamically or statically typed
- pure or impure
- strict or non-strict



*Pure Functional Programming Languages* (pFPL)
- lack assignment constructs
- an expression produces the same value no matter when it's evaluated
- have referential transparency
- side-effects like IO are carefully controlled and separated at the type level by monads and using unique types
- usually have non-strict semantics for functions
- their evaluation order is typically lazy (call-by-need)

*Impure Functional Programming Languages* (iFPL)
- allow side effects
- have strict semantics
- evaluation order is eager (call-by-value)

Recently, a new cross between *call-by-value* and *call-by-name* (which is *call-by-need* without sharing and memoization), has appeared, named *call-by-push-value*.


The advantages of pFPL is the absence of side-effects, which is a consequence of the referential transparency property and the fact that all flow of data is made explicit. The main benefit of non-strictness is higher modularity and more decoupling from evaluation concerns.


---

**First-class functions** are functions that can be passed around: either as arguments to functions or returned from functions. This is an intrinsic feature of a PL and the tersness of implementation heavily affects the syntax-appeal of a PL.

**Anonymous functions** are just nameless functions. This may imply they're impossible to reference (and in some PL that is true), but in JS they may be bound to a variable (external binding). However, even in PL that offer no support for external binding, it is still possible to implement recursion (Y combinator), which is probably the most interesting argument for FP, even if not a particularly practical one.

The second condition for pleasent FP is support for closures. A **closure** is an anonymous function that captures its lexical scope (the former is a technicality but the later is crucial). Closing over the lexical scope means that the free variables remain accessible even if the function "escapes" its defining environment. The escaping often happens by returning the closure from the enclosing parent function. Closure is often implemented in a PL as a structure or object becasue the values of the free variables the closure had available at the time of its creqation, must be saved to be always available, even if they don't exist later when the closure is invoked.
