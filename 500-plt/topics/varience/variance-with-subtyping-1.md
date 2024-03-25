# Variance

## Notion of variance

>Variance refers to how subtyping between complex types relates to subtyping between the simple types that constitute them.

Considering the simple type, `Animal`, from which another simple type, `Cat`, is derived (e.g. Cat extends Animal), the subtyping relation is clear: Cat is a subtype of Animal, denoted by: `Cat <: Animal`. Dually, Animal is the supertype of Cat, denoted by: `Animal :> Cat`. This subtyping relation means that we can **substitute** a value of type `Cat` whenever a value of type `Animal` is expected.

Using this two simple types, we can construct more complex types. One of them is a list, so we'd have a list of Animal type, `[Animal]`, and a list of Cat type, `[Cat]`. This is where the notion of variance appears. Variance is about the subtyping relation between the complex and simple types that constitute them. It answers the question of how does `[Animal]` relates to `[Cat]`, knowing that `Cat <: Animal`.

For example, in OCaml, the answer is that the subtyping relation is preserved: `[Cat] <: [Animal]`, that is, a list of Cat type is (still) a subtype of a list of Animal type, jsut as Cat is substype of Animal type. This classifies the list constructor as being **covariant**; it **preserves** the subtyping relation, so we can provide a `[Cat]` when `[Animal]` is expected.

```ocaml
🐲 ------------------→ 🐈
|    list type ctor     |
|     is covariant      |
↓                       ↓
[🐲] --------------→ [🐈]
```

Another complex type made from the simple types is a function type. However, a function type ctor is a bit more complicated then a list type ctor because it is binary. Namely, unlike, the list ctor that is unary (it gets applied to a single type to produce a list of that type), a function type ctor needs two types to construct a function type: an input and an output type. This means that variance is a property of a type ctor, but even more so, it is tied to a particular type parameter in case of polyadic (more than one type param) type ctors. With lists, there was never a question in which type parameter is the type ctor covariant because there was only a single one. But with functions, we need to be specific about the type parameter when we talk about the variance of function type ctor.

Another type of variance is **contravariance**, when the subtyping relation **reverses**. This is the property of the OCaml's function type ctor in its input type parameter. The subtyping relation between the simple and complex types **reverses**, such that `Animal -> String` <: `Cat -> String` (the function from Animal to String is a subtype of function from Cat to String). Because the *function type constructor is contravariant in the input type parameter*, the subtyping relation gets **reversed**, meaning we can provide a function of type `Animal -> String` when a function of type `Cat -> String` is expected.

```ocaml
🐲 ------------------→ 🐈
|   function type ctor  |
|    is contravariant   |
↓      in input type    ↓
(🐲 → 🧵) ←---- (🐈 → 🧵)
```


## Subtyping

Subtyping is a relation between more general and more specific types (of some base type). `Animal` type is a more generic type then its subtype, `Cat`. `Cat` is a more specific type then its supertype, `Animal`. All `Cat`'s are `Animal`s, so whenever an Animal is expected, a Cat should do nicely.

When a more general type is expected, its subtype, although it is more specific, may be provided.

Covariance: when a list of more general type is expected, a list of more specific type (a subtype of the general type) may be provided.

Contravariance: when a more specific type is expected as a function's input type, then a more general type (its supertype) may be provided instead.

```
     Cat   <: Animal
     [Cat] <: [Animal]
(Cat -> t) :> (Animal -> t)
```



-------------------------------------------------------------------------------



Their components are the simple types that constitute the complex types, e.g. `Cat` (simple type) and `[Cat]` (complex type made from the simple one).

Covariance is a change in the same direction, while contravariance indicates a change in opposite directions. Non-variance indicates that two types (metrics) are non-variant, i.e. change in one does not bring a change in the other.



> Types of variance
* **covariant** if it preserves the ordering of types (≤), which orders types from more specific to more generic
* **contravariant** if it reverses this ordering
* **bivariant** if both of these apply

> Variance of type system
* **variant**, if it support variance
* **invariant** or **nonvariant**, if it does not support variance


Types of variance:
- **covariance** (preserving, covariant type ctor)
- **contravariance** (reversing, contravariant type ctor)
- **invariance** (ignoring, invariant type ctor)

- type ctors are variant
- variance of a type ctor influences the subtyping relation


Example types:
- `Animal`   the simple type, a supertype of Cat, `Animal :> Cat`
- `Cat`      the simple type, a subtype of Animal, `Cat <: Animal`
- `[Animal]` the complex type made from the simple `Animal` type
- `[Cat]`    the complex type made from the simple `Cat` type

Issues:
- how do [Cats] relate to [Animals]?
- how does a function `_ -> Cats` relate to `_ -> Animal`?

Example in OCaml:
- list type ctor is covariant thus: `[Cat] <: [Animal]`
- fn type ctor is contravariant so: `Animal -> String <: Cat -> String`

```
🐲 ------------------→ 🐈
|    list type ctor     |
|     is covariant      |
↓                       ↓
[🐲] --------------→ [🐈]


🐲 ------------------→ 🐈
| function type ctor    |
|   is contravariant    |
↓                       ↓
(🐲 → 🧵) ←---- (🐈 → 🧵)
```



> Exlanation

In Ocaml, list type ctor is covariant so the subtyping relation of the simple types, `Animal` and `Cat`, to the complex types, [Animal] and [Cat], is preserved, meaning that a list of Cat may be passed when a list of Animal is expected.


thus: `[Cat] <: [Animal]`
- fn type ctor is contravariant so: `Animal -> String <: Cat -> String`

The function type ctor is contravariant in the paramater type, therefore the function `Animal -> String` **is a subtype** of the function `Cat -> String`. That is, the subtyping relation has *reversed*.

```hs
-- supertype of Cat
type Animal
-- subtype of Animal, so substitutable when Animal expected
type Cat <: Animal

-- complex type made from the simple type
Animal ~~> [Animal]
Cat    ~~> [Cat]

-- list ctor is covariant: can subst Animal for Cat
[Cat]            <: [Animal]

-- fn ctor is contravariant in the input type: cannot subst Animal for Cat
Animal -> String <: Cat -> String
```



```
┌🐲────────────────────🐈┐
│                         │
│                         │
├[🐲] ────────────── [🐈]┤
│                         │
│                         │
└(🐲 → 🧵)─────(🐈 → 🧵)┘

```

---

> Types of variance
* **covariant** if it preserves the ordering of types (≤), which orders types from more specific to more generic
* **contravariant** if it reverses this ordering
* **bivariant** if both of these apply

Depending on the variance of type ctors, the subtyping relation of simple types, for the respective complex types, may be either:
- *preserved* (covariance)
- *reversed* (contravariance)
- *ignored* (invariant)


Variance refers to how subtyping between more complex types relates to subtyping between their components. Their components are the simple types that constitute the complex types, e.g. `Cat` (simple type) and `[Cat]` (complex type made from the simple one).

Covariance is a change in the same direction, while contravariance indicates a change in opposite directions. Non-variance indicates that two types (metrics) are non-variant, i.e. change in one does not bring a change in the other.


A type ctor is *bivariant* if it is both covariant and contravariant, that is, it preserves and it reverses the subtyping relation at the same time. This would mean that both situations hold: `I<A> ≤ I<B>` and `I<B> ≤ I<A>`. Here, it would mean that I of A's is a subtype of I of B's, but at the same time, the opposite is also true [don't have any examples].




## Variance in subtyping


Depending on the variance of type constructors, the subtyping relation of simple types may be either *preserved* (covariance), *reversed* (contravariance), or *ignored* (invariant) for the respective complex types.


On the other hand,  `Animal -> String` <: `Cat -> String` (the function from Animal to String is a subtype of the function from Cat to String) because the *function type constructor is contravariant in the parameter type*. Here the subtyping relation of the simple types is **reversed** for the complex types.


A language designer considers variance when devising typing rules for language features that include arrays, inheritance, generic datatypes.
- By making type constructors covariant or contravariant instead of invariant, more programs will be accepted as well-typed.
- On the other hand, programmers often find contravariance unintuitive, and accurately tracking variance to avoid runtime type errors can lead to complex typing rules.

In order to keep the type system simple and allow useful programs, a language may treat a type constructor as invariant even if it would be safe to consider it variant, or treat it as covariant even though that could violate type safety.


```
🐲 ---------------- ➡ 🐈
|    list type ctor    |
|     is covariant     |
↓          🔁          ↓
[🐲] ------------ ➡ [🐈]
|                      |
| function type ctor   |
|   is contravariant   |
↓          🔀          ↓
(🐲->🧵) ⬅ ---- (🐈->🧵)
```
