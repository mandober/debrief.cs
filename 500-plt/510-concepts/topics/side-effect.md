# Side Effects

https://en.wikipedia.org/wiki/Side_effect_(computer_science)

In most languages, a function has its own scope, i.e. its local environment, separate from other outer environments, and the global environment. A function (or possibly an expression, in general) is said to have a side effect if it has an *observable effect* on something outside of its *local environment*.

These effects work on two levels: the first level is making changes to the more immediate code, including modifications to other environments, outside its own; this tipically this ocurs when a function accesses (reads, updates, over-writes) state values or another implicit state. At the more general level, side effects are any interaction with the system in the form of system calls, access to the FS items via file descriptors, interaction with a user by reading and writing to the terminal (although that is a type of file descriptor as well, viz. stdin, stdout, stderr).

* The *state* is a set of, typically global, but possibly also static, variables that maintain some internal state of the program.

* Interaction with I/O subsystem.

* interacting with file descriptors (files, dires, other FS items, terminal stdin/out/err), in other words, interaction with the things that are considered part of the basic input/output subsystem.

* interaction with the terminal (more generally, interacting with the file descriptors which includes reading, writing files, but also file-like resources (stdin, stdout, stderr) when performing actions such as prompting the user, reading user's input, writing messages to the console.


That something may be many things like the state values of *state* variables outside of its *local environment*; that is, it has at least another *observable effect* besides its *main effect* (returning a value is the main effect) to the code that invoked it.

---

State data updated "outside" of the operation may be maintained "inside" a stateful object or a wider stateful system within which the operation is performed. Example side effects include modifying a non-local variable, modifying a static local variable, modifying a mutable argument passed by reference, performing I/O or calling other side-effect functions. In the presence of side effects, a program's behaviour may depend on history; that is, the order of evaluation matters. Understanding and debugging a function with side effects requires knowledge about the context and its possible histories.

The degree to which side effects are used depends on the programming paradigm. Imperative programming is commonly used to produce side effects, to update a system's state. By contrast, declarative programming is commonly used to report on the state of system, without side effects.

In functional programming, side effects are rarely used. The lack of side effects makes it easier to do formal verifications of a program. Functional languages such as Standard ML, Scheme and Scala do not restrict side effects, but it is customary for programmers to avoid them. The functional language Haskell expresses side effects such as I/O and other stateful computations using monadic actions.

Assembly language programmers must be aware of hidden side effects-instructions that modify parts of the processor state which are not mentioned in the instruction's mnemonic. A classic example of a hidden side effect is an arithmetic instruction that implicitly modifies condition codes (a hidden side effect) while it explicitly modifies a register (the overt effect). One potential drawback of an instruction set with hidden side effects is that, if many instructions have side effects on a single piece of state, like condition codes, then the logic required to update that state sequentially may become a performance bottleneck. The problem is particularly acute on some processors designed with pipelining (since 1990) or with out-of-order execution. Such a processor may require additional control circuitry to detect hidden side effects and stall the pipeline if the next instruction depends on the results of those effects.

---


Albeit pure, pFPLs can still perform computations that have side effects, such as input-output, destructive updates, concurrency, exceptions, etc.

> The key in modelling stateful computation in purely functional terms is to pass around the state as an extra argument from function to function.

This is possible because expressions in a pFPL are referentially transparent, making variables immutable, always having the value with which they were initilazed. 

Purely functionally, a state that changes in time can be modelled as a sequence of immutable state values that are passed and returned from function to function.

---

## Modelling side-effects

The side-effects are all about statements and actions, they involve mutation and break referential transparency. On the other hand, FPL is about *pure* functions and expressions which begs the question how to deal with side-effects.

We could lift all actions into a container (context, structure) and *defer their execution* until we collect them all, or at least until we really need them.

An unevaluated action is still a *value*, it's an unrealized abstraction. An *effect* is something that will enable us to go from a side-effect to a value.
