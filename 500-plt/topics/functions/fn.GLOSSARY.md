# CS :: Functions :: GLOSSARY

## Terms


## TOC

## Arity
Arity refers to the number of arguments a function or operator takes. Languages that support automatic partial application, only have unary functions. Such functions are unary (arity is 1); functions that take two arguments are binary; generally all functions are n-ary.

## Bidirectional map
A bidirectional map, or a hash bag, is an associative data structure in which the key-value pairs form a one-to-one correspondence (bijection). Thus, the binary relation is functional in each direction: key <-> value. An `(a,b)` pair is such that `a` can be used as a key to find a value `b`, `a -> b`, and vice versa, `b -> a`.

## Böhm-Berarducci encoding
The typed version of Church encoding that can be used to model data structures in a typed lambda calculus (using only functions).

## Closure


A closure is a function, `g`, that has escaped its original scope - commonly, by being returned from a higher-order function, `f`, inside of which it is lexically nested - but nevertheless holds a set of references to values from its originating environment, even if that environment is long gone.

A closure is a function, `k`, that "closes over" its original env - meaning it binds a subset of values from the environment it is defined in (also called its lexical scope). In fact, only a function that has escaped its originating env is called a closure. Normally, this happens when a nested function is returned by the enclosing function (support for first-class functions is reqyuired).

, `f`, inside of which it is nested


Commonly, this happens when a higher-order function, `f`, inside of which is a nested function (our wanna be closure) `h`, returns the function `f`


Actually, it holds a set of references to the values accessible to it from its originating env. 

the values if its enclosing environment, keeping a reference to them even if they get destroyed (drop out of scope).


together with the subset of the enclosing environment.

Closures are a feature of PLs that is similar to functions. A closure is a subroutine (a function) that, besides its regular local variables, also supports nonlocal (free) variables that get bound to values from the enclosing environment, at the compile-time (static binding) or run-time (dynamic binding). In modern PLs, exp. in FPL, a closure is created when a higher-order function `f` returns a function `g`, where `g` is often a function nested inside `f`. The returned function has references to a set of values from its original environment, even though it later finds itself inside another environment.


containing the free variables of this function. The environment allows the function to reference its free variables by extending their lifetime to the lifetime of the closure itself

## Composition over inheritance
or composite reuse principle in object-oriented programming (OOP) is the principle that classes should achieve polymorphic behavior and code reuse by their composition (by containing instances of other classes that implement the desired functionality) rather than inheritance from a base or parent class.

## Hash bag
(v. Bidirectional map)

## Inlining
In principle, inlining is very simple optimization technic where a function call is replaced by an instance of the function's entire body, thereby skipping the need to jump (relatively slow maneuvre).

Inlining is the practice of replacing a function call with the called function's body, pasted right into the callsite, eliding the jump.

to a function by including the function body directly into the callsite, enabling optimizations (such as avoiding the overhead of a function call). It is controlled with the `inline` attribute:
  - `#[inline(never)]`
  - `#[inline]` hint to the compiler that inlining is desirable. It is required for any cross-crate inlining.
  - `#[inline(always)]` hint to the compiler that inlining is required.
2. Data structure: 
  when a data structure is inlined it means it is on the stack. e.g. array is inlined, contiguous sequence with a fixed size at compile time.

## Interface
Interface is used to define an abstract type that defines behaviors as method signatures. It describes the contract which types that implement it need to obey. In Rust, interface is realized through traits.

## Invariant
An invariant is a condition that can be relied upon to be true during execution of a program, or during some portion of it. It is a logical assertion that is held to always be true during a certain phase of execution. For example, a loop invariant is a condition that is true at the beginning and end of every execution of a loop.

## Jump
A jump transfers the control of execution to another location in the program, normally used to handle some particular situtation. A *local jump* is a jump within the same functoon. A *relative jump* is an unconditional jump to a label.



## Monomorphization
Monomorphization, a form of _static dispatch_, is a process of turning generic into concrete code. When generic code is used, concrete types replace generic types (concretization of code). This results in the code that would have been written in the first place if only concrete types were available.

Monomorphization increases code size, which, in some cases (that are avoidable by employing certain strategies) is referred to as the _code (size) bloat_, but the generated machine code is highly efficient (because concrete types are used) and very fast (which is never referred to as the _speed bloat_). The alternative with inversed trade-offs is _dynamic dispatch_.

## Nominal Types
Types identified by name, as opposed to their internal structure.

## Recursion
The recursion may involve other language entities, but it is by far most commonly realized with functions, which are, thus, referred to as recursive functions. A half-assed description of such functions says that "recursion is when a function calls itself", a phrase that raised the concern to quickly come up with something more stronk, moonshine well-foundedness newly-foundland [throw out the imposters]. In the modern treatment, the term "recursion" almost always entails well-foundedness.

The *well-founded recursion* manages to curb the recursive set of arguments and make it (in some sense) smaller, with each iterative step, on its way towards the base case. Or, more briefly, it is a (recursive) function that (always) terminates.

Recursion is closely related to mathematical induction.

Recursion is a divide-and-conquer technic applicable to solving self-similar computational problems. The self-similarity of a problem means that the same function (recursion is most commonly realized through a recursive function) can be used to solve all the subproblems that the main problem is broken down into. This is where the "self-similarity" kicks in: the main problem and all the (generated) subproblems have to be sufficiently similar.

(recursion = analysis + synthesis) Or, from another perspective, it must be possible to synthesize the main problem back from the set of the ever so smaller components it is being reduced to by analysis.

In a narrow sense, the term "recursion" is used to describe a computational structure in which the solution to any but the simplest instances of a problem requires, as an initial step, the solution of one or more subproblems of the same sort. Recursive procedure invocations are used to obtain the results for these subproblems, which are then brought together and postprocessed. The results of the postprocessing are returned as the results of the original invocation of the recursive procedure.

## Reentrant function
A function is reentrant if it can be interrupted in the middle of its execution, and then be safely called again ("re-entered") before its previous invocations complete execution.

## Static dispatch
Static dispatch usually resolves polymorphic calls using _monomorphization_. It allows _inlining_ of function calls.

## Strictness Analysis
Strictness analysis is used to prove whether a function is strict in one or more of its arguments. A strict argument is guaranteed to always be evaluated by the function and hence the evaluation can also be done on the caller side instead. This can lead to a significant decrease in thunks in the program and therefore improved performance, since unnecessary evaluation of them can be eliminated.

## Symmetric function
A function is symmetric is it can be composed with itself.

## Tail-Recursion Elimination
A function is said to be tail-recursive if the last operation performed in its body is a bare recursive call (without further touching the result of the call). Such a recursive function does not need the previous stack frames since it leaves nothing there (don't touch the results of the call part - you may only return it, nothing else). This opens up the possibility to optimize away such functions by converting them into a iterative version, e.g. a (bounded) loop computation.
