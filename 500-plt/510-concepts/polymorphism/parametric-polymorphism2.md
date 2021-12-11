# Parametric Polymorphism

https://en.wikipedia.org/wiki/Parametric_polymorphism

Generic function
https://en.wikipedia.org/wiki/Generic_function

Generic programming
https://en.wikipedia.org/wiki/Generic_programming

In programming languages theory and type theory, parametric polymorphism allows functions that work with many, even all, types. It is the great programming tool, especially in the DRY departament because a programmer needs only write a function and have it work across many types.

Parametric polymorphism requires a decent type system, preferably HM, and certainly not those type systems that sport type names before identifiers (e.g. `int n`, instead of the long-before-computers established `n : int`). Hence, C lacks such facility (which is understandable), but many of its descendats, even some of C's fairly recent rehashes, go without it (which is completely unreasonable for it is widely agreed that such a thing is good™ and necessary; the absence of generics is usually excused by the weak "too complicated for newcomers" reasoning, which is about cherishing beginners and inflicting pain on the longstanding users, suffer little children; this does garnish an influx of new users initially, but after the plateaux, it starts shedding the ones that have successfully made it across the beginner's hurdles). Without parametric polymorphism, you must write, mutatis mutandis the type, the same identical function for every type that you want it to work with. In other words, even a mild OCD case means writing that arithmetic function in multitudes (one for ints, one for floats, one for doubles, one for naughts, several for the signed variants, a few more for unsigned), lest incompleteness pricks befall onto thee.

Parametric polymorphism makes a language more expressive and user happy for they need not repeat themselves, while maintaining full static type-safety. Such functions and data types are called *generic*, and they are the foundation of the more broad and involved *generic programming*.

Using parametric polymorphism, a function (or a data type, although data types are functions) can be written generically without depending on a concrete type. Rather then a concretetype, a type variable is used, which, if not further constrained, makes the function work across all types (past, present, future), i.e. `∀a` (where `a` is a type). One such function is `const: ∀ab. a × b -> a`, or `map : ∀ab. (a -> b) × a* -> b*` (where `a*` is a list of one type, and `b*` of another, or possibly the same, type).

The function `append : ∀ab. a* × a* -> a*`, appends two lists of the same type of elements (serious lists are homogeneous). Note that, since there is only one type variable (`a`), the function cannot be applied to just any pair of lists: the input lists must have the same type.

When a polymorphic function like `append` is applied, for each place in the source code where `append` is called, the concrete value for its type variable is decided based either on the annotated or inferred types. It is said that the function `append` is *parameterized* by a type variable (`a`) which is quantified using a universal quantifier `forall` i.e. `∀`. This is the binding context for type variables, which implies that some particular (concrete) type should also be supplied to the function as a type-argument, just like the value-arguments are. This is generally true, although languages handle it differently. Some provide the special syntax for passing the types, while others do it automatically, possibly, providing some means to do it manually as well.


A particularly interesting thing about parametric polymorphism is the notion of *parametricity* that greatly facilitates reasoning about functions and their possible behaviour. It relies upon the fact that: the more types a function accepts, the less the set of common behaviours across these types. From the perspective of the caller, such a function looks great for it accept any (sensible) type - it works with "forall" types. However, from the function's perspective, the things are very different; it cannot touch or examine the contents of the received arguments. For example, the `append` function cannot know the type of elements the supplied list has, it only know that it is in fact a list. Therefore, `append` cannot manipulate the elements directly (for they are an untouchable polymorphic vagueness), but it can manipulate them indirectly by maneuvering the list structurally. It can manipulate the structure that is a list, that is, the cons-cells it is made of. And each cons cell contains two fields: the payload (value) and the link to the next cell. So, it cannot touch the value, e.g. it can't apply some function to it because `append` has no clue what type of value it is, so it cannot know what methods work on it.

In general, a polymorphic function that works on lists can only do the things that fall under "list rearrangements", that is, the manipulations that do not depend on the concrete value. These include: list reversal, it can get the list's first element, or some subset of elements, arbitrarily duplicate some elements (but it cannot deduplicate it for that requires comparing list's elements), etc.


Following Christopher Strachey, parametric polymorphism may be contrasted with ad hoc polymorphism, in which a single polymorphic function can have a number of distinct and potentially heterogeneous implementations depending on the type of the arguments to which it is applied. Thus, ad hoc polymorphism can generally only support a limited number of such distinct types, since a separate implementation has to be provided for each type.
