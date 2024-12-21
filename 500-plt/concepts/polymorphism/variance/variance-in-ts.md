# Variance in TS

## Ref

* TypeScript Covariance and Contravariance, Aug 2023
  - post: https://shaky.sh/ts-covariance-contravariance/
  - videos: https://www.youtube.com/watch?v=bWF0KrhDuuE


## Variance

TS has a structural type system, meaning that a value has a certain type only if it has a certain shape. Unlike in nominal type systems, it doesn't have to be created using a particular constructor.


The concept of variance examines the relation between a type and its subtype, usually in the context of type functions where they are type arguments.

Variance describes how the subtyping relation extends to type functions aka higher-order types. It asks whether this relation changes in regard to type ctors, such as the array or function type ctor (type ctors are type functions).

If type `A` is a subtype of type `Aʹ` 
then we can assign a value of `A` 
to a variable typed as `Aʹ`.
Does this also mean that 
a variable typed as `Aʹ[]` 
is assignable to the `A[]` values?

Symbollicaly, the problem can be phrased as asking if the following holds:

`A <: Aʹ ==> A[] <: Aʹ[]`

If `A` is a subtype of `Aʹ`, then is `A[]` a subtype of `Aʹ`?

>If `A <: Aʹ` holds, does `Array<A>` <: `Array<Aʹ>` also hold?

The question above is phrased in terms of the array type, but it should be asked more broadly, in terms of the array type ctor, but also fucntion type ctor and other sensible ctors.


In our example, if we can assign the value of the type `"send-email"` to a variable typed as `string`, does that mean we can assign an array of values of the type `"send-email"` to a variable typed as (that accepts) `string[]`?



```ts
type A = // opaque type
type Aʹ = A | B | C // B and C are some, unimportant, types

A                       /* vs */  Aʹ
A[]                     /* vs */  Aʹ[]
Array<A>                /* vs */  Array<Aʹ>
Set<A>                  /* vs */  Set<Aʹ>

// Map<K, V>
Map<A, _>               /* vs */  Map<Aʹ, _>
Map<_, A>               /* vs */  Map<_, Aʹ>

// (...xs: any[]) => any
(...xs: A[]) => _       /* vs */  (...xs: Aʹ[]) => _
(...xs: any[]) => A     /* vs */  (...xs: any[]) => Aʹ
```


## Variance in TS

For example, `jobName` variable can be treated as all of the following types, i.e. a value of any of these types can be assigned to the `jobName` variable.

```ts
const jobName = 'send-email'

type JobName1 = string
type JobName2 = 'send-email' | 'fulfil-order' | 'publish-report'
type JobName3 = `${string}-email`
type JobName4 = 'send-email'
```

This is because the `"send-email"` string literal type (SLT) is a subtype of
- `string`
- any union type that includes the `"send-email"` SLT
- of template literal type that includes the `"send-email"` SLT because it will be expanded into the union type that includes the `"send-email"` SLT
- itself, i.e. for any type `T`, `T` is a sub/supertype of itself, `T <: T`

These types get *narrower* as we go down, with string being the broadest, and `"send-email"` being the most narrow (only matching a single value).

In set theory, these are called subsets; In TS, a union of string literals is a subtype (subset) of all string values.

In programing languages, these are called subtypes. In many languages, subtypes are only create via inheritance, but due to structural typing of TS, we don't need to make such relations between types explicit.

## Covariance

Covariance and contravariance describe how subtype relation behaves in type arguments, i.e. wrt type fucntions (generics).

In general, if `B` is a subtype of (extends, intersects) type `A`, then `Array<B>` is also a subtype of (extends, intersects) `Array<A>`. This is called *covariance*, so `Array<T>` is covariant over the type arg `T`.

Most generic types like Promise, ReadonlyArray, Map, etc. are covariant.

Any custom wrapper (or envelope type) with a generic argument `T` will likely be covariant over `T`.

## Contravariance

The variance of function types depends on the role of the param:
- type params are covariant
- return types are contravariant

TypeScript infers the variance wrt functions correctly, but if you want to be explicit, the `in` and `out` modifiers were introduced in TS v4.7 for this purpose.

- An `out` annotation indicates that a type parameter is covariant.
- An `in` annotation indicates that a type parameter is contravariant.
- An `in out` annotation indicates that a type parameter is invariant.


### Example

Let's say we have a queue for managing jobs:

```ts
type Queue<J> = {
  enqueue(j: J): void
  getJob(id: string): J
}

// We want to use J as both an input and output type param,
// which we can be explicit about like this:

type Queue<in out J> = {
  enqueue(j: J): void
  getJob(id: string): J
}
```

In this case, with both `in` and `out` modifiers declared on the same type param, `J`, TypeScript won't allow us to replace type `J` with its subtype or supertype. Thus, we cannot assign a `Queue<Job>` to a `Queue<PriorityJob>`, or vice versa.


## Refs

* TypeScript Playground with the above code
  https://tsplay.dev/mqypYm

* GitHub: microsoft/TypeScript: Optional variance annotations
  https://github.com/microsoft/TypeScript/pull/48240

* Covariance and Contravariance in TypeScript
  https://dmitripavlutin.com/typescript-covariance-contravariance/#2-covariance

* Wikipedia: Covariance and contravariance (computer science)
  https://en.wikipedia.org/wiki/Covariance_and_contravariance_(computer_science)
