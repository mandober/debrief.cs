# Programming language implementation

This section deals with a harware implementation of programming languages. That is, with the approaches and strategies toward the actual mapping of common language features onto hardware.

For example, by focusing on functions only, there is a tonne of questions regarding the realization of functions (or more precisely, subroutines) in hardware:
- the actual implementation of functions/subroutines
- where does the code that makes up the function (particularly its body) live
- whare are functions stored
- accepting arguments
- managing local variables
- extent (liveliness) of variables
- making the result available to the caller
- returning to the caller
- storage concerns in terms of variable's extent
- allowed places to put different kinds of values (args, locals, return value)
- memory use protocols and conventions
- the calling conventions
- the call stack
- involving heap memory to extend the lifetime of vars
- using registers
- comparison and constraints of register vs stack usage
- function invocation
- transfer of control
- concerns regarding recursive function calls
- issues with implementing closures
- partial function application
- auto-currying
- nested functions
- question of scope: dynamic vs static (lexical)
- binding time
- evaluation strategies (eager, lazy; strict, non-strict)
- call-by value, name, reference, need, sharing
- copy vs reference semantics of args in fn calls (imperative)
- mutability of memory objects when bound as reference args to a fn?
- reference semantics differences: &arg for args vs &param for formal params?
- args and params with qualifier keywords (const, mut, out, auto, static, etc.)

In brief, the strategies, problems and tradeoffs associated with the actual implementation of more common PL features from the syntactical to the operational aspect, particularly the latter. That is, their realization into hardware, or, as it is said, *mapping PL features onto hardware*.


* Spilling registers
★ The CPU has a limited number of registers for use by all functions, and it's possible that several functions will need the same registers.   
★ We can keep important registers from being overwritten by a function call, by saving them before the function executes, and restoring them after the function completes.   
★ There are two important questions:   
- Who is responsible for saving registers-the caller or the callee?
- Where exactly are the register contents saved?

>Who is responsible for saving important registers across function calls?
- The caller knows which registers are important to it and should be saved.
- The callee knows exactly which registers it uses and potentially overwrites.

However, in the typical "black box" programming approach, the caller and callee do not know anything about each other's implementation. 1) Different functions may be written by different people or companies. 2) A function should be able to interface with any client, and different implementations of the same function should be substitutable. So how can two functions cooperate and share registers when they don't know anything about each other?
