# Total functional programming

https://en.wikipedia.org/wiki/Total_functional_programming

**Total functional programming** is a programming paradigm that restricts the range of programs to those that are provably terminating.

Termination is guaranteed by the following restrictions:
- A restricted form of recursion, which operates only upon 'reduced' forms of its arguments, such as *Walther recursion*, *substructural recursion*, or *strongly normalizing* as proven by abstract interpretation of code.
- Every function must be a total function.

There are several possible ways to extend partial functions to be total:
- choosing an arbitrary result for inputs on which the function is undefined
- supplying a default argument to specify the result for undefined inputs
- excluding undefined inputs by use of type system features (refinement types)

These restrictions mean that total functional programming is not Turing-complete, however, the set of usable algorithms is still huge.
