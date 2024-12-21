# PL Features :: Continuations

- About continuations
- What is a continuation?
- first-class functions
- first-class continuations
- Continuations in Scheme

Most PLs support subroutines as the most fundamental means of code abstraction. Subroutines have various implementations across PLs as procedures, subprograms, blocks, but to makes matters easier we'll refer to them as functions.

## Direct style

When a function is called, it does some computation and then returns the result to the caller. More precisely, the call site yields the control flow to the function it is invoking. The function then takes over the control, performs its calculation, and when done, it yields control back to the caller, possibly along with the value it has computed. This is of programming is called **direct style**.

In direct style, the control flow goes back and forth between the top-level code and the called functions. Most characteristically, functions hand back control to the caller using the `return` statement by itself (e.g. as `return;` - the semi-colon is often used as a statement terminator). Optionally, a function can also send back the computed value with `return val;` statement.








although functions, unlike procedures, are closer to proper mathematical functions in that they must accept and return a value; i.e. a function is not allowed to return nothing, it must return some type of value, even if it's trivial (like the unit type/value).



A PL that supports functions as first-class values, like FPLs such as Haskell do, has higher-order functions (HOFs or functionals) which means they can accept functions as arguements (farg, function argument).




continuations

The Scheme language, a dialect of Lisp, was the first to support continuations as the first-class values.

can manipulate continuations to some extent, because a continuation is nothing but a function with specific type; except when it isn't.

That is, a continuation may be equivalent to a function, but sometimes it isn't a function nor any familiar language type, but a standalone language entity on its own.

Scheme was the first language to support and handle continuations in this extended meaning, when continuations go beyond functions and are closer to language constructs.
