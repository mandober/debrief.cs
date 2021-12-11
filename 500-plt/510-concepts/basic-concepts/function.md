# Functions in programming languages

https://en.wikipedia.org/wiki/Function_(programming)
https://en.wikipedia.org/wiki/Subroutine
https://en.wikipedia.org/wiki/First-class_function
https://en.wikipedia.org/wiki/Function_type
https://en.wikipedia.org/wiki/Lambda_calculus
https://en.wikipedia.org/wiki/Argument_of_a_function


## Pure function

https://en.wikipedia.org/wiki/Pure_function

A pure function is a function with the following properties:
1. Its return value (main effect) is the same for the same arguments (no variation with local static variables, non-local variables, mutable reference arguments, input streams from I/O devices).
2. Its evaluation has no side effects (no mutation of local static variables, non-local variables, mutable reference arguments or I/O streams).

* A pure function is a computational analogue of a mathematical function.

* Memoization is a good litmus test for purity. If a function can be memoized, it may be pure.

* The output of a pure function depends only on the input. With the same input, the output remains the same, no matter what; the only way to vary the output is to vary the input.

* Purity is not its own goal; it is a code invariant, so the compiler can then proceed with optimazations that rely on that guarantee.

* Purity is related to side-effects in that a function can be impure all it wants as long as nothing can atest to it. Even if a function has side-effects, only in case they are observable from (any part of) code outside, does it loose purity.

* Functions that originate from math may seem pure (across different languages) only by this virtue; however, a deeper investigation may reveal hidden impurity; e.g. the C++ library function `sin` is impure because its result depends on the IEEE rounding mode which can be changed at runtime.

* A pure function can fail or diverge (never return), but it must do so consistently - it must have the same behaviour for the same input argument. A possibility of a data race certainly does make a function impure, as does any similar non-determinism (so that it becomes possible that output depends on something other then input).

## I/O and purity

* I/O is inherently impure: input operations undermine referential transparency, and output operations create side effects.

* The I/O monad is a programming idiom used to perform I/O in pure functional languages (Haskell).

> Side-effects are relative: things deemed as side-effects in one environment, are only input parameters in a larger encompasing environment.

One way to model I/O, and side-effects in general, in a pure FPL, is to consider the relativity of side-effects: what is a side-effect in a smaller environment, may be parameterized in a larger encompasing environment.

It should always be possible to find such a larger environment even if you have to go all the way to the universe; the universe is, pretty much, side-effect free. Therefore, I/O is parameterized on the type on the "real world" (which is really a name of an identifier in related capacity in Haskell).

The problem with I/O is that things have to be performed in a certain sequance, unlike the pure code; and a pure language cannot represent sequences of events because it is stateless. That is, the only way to represent causality is via *functional dependencies*: to make sure the function `f` is called strictly after the function `g` finishes, we can make `g` depend on `f`. First we make `f` return (usually in a tuple along with other, proper, values) a dummy value (serving only to allow us to establish a sequence of events), then we make `g` depend on that exact value.

Such dummy value, e.g. `World`, can be a normal value if the language supports *uniquness types* ("Clean" does), or it can be manged by the complier (Haskell). This is so to make sure that `World` values are only used value, so they cannot be copied (forked) - the `World` that goes into a function as an argument is different from the `World` that comes out as (a part of) the result (even though it's essentially the same dummy value). This allows different calls to a function that performs I/O to produce different results, on account of the "different" `World` argument.

A way in which function can perform input or output and still be pure:
1. if the sequence of operations on the relevant I/O devices is modeled explicitly as both an argument and a result, and
2. I/O operations are taken to fail when the input sequence does not describe the operations actually taken since the program began execution.

The first point allows different calls (to the function that performs I/O) to return different results on account of the sequence arguments having changed.

The second point ensures that the only sequence usable as an argument must change with each I/O action.


In Haskell, a value of type `IO a` is an *action* (neveretheless pure function) that, when performed, may do some I/O, before delivering a value of type `a`.

```hs
type IO a = World -> (a, World)
```

This type definition says that a value of type `IO a` is a function that, when applied to an argument of type `World`, delivers a new `World` together with a result of type `a`.

The idea is rather program-centric: the program takes the state of the entire world as its input, and delivers a modified world as a result, modified by the effects of running the program.
