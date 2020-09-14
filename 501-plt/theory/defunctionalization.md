# Defunctionalization

https://en.wikipedia.org/wiki/Defunctionalization


Defunctionalization refers to a compile-time transformation which eliminates higher-order functions, replacing them by a single first-order apply function. It's a way to have similar functionality to higher-order functions in languages that don't support them.

The technique was first described by John C. Reynolds in his 1972 paper, "Definitional Interpreters for Higher-Order Programming Languages".

Reynolds' observation was that a given program contains only finitely many function abstractions, so that each can be assigned (and replaced by) a unique identifier.

Every function application within the program is then replaced by a call to the `apply` function with the function identifier as the first argument. The `apply` function's only job is to dispatch on this first argument, and then perform the instructions denoted by the function identifier on the remaining arguments.

One complication to this basic idea is that function abstractions may reference free variables. In such situations, defunctionalization must be preceded by closure conversion (lambda lifting), so that any free variables of a function abstraction are passed as extra arguments to apply. In addition, if closures are supported as first-class values, it becomes necessary to represent these captured bindings by creating data structures.

Instead of having a single `apply` function dispatch on all function abstractions in a program, various kinds of control flow analysis (including simple distinctions based on arity or type signature) can be employed to determine which functions may be called at each function application site, and a specialized `apply` function may be referenced instead.

Alternately, the target language may support indirect calls through function pointers, which may be more efficient and extensible than a dispatch-based approach.

Besides its use as a compilation technique for higher-order functional languages, defunctionalization has been studied as a way of mechanically transforming interpreters into abstract machines.

Defunctionalization is also related to the technique from OOP of representing functions by function objects (an alternative to closures).

---

# d17n

http://spivey.oriel.ox.ac.uk/corner/Defunctionalization_%28Programming_Languages%29


Defunctionalization (d17n) is a transformation that converts higher-order functional programs into first-order programs. It has several phases, although it is actually a single transformation.

Defunctionalizing a HOF
- Decoding the dataflow
- Looking for lambdas
- Creating the constructors
- Writing the worker

## A simple example
Let's use as an example a completely pointless program that uses map twice:

prog x ys = (map aug ys, map sqr ys)
  where
    aug y = x + y
    sqr y = y * y
Because d17n works on whole programs, we'll have to include the defintion of map:

map :: (Integer -> Integer) -> [Integer] -> [Integer]
map f [] = []
map f (x:xs) = f x : map f xs



---

# Defunctionalization

from the paper: *From Interpreter to Logic Engine by Defunctionalization* by Dariusz Biernacki and Olivier Danvy

The key transformation is Reynolds's defunctionalization that transforms a tail-recursive, continuation-passing interpreter into a transition system, i.e.an abstract machine.

Defunctionalization transforms a higher-order program into a first-order program by replacing its function types by sum types.

Before defunctionalization, the inhabitants of each function type are instances of anonymous lambda abstractions.

Defunctionalize a program by enumerating the lambda abstractions in a sum type:
- each function declaration (lambda abstraction) is replaced by the corresponding constructor holding the free variables of the lambda abstraction
- each function application (elimination) is replaced by a case dispatch.

After defunctionalization, the inhabitants of each function type are represented by elements of a corresponding sum type.

## Example in Haskell

The following program is higher-order because the `aux` function is passed a function of type `(int -> int)` as arg:

```hs
aux :: Int -> (Int -> Int) -> Int
aux x f = f 10 + f x

primary :: Int -> Int -> Int -> Int
primary a b c
  = aux a (\x -> x + b)
  * aux c (\x -> x * x)

aux 5 (\x -> x + 3)   -- 21
primary 2 4 6         -- 2720
```



## Refs

https://www.youtube.com/watch?v=wppzFzzD4b8
https://www.brics.dk/RS/01/23/BRICS-RS-01-23.pdf
https://blog.sigplan.org/2019/12/30/defunctionalization-everybody-does-it-nobody-talks-about-it/
https://en.wikipedia.org/wiki/Defunctionalization
https://ncatlab.org/nlab/show/defunctionalization
https://bartoszmilewski.com/2020/08/03/defunctionalization-and-freyds-theorem/
https://www.objc.io/blog/2019/09/10/defunctionalization/
https://www.cis.upenn.edu/~plclub/blog/2020-05-15-Defunctionalize-the-Continuation/
http://www.doiserbia.nb.rs/img/doi/1820-0214/2014/1820-02141400030F.pdf
http://www.pathsensitive.com/2019/07/the-best-refactoring-youve-never-heard.html
