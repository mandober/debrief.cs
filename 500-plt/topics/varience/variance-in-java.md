# Variance in Java

https://counterexamples.org/general-covariance.html

## Variance

Types that take parameters are called *type constructors*. For example, the list type is `List A` - `List` is the unary (1-ary) type constructor since it takes a single type parameter, `a`. When the List type ctor is instantiated by applying it to a concrete type, like `int`, we get the resulting type, `List int`, something like: `(List A)(int) ->> List int`. A concrete list of integers like [1,2,3] is a value of `List int` type (but not of `List A` type, which has no values - it is uninhabited).

>Types that take parameters, aka *type constructors* (like `List A`) may have subtyping relations that depend on the subtyping relations of their type parameters.

The type parameters of a type ctor may each have a different subtyping relation. In case of unary type ctors, like `List A`, the subtyping relation is straightforward since there is only one type parameter: `List A` is a subtype of `List B` only if `A` is a subtype of `B`.

In general, `T A` is a subtype of `T B` only if `A` is a subtype of `B`:
>`T A <: T B ⇒ A <: B`

where `T` is a unary type ctor like 'List'.

>The manner in which a type parameter's subtyping affects the subtyping of the type ctor is called **variance**.

## Subtyping

>Subtyping allows a value of a more specific type to be supplied where a value of a more general type was expected, without the two types having to be exactly equal.

If there is a subtyping relation between two types, e.g. if every 'Car' is a 'Vehicle', then we can supply a 'Car' (more specific type) where a 'Vehicle' (more general type) is wanted.

This subtyping relation arises if the `Car` class extends the `Vehicle` class. Then `Vehicle` is the parent class (superclass) and the `Car` is the child class (subclass). Moreover, objects of the `Car` class are subtypes of objects of the `Vehicle` class.

>`Car <: Vehicle`
denotes that `Car` is a subtype of `Vehicle`

In the relation between 'Car' and 'Vehicle', 'Car' is a more specific type and 'Vehicle' a more general type. Then, if a context asks for a vehicle, we can supply a car instead, because a car is a (sub)type of vehicle.


## Covariant containers

It would be natural to extend this relation to container types, to be able to say that a 'List Car' is also a 'List Vehicle', which would allow us to supply a list of cars where a list of vehicles is required.

If this is allowed by the type system, then we say that the `List a` type ctor is **covariant** with regards to its type parameter `a`.

However, **variance is only sound for immutable types**. If `List` were to be a mutable type, then a `Bus` could be inserted in it. If every `List Car` is automatically a `List Vehicle`, then we can end up with buses in the list of cars.


This problem occurs with arrays in Java:

```java
class Vehicle {}

class Car extends Vehicle {}

class Bus extends Vehicle {}

public class App
{
  public static void main(String[] args)
  {
    // make a list of cars
    Car[] cars = new Car();
    // declare that a list of cars is a list of vehicles
    // i.e. supply a more specific type where a more general is expected
    Vehicle[] vehicles = cars;
    // inserting a bus (which is also a vehicle)
    // in the list of cars disguised as vehicles...
    vehicles[0] = new Bus();
    // ...crashes the program with ArrayStoreException
  }
}
```

**Variance** is about how subtyping of type parameters affects subtyping of the whole type.

The solution is to keep track of variance - there are two approaches:

1. *Use-site variance* is used in Java (for types other than arrays): a `List<Car>` can never be converted to a `List<Vehicle>`, but can be converted to a `List<? extends Vehicle>`. The elements of a `List<? extends Vehicle>` are known to be `Vehicles`, but an arbitrary Vehicle cannot be inserted into such a list. Each use of List specifies how the parameter is allowed to vary.

2. *Declaration-site variance* is used in Scala (although use-site variance is also available). This means that the List type can be defined as List[+T] if immutable, making every List[Car] automatically a List[Vehicle]. However, if List is mutable, it must be defined as List[T], which disables these conversions.
