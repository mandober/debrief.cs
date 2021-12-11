# Abstract Interpretation

https://en.wikipedia.org/wiki/Abstract_interpretation

*Abstract interpretation* is a theory of sound approximation of the semantics of computer programs, based on monotonic functions over ordered sets, especially lattices.

It can be viewed as a partial execution of a computer program which gains information about its semantics (control-flow, data-flow) without performing all the calculations.

Its main concrete application is formal static analysis, the automatic extraction of information about the possible executions of computer programs; such analyses have two main usages:
- inside compilers, to analyse programs to decide whether certain optimizations or transformations are applicable
- for debugging or even the certification of programs against classes of bugs
