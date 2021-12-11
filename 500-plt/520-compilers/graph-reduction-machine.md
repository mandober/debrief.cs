# Graph reduction machine

https://en.wikipedia.org/wiki/Graph_reduction_machine

A graph reduction machine is a special-purpose computer built to perform combinator calculations by graph reduction.

Examples include the `SKIM` ("S-K-I machine") computer, built at the University of Cambridge Computer Laboratory, and the multiprocessor `GRIP` ("Graph Reduction In Parallel") computer, built at University College London.


* Reduction Machines, Parallel Functional Programming: An Introduction
by Kevin Hammond
https://web.archive.org/web/20020731111557/http://www-fp.dcs.st-and.ac.uk/~kh/papers/pasco94/subsubsectionstar3_2_1_1.html
* T. J. W. Clarke, P. Gladstone, C. MacLean, A. C. Norman: SKIM - The S, K, I Reduction Machine. LISP Conference, 1980: 128-135


## An Introduction to Combinator Compilers and Graph Reduction Machines
by David Graunke
https://www.youtube.com/watch?v=GawiQQCn3bk

*Graph reducing interpreters* combined with *compilation to combinators* creates a "virtual machine" compilation target for pure lazy functional programs that is extremely concise, simple in its semantics, and naturally parallelizable. In their simple forms these techniques are a useful introduction to compiling and interpeting functional languages. In much more sophisticated forms, they illustrate how large-scale compilers are implemented in used in languages like `Idris`.

We'll walk through the process of compiling programs in the *lambda calculus* to *pure combinators* and a simple implementation of the most straightforward *graph reduction algorithm*. With that context, we'll look at the history of graph reduction, from a surge of interest and excitement in the 80s and 90s to serious reservations in the 2000s. We'll look at concrete examples of *combinator compilation* and *graph reduction*, and compare with alternative techniques in Haskell's *Spineless Tagless G-Machine* (STGM).
