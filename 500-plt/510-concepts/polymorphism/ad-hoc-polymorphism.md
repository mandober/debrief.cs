---
title        : Ad Hoc Polymorphism
slug         : ad-hoc-polymorphism
parent       : PLT
wiki         : https://en.wikipedia.org/wiki/Ad_hoc_polymorphism
date_created : 2018-01-01
date_edited  : 2020-09-29
pid          : 3cefe0db-7616-4848-a2b6-9296746a178b
keywords     : polymorphism
---
# Ad Hoc Polymorphism

https://en.wikipedia.org/wiki/Ad_hoc_polymorphism
https://en.wikipedia.org/wiki/Operator_overloading
https://en.wikipedia.org/wiki/Function_overloading

Parametric polymorphism may be contrasted with **ad hoc polymorphism**, in which a single polymorphic function can have a number of distinct, potentially heterogeneous, implementations, depending on the type of arguments to which it is applied. Thus, ad hoc polymorphism can generally only support a limited number of such distinct types, since a separate implementation has to be provided for each type.

# Ad-hoc polymorphism

Ad hoc polymorphism is a kind of polymorphism in which the same polymorphic function is applied to arguments of different types.

The canonical example of ad hoc polymorphism, i.e. of overloading is the plus arithmetic operator that is denoted the same way whether it is applied to two integers, two floats, two doubles, or two values of the same numeric type that is an instance of the `Num` class, which defines arithmetic operators including `+`.

Therefore, when an overloaded function name (or symbolic name) is encountered, it is not evident what implementation is supposed to be invoked *before* the type of arguments is examined. Only when the type of args is determined, the appropriate implementation is called. This process is known as *dispatching*, and here the dispatching on types (on the type of arguments) was described.

The term "ad hoc" in this context is not intended to be pejorative; it simply refers to the fact that this type of polymorphism is not a fundamental feature of a type system.

Ad hoc is contrasted by the *parametric polymorphism*, in which a polymorphic function uses type variables instead of mentioning any specific type, and a single abstract implementation is applicable to any type at all; unlike an ad hoc polymorphic function, it is unrestricted.

This kinds of polymorphism were introduced by Christopher Strachey in 1967.

In Haskell, polymorphism is parametric or ad hoc, the latter being the overloading polymorphism of type classes.


## References

https://en.wikipedia.org/wiki/Ad_hoc_polymorphism
