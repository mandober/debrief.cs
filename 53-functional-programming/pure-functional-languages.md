# Pure Functional Programming Languages

The advantages of pure FPL is the absence of *side-effects*, which is a consequence of the *referential transparency* property and the *explicit data flow*.

Since a program in FP is written as a set of equations, explicit data flow ensures that the value of an expression depends only on its *free variables* and that the *order of evaluation* of computation is irrelevant. But in some cases, having to make all input and output data explicit can be cumbersome and inefficient.

It is often more convenient to have a global state that is updated as the computation is carried out; but passing this state around can bury the basic computation under "the plumbing" necessary to carry data from the point of creation to its point of use.

Another case is the updating of a large data structure, when there is no need to persist the old version of the structure since it is not to be used again. Additionally, dealing with input-output, file handling, reading from a database, printing to the console, etc., are just some out of the plethora of effectual computations.

Haskell provides a way of dealing with side-effects by using the mathematical notion of monad. This concept arises from category theory but it can be expressed and understood without any reference to category theory.

Monads represent computations: if $$m$$ is a monad then an object of type $$m a$$ represents a computation producing a result of type $$a$$.

Many effectual computations can be modelled with monads.
