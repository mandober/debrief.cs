# Denotational Semantics

**Denotational semantics** is a method to formalize the meaning of a PL. Using **denotations**, which are mathematical objects, we give mathematical meaning to the expressions in a PL. When each expression represents a conceptual meaning we can reason about them abstractly.

In practice, denotations are described using some form of mathematical notation, formalizable into a denotational metalanguage. For instance, denotational semantics of functional languages often translates the language to domain theory. (Domain theory is a branch of order theory as it studies domains, which are special kinds of posets)


## Historical
Denotational semantics originated in the work of Christopher Strachey and Dana Scott published in the early 1970s. As originally developed, denotational semantics provided the meaning of a computer program as *a function that mapped input into output*.

To give meanings to recursively defined programs, Scott proposed working with *continuous functions between domains*, specifically *complete partial orders*. As described below, work has continued in investigating appropriate denotational semantics for aspects of programming languages such as sequentiality, concurrency, non-determinism and local state.

## Meanings

*Denotational semantics are given to a program phrase as a function from an environment to its denotation*. The environment holds the current values of the free variables. For example, the phrase `n * m` produces a denotation when provided with an environment; if `n` is `3` and `m` is `5` in the current environment, then the denotation for `n * m` is `15`.

In math, a function is a graph defined by a set of ordered pairs, `(x, f(x))`; the first element of such pair is the function's input (argument) and the second element is the function's output corresponding to that input. For example, this set of ordered pairs $$\{(0,0),(1,1),(2,4)\}$$ denotes a partial function - its ouput is defined only in case the input is 0, 1 or 2; in all other cases, its output is undefined.

## Recersion
An important problem in denotational semantics is providing meaning for a recursive program, that is, a program that's defined in terms of itself.

It is trivial to formally specify that the (Haskell) program/function 
`square x = x*x` means the same thing as the mathematical square function, 
$$f(x)=x^2$$, that maps each number to its square. However, the meaning of a program that loops forever, like `f x = f (x+1)`, is another story.











---

https://en.wikipedia.org/wiki/Denotational_semantics
https://en.wikipedia.org/wiki/Domain_theory
https://en.wikipedia.org/wiki/Metric_space


In denotational semantics, the basic idea is to map every syntactic entity associated with a programming language into a mathematical object, that is, to translate PL constructs into mathematical objects.

Denotational semantic definition has 5 parts:
1. Semantic equations
2. Syntactic categories
3. Semantic functions
4. Backus-Naur Form (BNF)
5. Value domains

Backus-Naur Form (BNF) defines the structure of syntactic categories.

Denotational semantics have been developed for modern PL which have features like exceptions and concurrency; however, dealing with recursion can become unwieldy.

An important feature of denotational semantics is that semantics should be *compositional*; denotation of an expression should be constructible from the denotations of its sub-expressions.

Denotational semantics provides a precise metalanguage based on mathematics to reason about things (and math is not a framework like any other).
