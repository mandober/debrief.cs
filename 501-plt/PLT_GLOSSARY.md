# PL Theory › Glossary

https://wiki.haskell.org/Category:Glossary
https://wiki.haskell.org/Special:Categories


## Ad-hoc polymorphism


## Algebraic Data Type


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

## symmetry
the property that two objects have in a relationship when
it is bidirectional. For example, equality is symmetric, because
if a = b then b = a.

## term
a value. Something that can exisist at run-time.

## tick
the leadiding apostrtrophe in the name of a promoted data constructor.

## transitivity
the idea that if a ⋆ band b ⋆ cthen a ⋆ cfor any relation ⋆ .

## type family dependency
a technique for adding injectivity to a type family.

## value type
a type with kind TYPE.

## Variance
Behavivior a type has when transforming it into its type parameter.
