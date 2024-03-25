# Referential Transparency

https://en.wikipedia.org/wiki/Referential_transparency

**Referential transparency** is the property of functions (expressions) which signifies that a function's (output) value depends exclusively on its arguments (on its input value), and nothing else.

Referential transparency is behind *equational reasoning* in pure FP languages such as Haskell. In fact, *purity* is a necessary condition for RT.

Referential transparency fuels a program's evaluation by allowing one to replace *equals by equals*, whether a compiler is performing the evaluation, or a person is trying to understand the program by "running it" in their head. (kad tamo zombie). Referential transparency implies that a well-formed sub-expression can be replaced by another with the same value without effecting the overall value of the expression.

In a pure FPL (Haskell), functions always produce the same output given the same input. This opens the door to *memoization* technics for caching the input/output pair in a lookup table, so the calculation is only performed once for a given input.

---

A program (computation) is a transformation from input data to output data. An imperative program = algorithm + data. A functional program is a composition of functions. At the topmost level a Haskell program is a set of modules (scripts) that provide a way to control namespaces and to re-use software in large programs. The top level of a module consists of a collection of declarations (e.g. values, datatypes, type classes). At the next lower level are expressions, which are the heart of Haskell programs. An expression denotes a value and has a static type. The bottom level is the lexical structure of Haskell. The lexical structure captures the concrete representation of Haskell programs in text files.

The purpose of a *definition* is to introduce a *binding* associating a given *name* with a given definition. A set of bindings is called an *environment* or *context*.

> An expression is always evaluated in a particular context, and the context must contain the definitions of all free (unbound) names that occur in the evaluated expression.

*Scripts* are collections of definitions. A definition is expressed as a set of mathematical equations that relate expressions, describing different functions. A function is a set of equations, and each equation equates its left-side and right-side expressions so that replacing equals for equals is always possible. Every definition has to be accompanied by a type signature, whether user-provided or inferred by the compiler. During an interactive session in GHCi, scripts can be loaded in order to introduce new definitions, which extent the current working environment. Definitions can contain references to other functions from the Prelude module, the standard library, or third-party packages.

In pure FPL, the computer is a glorified calculator ~~sigh~~ evaluating expressions by reducing them to their simpler forms. A reducable expression is called a *redex*. The terms *evaluation*, simplification, *reduction* are related, and most of the time used interchangeably, to describe this process.

**Strict evaluation** strategy proceeds by reducing the **left-most inner-most** expression first. With this strategy, functions' arguments are fully evaluated before being passed into the function, which is also referred to as the call-by-value, and eager evaluation. This order of reduction is called the *application order*. The down side of this strategy is that all arg expressions are fully evaluated, every time, even if duplicated (like if two args are the same), or even if not used in the function at all (which is not such a rare occurrence). Also, strict evaluation disallows defining infinite data structures (you must determine, e.g. the max number of list's elements even if you cannot form an educated guess at that particular moment; or maybe the collection needs to stay flexible, length-wise).

**Non-strict evaluation** strategy reduces the leftmost-outermost redex first. Using this strategy, things are evaluated strictly when needed. Argument expresion is passed unevaluated (untouched) to a function, and then the function can proceed to evaluate it somewhat when needed; "somewhat" because there are several layers to peel off of an expression before it reaches the normal form. This evaluation strategy is called call-by-name or call-by-need (if the evaluated expressions are memoized), or lazy evaluation. This order of reduction is called the *normal order*.

An expression has reached its canonical or *normal form* if it cannot be reduced further. Not every expression has a normal form. One characteristic feature of FP is that if two reduction paths (sequences) terminate, then they produce the same result. This is knows as the **Church-Rosser theorem**. So, the meaning of an expression is its value and the task of the computer is simply to obtain it.
