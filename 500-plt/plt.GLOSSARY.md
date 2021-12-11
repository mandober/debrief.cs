# PLT › Glossary

https://wiki.haskell.org/Category:Glossary
https://wiki.haskell.org/Special:Categories




## Canonical representation
The canonical representation of an algebraic data type is a, potentially recursive, sum of products (SoP) type.

## CPS
Continuation-Passing Style

## CAF
Constant Applicative Form (CAF) is any supercombinator that is not a lambda abstraction. This includes truly constant expressions such as `12`, `((+) 1 2)`, `[1,2,3]`, as well as partially applied functions such as `((+) 4)`; Even though `(\x -> (+) 4 x)` is an expression equivalent to the section `((+) 4)`, the former is not a CAF merely because it is a lambda abstraction.

## Higher-order functions
Higher-order functions (HOF) are functions that accept functions as arguments and may return functions. A PL needs to support functions as first-class values in order to feature HOFs.

## Hyperstrict
A function which is hyperstrict in some argument will fully evaluate that argument. To fully evaluate an object, evaluate it to WHNF and if it is a constructed data object (e.g. a list or tuple) then fully evaluate every component and so on recursively. Thus a hyperstrict function will fail to terminate if its argument or any component or sub-component of its argument fails to terminate (i.e. if its argument is not "total").

## TCR
Tail-call recursion

## WHNF
Weak-head normal form

## Abstract Data Type
Abstract Data Type is a data type whose implementation is hiddern from the consumer.

## Ad-hoc polymorphism
Ad-hoc polymorphism, or overloading, is a sort of polymorphism where the polymorphism, unlike in parametric polymorphism is realized by having one name refer to numerous distinct types, usually disctinct method names. The prime issue that ad hoc polymorphism solves is letting various numeric types use the same name (i.e. the same symbolic name "+") for the addition operation; instead of each numeric type having its own distinct name for addition (e.g. addNat, addInt, addFloat, addDouble, addReal, …). With ad hoc polymorphism, the symbolic name "+" is overloaded - meaning it stands for different things, or has multiple meanings. This implies the need for a name resolution and a dispatching mechnism whose job is then to resolve what a given name refers to (usually by relying on the types), followed by dispatching the call to the appropriate receiver. In Haskell, ad hoc polymorphism is realized thought the type classes. In summary, ad hoc polymorphism is about sharing the same name across many different types, but each type has to opt-in.

## Algebraic Data Type
Algebraic Data Type (ADT)


## Ambiguous type
In Haskell, a type is ambiguous when the compiler is unable to infer it from the call site (see `AllowAmbiguousTypes` and `TypeApplications`).

## Associated Type Family
Type family associated with a class; class instances must provide an instance of the type family.

## Bifunctor
A type that is a functor over its last two type parameters.

## Canonical representation
Every type has a canonical representation in which it is defined as the sum of products (sum types of products type). Every type is isomorphic to its canonical representation.

In Haskell, the canonical sum type (disjunction) is `Either`, canonical product type (conjunction) is pair; canonical unit type is `()`.

## Cardinality
The number of terms that inhabit a type. Two types with the same cardinality are isomorphic.

## Curry-Howard isomorphism
It is the correspondance between set theory, type theory, category theory, particularly between logic and programming languages (e.g. `n ∈ ℕ` ~ `n :: Int` ~ `x : τ`). Intuitionistic logic corresponds to FPLs.

## Value object
In computer science, a value object is a small object that represents a simple entity whose equality is not based on identity: i.e. two value objects are equal when they have the same value, not necessarily being the same object.



---


(*'ORRIBLE* despite being lifted from the book "Thinking with types" by Sandy Maguire, 2019)


## carrier
informal name for a typeclass whose only purpose is to carry ad-hoc polymorphic implementations for generic methods.

## closed type family
a type family with all of its instances provided in its definition. Closed type families are a close analogue of functions at the type-level.

## constraint synonym
a technique for turning a type synonym of CONSTRAINTs into something partially-applicable. Performed by making a new typeclass with a superclass constraint of the synonym, and giving instances of it for free given the
superclass constraint. For example, class c a => Trick a and
instance c a => Trick a.

## constraint trick
the transformation of a multiparameter typeclass instance from instance Foo Int b to instance (a ∼ Int) => Foo a b. Useful for improving type inference when working with MPTCs.

## continuation-passing style
CPS is the technique of taking (and subsequently calling) a callback, rather than directly returning a value.

## contravariance
a type T a is contravariant with respect to a if it can lift a function a -> b into a function T b -> T a.

## covariance
a type T a is covariant with respect to a if it can lift a function a -> b into a function T a -> T b. Another name for a Functor.

## defunctionalization
a technique for replacing a family of functions with an opaque symbol, and moving the original logic into an eval function. Used by First Class Families.

## dependent pair
a type that pairs a singleton with a value indexed by the singleton.

## dependent type
a type which isn't known statically, which depends on term-level values.

## endomorphism
a function of the form a -> a.

## first class family
FCF is a technique for building reusable, higher-order type families via defunctionalization.

## functional dependency
an additional invariant added to a multiparameter typeclass declaration saying that some of its type varaibles are entirely determined by others. Primarily
used to improve type inference.

## higher rank
another name for a rank-n type.

## higher-kinded type
a type which is parameterized by something other than `TYPE`.

## indexed monad
a monadic structure which carries a piece of static state along with it. Indexed monads allow you to enforce protocols in the type system.

## instance head
the part of a typeclass instance that comes after the context arrow (=>).

## invariant
a higher-kinded type is said to be invariant in a type parameter if that parameter is in neither positive nor negative position.

## isomorphism
Isomorphisms are mappings between objects, primarily types. If two types are isomorphic, they are identical for all intents and purposes.

## kind signature
a declaration (inferred or specified) of a type's kind.

## negative position
a type variable whichis contravariant with respect to its data type.

## nominal
a type variable is at role nominal if it is an error to coerce that type into another type.

## non-injectivity
a property of type families. Something that is noninjective does not have an inverse.

## overloaded labels
syntax for converting SYMBOLs into values. Used via the syntax mySymbol, and desugared in terms of the GHC.Overloadedlabels.fromLabel function. Enabled via
-XOverloadedLabels.

## parametric polymorphism
the polymorphism that arises from quantified type variables.

## phantom
a type variable is at role phantom if it can safely be coerced into any other type. Type parameters are called phantom if they aren’t used at the term-level.

## positive position
a type variable which is covariant with respect to its data type.

## product type
any type that contains several other types simultaneously.

## profunctor
a type T a b is a profunctor if it is contravariant in a and covariant with respect to b.

## promoted data constructor
the type that results from a data constructor when lifting its type to the kind level. Enabled via -XDataKinds.

## propositions as types
Equivalence of types of a programming language and propositions from logic. See the Curry–Howard isomorphism.

## rank
a function's degree of polymorphism.

## Reflexivity
A relation on object `a` is reflexive if `aRa` holds (read: `a` is `R`-related to itself), where `R` is any relation. For example, if `R` stands for the LE relation (denoted by `>=`) on the set of the natural numbers, then LE relation is reflexive because `aRa` holds, that is, `a >= a` for all `∀a ∈ ℕ`.

## Representational type
A type param has the representational role if it can be coerced into another type that is representationally equal to it. Nominal type equlity = equality at compile time. Representational type equlity = equality at run time. Nominal ⊂ Representational

## Representational type equlity
Representational type equlity is equality of types at run time, as opposed to nominal type equlity which is equality of types at compile time. Two types are representationally equal if they have identical physical layouts in memory.

## rigid
a type that was explicitly specified by a programmer. A type that was not inferred.

## rigid skolem
a type variable that is both rigid and a skolem.

## Type role
A type role indicates whether a type has representational or nominal type equality.

a property of a type variable that describes how a data constructor that owns it is allowed to be coerced.

## role signature
the declared roles for a data type's type parameters.

## role system
the system that ensures role annotations are not violated.



## sigma type
another name for dependent pair.

## singleton
a type with a single inhabitant. Can be abused to create an isomorphism between types and terms.

## skolem
an existentially quantified variable.

## ST trick
a technique for scoping the lifetime of a piece of data via an existential variable.

## strengthening a type
the act of using a stricter role than is necessary.

## structural polymorphism
a technique for automating boilerplate code.

## structural recursion

## structured logging
logging real data types rather than only their string representations.

## Combinator
There are two distinct meanings of the word "combinator" in common usage.
1. A combinator is a function with no free variables.

## Combinatory logic
Combinatory logic studies the combinators. Combinatory logic is like a minimized lambda calculus without lambda abstraction; therefore it dispenses with the whole conundrum of how to properly treat free and bound variables. However, despite the fact that it has only function application, combinatory logic is isomorphic to LC - any expression can be translated between the two systems. In CL, the combinators appear only as letters, each standing for a function abstraction whose behaviour is well-known and widely-established. CL has a lot of combinators, but a popular area of research was finding the absolutely minimal set of combinators from which (all the) others can be derived. The SK set is one such famous minimal set. This means not only that the other combinators may be derived using only `S` and `K`, but that all imaginable computation is expressable (albeit very uncomfortably) using only these two combinators!

## S combinator
The `S` combinator is a famous and probably the most powerfull combinator of them all. It was initially discovered by Moses Schönfinkel, along with the field of Combinatory logic itself. Later came along a young mathematician, Haskell Curry, that became interested in the mathematical logic, especially in the kind that would leter be named Combinatory logic. He discovered a laudable but obscure effort on the subject - a book written by a Russian matematician Moses Schönfinkel, who, following the tradition of all the great logicians, was already institutionalized by that time. Following the book, Curry travelled to Germany, having decided to finish his thesis there. Moreover, he decided to switch the calling and later work to popularize CL and the combinators. Hence, the `S` combinator is variously referred to as: *the Schönfinkel combinator* (righteous), "the Schönfinkel and Curry's combinator" (prepping…), and "the Curry's combinator" (snatched!). It is also called the amalgamation combinator; seldom even left at the liberty of anyone really to invent a name like the environment-manipulator combinator, like I just did. At least the last name is in the ballpark area toward its meaning which is sufficiently hard to explain, `λg. λf. λx. g x (f x)`. The "environment" comes from the fact that it takes two functions, `f` and `g`, and another argument, `x`, and then evaluated the `x`, first in the "environment" of `f` and then of `g`. Possibly. Anyway, the thing I'm certain about is that it is the most basic in the sense that there are many similar combinators that lack of of the components -- e.g. the composition, `B`, combinator is just a slightly altered S: `λg.λf.λx.g(f x)`.

```js
S := λa. λb. λc. a c (b c)
B := λa. λb. λc. a   (b c)   // compose, λf. λg. λx. f (g x)
C := λa. λb. λc. a c (b  )   // flip,    λf. λx. λy. f y x
```

## Supercombinator
A supercombinator is either a constant, or a combinator which contains only supercombinators as subexpressions.

## Symmetry
When a relation (between two objects) is bidirectional then it has the symmetric property. Formally, symmetry is defined as: `x,y ∈ A. xRy <-> yRx` i.e. under a relation `R` on a set `A`, if an element `x` is related to an element `y`, denoted by `xRy` or `(x,y) ∈ R`, then the relation is symmetric only if it also contains the transposed ordered pair `(y, x) ∈ R` or `yRx`. Symmetry, along with reflexivity and transitivity, is a property of equality; e.g. equality is symmetric, `a = b <-> b = a`. In aritmetic and algebraic setting, symmetry is called commutativity.

## Term
With advanced type system that can have type expression and type values, there isn't an unambiguous names for values at the most basic level, so these entities are often referred by prefixing the usual names like expression and value with the determiner "term" or "term-level" (e.g. term-level value vs type-level value, or term-level function vs kind-level function). A term is a value that exisist at run-time (types are usually erased after CT, with only explicitly marked type-level values surviving to RT).

## Tick
1. (symbol) The leading apostrophe (single quotation mark) in the name of promoted data constructors that helps distinguish them from the eponymous type ctors.
2. (symbol) The leading single quotation marks are used in Template Haskell.
3. A tick may represent a clock cycle, e.g. a CPU tick.
4. A tick is also used in the sense of a cycle (cycle as the smallest unit of time to do some work) with event loops and event queues.

## Transitivity
A relation that satisfies the axiom `x,y,z ∈ A. xRy ⋀ yRz -> xRz`. For example, the fundamental relation LE is transivite, a <= b ⋀ b <= c -> a <= c.

## Type family dependency
A technique for adding injectivity to a type family thereby making it injective.

## Value type
A type of the kind `TYPE`. The kind `TYPE` subsumes the lifted kind `Type` (ex `*`), and the unlifted kind `#`.

## Variance
In Haskell, variance is a property of a type ctor `T` in relation to one of its type parameters, `T a`. Briefly, the question of variance is: if we can transform an `a` into `b`, does that necessarily mean we can transform a `T a` into `T b`? If these two are not correlated (a change in one doesn't affect the other) the relation is *invariant*. Otherwise, the relation is *variant*: if a change in one triggers a change in the same direction in the other, the relation is *covariant*; if a change in one elicits a change in the other, but in the opposite direction, the relation is *contravariant*.
