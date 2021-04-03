# Functions in programming languages

https://en.wikipedia.org/wiki/Function_(mathematics)

Functions have originated in math, but they have since mutated into a slew of unrecognizable entities across different PLs. Practically no programming language defines (and implements) and uses functions the same way as they are defined and used in mathematics. Pure functional languages come very close to the mathematical ideal of a function, but even they cannot pull it off due to the decision problem which forces them to introduce the *bottom* type (the type of infinite loops, fatal errors and diverging functions). Bottom inhabits every type and it may be represented on the value level as `undefined`. And a function that is not defined over its entire domain (input type) is a *partial function*, and even math has them (e.g. division and related operations are partial because they are undefined when denominator is 0). Even in a pure FPL like Haskell, *all functions are partial functions* unavoidably, thanx to bottom. There could possibly be a restricted PL that used a controlled recursion and induction that could maybe incorporate truly total functions, but such language wouldn'd be Turing complete. In fact, the theory of primitive recursive functions (PRF) uses only a few simple functions that are computable, to build more complex functions, but only up to a certain level. In order for PRF to become an equivalent model of computation to a TM, it needs to admit the minimization function (μ-operator), which, unlike the other functions, is a partial function; it may produce a result or it may loop forever.

The term "function" should be reserved for PL constructs that behave exactly like mathematical functions, which means respecting these properties:
- it must always take some input value and it must always return some value (even if only a dummy value)
- it must always produce the same output given the same input; in fact, this is a good litmus test: if the behaviour of the plain and memoized versions of a function behave exactly the same, then that function is worthy of its name.
- additionally, and unrelated to mathematical funtions, it must be free of side-effects (such as printing to the console in the middle of the execution).


## Callables

The generic umbrella term "callable" is used here as a placeholder for terms such as procedure, (sub)routine, block, (sub)program, method, macro, and even function. In any case, the essential quality of a callable is that is allows us to make new abstractions.

Callables provide us with the most fundamental way of making new language abstractions. Whenever we recognize a useful or merely repetitive pattern, we can extract the code that constitutes it and give it a name, thereby making the pattern a new language primitive, a distinct new element with a unique name. To reuse the abstracted pattern, we just reference it by the given name. In this shape, this abstraction resembles a macro, which is just a simple string substitution, similar to, e.g., expansion of abbreviations (it just replaces one predefined string with another).

The C language has a preprocessor that is first run on compilation that does exactly that, viz. changes macro keywords with their definitions, which it does blindly (unbeknowst of the surrounding code and possible emerging interactions of the expanded keywords with it; btw, this behaviour is characteristic to the so-called unhygenic macros).

However, these abstractions, as described so far, cannot do shit as they can only perform side-effects (an appropriate name for them would be "actions"). But even the effects they can perform are severly restricted because these action blocks are disconected from the rest of code, and have no means of communication (they're completely useless blackboxes without an interface). By eqquiping them with a semi-duplex communication channel (receive, then respond)we get a very usefull PL construct - transformers! And transformers are sufficient in order to code anything (more comfortably).
