# PLT :: Glossary

https://wiki.haskell.org/Category:Glossary
https://wiki.haskell.org/Special:Categories

## Abstract Data Type
Abstract Data Type (ADT) is a data type whose implementation is hidden from the consumers, exposing only a well-defined set of methods used to manipulate it, called an interface (sometimes also called API, being API-like).

## Ad-hoc polymorphism
Ad-hoc polymorphism, or overloading, is realized by having one name (usually, a method name) refer to multiple distinct implementations.

The prime issue that ad hoc polymorphism solves is having the same name (e.g. the symbol "+") refer to the addition operation, not just on one but on all numeric types, whether it is the addition of integers, floats, doubles, fractional numbers, complex numbers, or other numbers. This is far more convenient than having each numeric type with its own name for addition (e.g. addInt, addFloat, addDouble, addComplex).

With ad hoc polymorphism, the symbolic name (like "+") is overloaded, which means that the same name then has multiple meanings and represents different things. This implies the need for a name resolution mechanism whose job is to resolve what the overloaded name refers to based on the types involved. Then the dispatching mechanism calls the appropriate receiver (which is a primitive function, usually not exposed by the language, like addInt, addFloat, addDouble, addComplex).

In brief, ad hoc polymorphism is about sharing the same name across different types, but each type has to opt-in by defining its own implementation of the overloaded name.

## Canonical form
Language entities (especially expressions, types, numbers, etc.) that have multiple but equivalent forms, usually have one, the most representative form, which has been decided as the most representative among all the equivalent forms. For example, in math, a fraction tipically has many equivalent forms, but the canonical form is the one with both nominator and denominator simplified as much as possible (e.g. 4/8, 3/6, 2/4, 1/2 are all equivalent forms, but only the last one is canonical). In PL with algebraic data types, their canonical form is, potentially recursive, sum of products type.

## Cardinality
In PLT, cardinality of a type is the number of terms (values) that inhabit a type. Two types with the same cardinality are isomorphic.

## Combinator
A combinator is an expression (function) with no free variables.

## Combinatory logic
Combinatory logic studies the combinators. Combinatory logic is like a minimized lambda calculus without lambda abstraction; therefore it dispenses with the whole conundrum of how to properly treat free and bound variables. However, despite the fact that it has only function application, combinatory logic is isomorphic to LC - any expression can be translated between the two systems. In CL, the combinators appear only as letters, each standing for a function abstraction whose behaviour is well-known and widely-established. CL has a lot of combinators, but a popular area of research was finding the absolutely minimal set of combinators from which (all the) others can be derived. The SK set is one such famous minimal set. This means not only that the other combinators may be derived using only `S` and `K`, but that all imaginable computation is expressable (albeit very uncomfortably) using only these two combinators!

## Compile-time polymorphism
See: Static polymorphism

## Curry-Howard isomorphism
Curry-Howard correspondence is the isomorphism between mathematical theories (logic, set theory, category theory, type theory) and, for our purposes here, functional programming languages, where it is called propositions-as-types and proofs-as-programs.

## F-bounded polymorphism
F-bounded polymorphism (or self-referential types, recursive type signatures, recursively bounded quantification) is a OO technique that leverages the type system to encode constraints on generics.

## Higher-order functions
Higher-order functions (HOF) are functions that accept functions as arguments and may return functions. A PL needs to support functions as first-class values in order to feature HOFs.

## Hyperstrict
A function which is hyperstrict in some argument will fully evaluate that argument. To fully evaluate an object, evaluate it to WHNF and if it is a constructed data object (e.g. a list or tuple) then fully evaluate every component and so on recursively. Thus a hyperstrict function will fail to terminate if its argument or any component or sub-component of its argument fails to terminate (i.e. if its argument is not "total").

## Kind signature
Kind signature is an, inferred or specified, declaration of a type's kind.

## Negative position
A type variable is in negative position when it occurs on the left side of an arrow in a type signature (contravariant with respect to its data type).

## Parametric polymorphism
The type of polymorphism that arises from universally quantified type variables.

## Pattern matching
The key feature of pattern matching in is that the structure of an arbitrary value in a datatype is explained. Classically, pattern matching analyses constructor patterns on the left-hand sides of functional equations, and is defined by a subsystem of the operational semantics with hard-wired rules for computing substitutions from the pattern variables to values.

## Positive position
a type variable which is covariant with respect to its data type.

## Product data type
An ADT that is a grouping of multiple types. An (overall) value of such type must be expressed in term of all constituent values simultaneously.

## Propositions as types
Equivalence of types of a programming language and propositions from logic. See the Curry-Howard isomorphism.

## Rank
a function's degree of polymorphism.

## Reflexivity
A relation on object `a` is reflexive if `aRa` holds (read: `a` is `R`-related to itself), where `R` is any relation. For example, if `R` stands for the LE relation (denoted by `>=`) on the set of the natural numbers, then LE relation is reflexive because `aRa` holds, that is, `a >= a` for all `∀a ∈ ℕ`.

## Representational type
A type param has the representational role if it can be coerced into another type that is representationally equal to it. Nominal type equlity = equality at compile time. Representational type equlity = equality at run time. Nominal ⊂ Representational

## Representational type equality
Representational type equality is equality of types at run time, as opposed to nominal type equality which is equality of types at compile time. Two types are representationally equal if they have identical physical layouts in memory.

## Static polymorphism
Static polymorphism (compile-time polymorphism) is, broadly, any kind of polymorphism that happens at compile-time. In a more narrow sense, static polymorphism, in most OOP languages, allow overloading of methods, where methods can have the same name if their input parameters have different types (that is, method signatures which are compared only consists of the types of inputs, while the type of output is not taken into account).

## Strengthening a type
In Haskell, strengthening a type means using the stricter role for a type parameter then necessary.

## Structural polymorphism
Structural polymorphism is a technique that help automate boilerplate code. Data types (data structures) with compatible structures can be operated upon by the same function, even if their nominal types are different. Thus, compatible data structures behave polymorphically with regards to functions that operate on them.

## Structured logging
Structured logging is a step away from primitive obsession - instead of logging the string representation of an object, the real, structural, data type is logged (strings barely have some structure).

## S combinator
The `S` combinator is a famous and probably the most powerfull combinator of them all. It was initially discovered by Moses Schönfinkel, along with the field of Combinatory logic itself. Later came along a young mathematician, Haskell Curry, that became interested in the mathematical logic, especially in the kind that would leter be named Combinatory logic. He discovered a laudable but obscure effort on the subject - a book written by a Russian matematician Moses Schönfinkel, who, following the tradition of all the great logicians, was already institutionalized by that time. Following the book, Curry travelled to Germany, having decided to finish his thesis there. Moreover, he decided to switch the calling and later work to popularize CL and the combinators. Hence, the `S` combinator is variously referred to as: *the Schönfinkel combinator* (righteous), "the Schönfinkel and Curry's combinator" (prepping…), and "the Curry's combinator" (snatched!). It is also called the amalgamation combinator; seldom even left at the liberty of anyone really to invent a name like the environment-manipulator combinator, like I just did. At least the last name is in the ballpark area toward its meaning which is sufficiently hard to explain, `λg. λf. λx. g x (f x)`. The "environment" comes from the fact that it takes two functions, `f` and `g`, and another argument, `x`, and then evaluated the `x`, first in the "environment" of `f` and then of `g`. Possibly. Anyway, the thing I'm certain about is that it is the most basic in the sense that there are many similar combinators that lack of of the components -- e.g. the composition, `B`, combinator is just a slightly altered S: `λg.λf.λx.g(f x)`.

```js
S := λa. λb. λc. a c (b c)
B := λa. λb. λc. a   (b c)   // compose, λf. λg. λx. f (g x)
C := λa. λb. λc. a c (b  )   // flip,    λf. λx. λy. f y x
```

## Supercombinator
A supercombinator is either a constant, or a combinator which contains only supercombinators as subexpressions.

## Sum data type
A sum ADT consists of multiple types grouped together to present a unified type, despite the fact that only one of them may be expressed at a time.

A sum type (tagged union, disjoint union, also variant or enumaration) is an algebraic data type corresponding to the logical disjunction in the sense that, although it represents the union of types, exactly one member type (each distinguished by their own constructor) may be expressed at a time.

Sum types resamble C's `union` construct, but unlike it, the type of the contained value is indicated by a tag (which corresponds to the name of the data constructor that created it), which is why they're called tagged unions.

If `A` and `B` are any two types, then `S = A + B` denotes their disjoint union. A value of type `S` is either an `A` or a `B` (which one exactly is determined by pattern matching).

Sum ADTs are a form of polymorphism, sometimes called alternatives polymorphism.

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

## Value object
A value object is an object that represents a simple entity (usually a primitive value) whose equality is not based on identity. That is, two value objects are equal when they hold the same value, not necessarily when they are the same object. In most OOPL, two objects are equal only when their identifiers refer to the same object in memory. This says that an object resulting from boxing a primitive, like `new Number(3)`, is a simple entity that may be compared for equality, not by reference, but by the contained value.
