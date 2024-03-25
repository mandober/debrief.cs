# PLT :: INDEX :: Programming Paradigms

There are only few paradigms that are truly different in their approach to programmin, at least as far as the failry familiar languages are concerned: imperative, purely functional and logical programming.

Imperative programming lets issue commands that mutate the program state; heavy use of low-level looping constructs. Organize code into objects, possibly modelled by classes, which means uniting the data and behavior relevant to that data. Code reuse in inheritence (setting up chains of inheritence) or by protytype chains. Programming to an interface later promoted a better approach.

Functional programming is almost the same, it maybe just uses a weirder syntax (e.g. too many parenthesis), but when you want to mutate something you can (it is discouraged? pffft). There are even classes and objects for OO ways. These "functional" PLs (Lisp, Scheme, ML, OCaml) are not that much of a shock to the system for imperative programmers; different idioms, but really sam shit.

Purely functional programming, on the other hand, is a bona-fide paradigm, not just a fake discouragment against the use of imperative constructs i.e. in-place state mutators, but then allowing them if you really must use them; No, siree Bob. Pure FPL just say no. A consistent, all encompasing "no", not a half-assed semi fake "no".





- Imperative programming
  explicit statements that change a program state

- Logic programming
  uses explicit mathematical logic for programming
- Constraint programming
  relations between variables are expressed as constraints (or constraint networks), directing allowable solutions (uses constraint satisfaction or simplex algorithm)

- Declarative programming
  describes what computation should perform, without specifying detailed state changes c.f. imperative programming (functional and logic programming are major subgroups of declarative programming)

- Concurrent programming
  have language constructs for concurrency, these may involve multi-threading, support for distributed computing, message passing, shared resources (including shared memory), or futures
- Distributed programming
  have support for multiple autonomous computers that communicate via computer networks
- Actor programming
  Concurrent computation with actors that make local decisions in response to the environment (capable of selfish or competitive behaviour)

- Dataflow programming (reactive)
  forced recalculation of formulas when data values change (e.g. spreadsheets)


- Functional programming
  uses evaluation of mathematical functions and avoids state and mutable data
- Purely functional programming
  uses pure functions only; prohibits state mutation, immutable data, monadic IO


- Generic programming
  uses algorithms written in terms of to-be-specified-later types that are then instantiated as needed for specific types provided as parameters


- Object-oriented programming (oo)
  uses data structures consisting of data fields and methods together with their interactions (objects) to design programs

- Class-based (oo)
  object-oriented programming in which inheritance is achieved by defining classes of objects, versus the objects themselves

- Prototype-based (oo)
  object-oriented programming that avoids classes and implements inheritance via cloning of instances

- Pipeline programming *?*
  a simple syntax change to add syntax to nest function calls to language originally designed with none.

- Metaprogramming
  writing programs that write or manipulate other programs (or themselves) as their data, or that do part of the work at compile time that would otherwise be done at runtime

- Reflective programming
  metaprogramming methods in which a program modifies or extends itself

- Template metaprogramming
  metaprogramming methods in which a compiler uses templates to generate temporary source code, which is merged by the compiler with the rest of the source code and then compiled

- Rule-based programming
  a network of rules of thumb that comprise a knowledge base and can be used for expert systems and problem deduction and resolution.
