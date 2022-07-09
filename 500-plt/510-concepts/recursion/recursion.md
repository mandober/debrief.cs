# Recursion

https://en.wikipedia.org/wiki/Recursion_(computer_science)

This article is about recursive approaches to solving problems (for proofs by recursion, see mathematical induction).

- recursion
  - recursion
  - corecursion
  - mathematical induction
  - mathematical coinduction
  - recursive function
    - set of base cases
    - set of recursive cases
    - recursive parameter
  - well-founded recursion
  - structural recursion
  - structural induction
  - mutual recursion
  - primitive recursive functions
  - tail call optimization
  - accumulator


## Recursion in general

https://en.wikipedia.org/wiki/Recursion

Recursion occurs when a thing is defined in terms of itself or of its type.

Recursion is used in a variety of disciplines including linguistics, logic, mathematics, computer science. The last feature the most common application of recursion in the form of recursive functions.

A recursive function is a function defined in terms of itself. Normally, a term (a PL identifier or a mathematical operator) is defined by placing its name on the left-hand side of the equals sign, while the expression defining it is placed on the right. An example of a non-recursive function definition might be `f x = 2 + x`; this defines the function named `f` with takes a single parameter `x` and has the expression `2 + x` as its body. Applying the function `f` to an argument like `5` may take the form such as `f 5`. Upon encountering the expression `f 5` (or, more likely, an expression such as `y = f 5` that binds the return value of the function's invocation with the arg `5` to `y`), an interpreter for a PL needs to resolve the identifier `f`. This is commonly achieved by looking up the name `f` in the (prior constructed) symbols table (which maps identifiers to their associated values), discovering that `f` is associated to the expression `2 + x`. Recognizing the `f` as a function, it also notes its current arg `5`, then proceeding to substitute every occurence of the parameter `x` in the function's body with the value `5`, which resolves to `7` soon enough.

But, what about a function like `f = 1 + f`? What happens when it is applied to an argument, e.g. in the function call expression `f 2`? It will proceede as usual, first resolving the `f` symbol on the lhs, and then going over to the rhs where it sees that the (lhs) `f` is to be associated with the rhs expression `1 + f`. It needs to resolve (rhs) `f` in order to process this expression, and that's when the complications start, derailing the interpreter into a computation that cannot ever finish: to associate the rhs expression to the lhs `f`, it needs to resolve the rhs symbol `f` - but its definition is on the lhs… it keeps jumping over the equals, chasing the definition of `f` forever.

This kind of unconstrained recursion is almost never useful. But a properly constrained recursion is a very helpful construction, most easily achieved by introducing a checkpoint - a base case that checks the value of the recursive variable, making a decision how to proceed. Unfortunatelly, this means every sigle (recursive) call to the function incurs this check, which may be an undesirable overhead. This may be somewhat aliviated using the techic of *unrolling a recursive function*, so that, instead of the check being performed before every pass through the function, it is performed once every `n` passes. FPLs with decent compilers (such as Haskell and its GHC), can do very efficient transformations by *converting a recursive function into a (procedural, even imperative) iterative loop*.



https://kseo.github.io/posts/2016-12-13-scott-encoding.html
https://101wiki.softlang.org/Contribution:haskellScott
https://crypto.stanford.edu/~blynn/compiler/scott.html
https://en.wikipedia.org/wiki/Falsifiability
https://en.wikipedia.org/wiki/Binomial_theorem
https://en.wikipedia.org/w/index.php?title=Specialization_(logic)&action=edit&redlink=1
https://en.wikipedia.org/wiki/Inheritance_(object-oriented_programming)
https://www.google.com/search?q=data+variation&sourceid=chrome&ie=UTF-8
https://101wiki.softlang.org/Language:Haskell
https://101wiki.softlang.org/Concept:Data_composition
https://101wiki.softlang.org/Contribution:haskellComposition
https://101wiki.softlang.org/Script:Data_modeling_in_Haskell
https://101wiki.softlang.org/Concept:Data_variation
https://en.wikipedia.org/wiki/Tagged_union
https://en.wikipedia.org/wiki/Coproduct
https://en.wikipedia.org/wiki/Self-documenting_code
https://en.wikipedia.org/wiki/Comparison_of_data-serialization_formats
https://en.wikipedia.org/wiki/Metadata



## Recursion in CS

https://en.wikipedia.org/wiki/Recursion_(computer_science)

Recursive programming is powerful because it maps so easily to proof by induction, making it easy to design algorithms and prove them correct.

In computer science, **recursion** is a method of solving a problem where the overall solution depends on (and, often, is a composition of) the solutions to the smaller instances of the same problem.

Such problems can generally be solved by *iteration*, but iteration requires identifying and indexing all the smaller instances at program's design-time. Recursion solves this by using functions that call themselves from within their own body. The approach can be applied to many types of problems, and recursion is one of the central ideas of computer science.


A recursive function is generally taken to mean a function defined in terms of itself: the name being defined (i.e. the name on the LHS of the equals sign), is referenced on the RHS of equals (i.e. in its own definition). Intuitivelly, such a function cannot amount to anything good - the circularity in its definition is clearly evident. That is the correct assumption and the reason the notion of *well-founded recursion* exists, which is to say, not only that a recursive function must be defined by cases (one or more of the base cases and a recursive case), but, moreover, that (in the recursive case) the recursive call is necessarily made on the "smaller" version of the data structure. In fact, this manner of recursion is called *structural recursion*.

In FPL, functions that manipulate lists are defined using structural recursion; an example in Haskell is the `map` hof that maps each element of the list with the provided function:

```hs
map :: (a -> b) -> [a] -> [b]
map f [] = []                   -- base case
map f (x:xs) = f x : map f xs   -- rec case
│     └─┬──┘│        │    └┬┘│
│    larger │        │smaller│
└───────┬───┘        └──┬────┘
definition        recursive call
```

On the rhs of the equation, the call `map f (x:xs)` acts on a larger list (`x:xs`) then the recursive call on the lhs, `map f xs`. In fact, `x:xs` represents the entire list in terms of the first element (aka head) and the rest of the list (aka tail), so obviously `x:xs` > `xs`, i.e. the entire list is larger than a list that is its tail, making this a well-founded structural recursion (the structure is a list). Numeric functions can also use structual recursion in case of the Peano numbers.

The fact that each successive recursive call acts on a smaller substructure guarantees that the base case will eventually be met, thereby terminating the computation.



> The power of recursion evidently lies in the possibility of defining an infinite set of objects by a finite statement. In the same manner, an infinite number of computations can be described by a finite recursive program, even if this program contains no explicit repetitions.    
--  Niklaus Wirth, Algorithms + Data Structures = Programs, 1976

Most computer programming languages support recursion by allowing a function to call itself from within its own code. Some functional programming languages (for instance, Clojure) do not define any looping constructs but rely solely on recursion to repeatedly call code. It is proved in computability theory that these recursive-only languages are Turing complete; this means that they are as powerful (they can be used to solve the same problems) as imperative languages based on control structures such as while and for.

Repeatedly calling a function from within itself may cause the call stack to have a size equal to the sum of the input sizes of all involved calls. It follows that, for problems that can be solved easily by iteration, recursion is generally less efficient, and, for large problems, it is fundamental to use optimization techniques such as tail call optimization.
