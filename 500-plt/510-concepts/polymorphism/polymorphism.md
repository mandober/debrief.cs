# Polymorphism

https://en.wikipedia.org/wiki/Operator_overloading

Strachey: https://javapapers.com/core-java/java-polymorphism/

* Polymorphism
  * Ad hoc polymorphism
    - Function overloading
    - Operator overloading
  * Parametric polymorphism
    - Generic function
    - Generic programming
  * Subtyping
    - Virtual function
    - Single and dynamic dispatch
    - Double dispatch
    - Multiple dispatch

# Polymorphism

https://en.wikipedia.org/wiki/Polymorphism_(computer_science)

https://medium.com/@sinisalouc/ad-hoc-polymorphism-and-type-classes-442ae22e5342

https://en.wikipedia.org/wiki/Parametric_polymorphism


Polymorphism literally means "multiple forms". In statically typed languages, there are 3 types of polymorphism:

* *Adhoc polymorphism* or overloading: the same name resolves to different methods based on matching the *compile-time* type-signature of methods.

(of the parameters of the call to the function or method signature)

* *Parametric polymorphism*: In C++ this is templates and all the fun things you can do with it such as CRTP, specialization, partial specialization, meta-programming etc. Again this sort of polymorphism where the same template name can do different things based on the template parameters is a compile time polymorphism.

* *Subtype Polymorphism*: Finally this is what we think of when we hear the word polymorphism in C++. This is where derived classes override virtual functions to specialize behavior. The same type of pointer to a base class can have different behavior based on the concrete derived type it is pointing to. This is the way to get run time polymorphism in C++.

If it is not known until runtime which classes will be used, you must use Subtype Polymorphism which will involve virtual function calls.

Virtual method calls have a very small performance overhead over statically bound calls. I'd urge you to look at the answers to this SO question.

*Ad-hoc polymorphism* or overloading is a sort of polymorphism where the polymorphism, unlike in parametric polymorphism is realized by having one name refer to numerous distinct types, usually disctinct method names. The prime issue that ad hoc polymorphism solves is letting various numeric types use the same name (i.e. the same symbolic name "+") for the addition operation; instead of each numeric type having its own distinct name for addition (e.g. addNat, addInt, addFloat, addDouble, addReal, …). With ad hoc polymorphism, the symbolic name "+" is overloaded - meaning it stands for different things, or has multiple meanings. This implies the need for a name resolution and a dispatching mechnism whose job is then to resolve what a given name refers to (usually by relying on the types), followed by dispatching the call to the appropriate receiver. In Haskell, ad hoc polymorphism is realized thought the type classes. In summary, ad hoc polymorphism is about sharing the same name across many different types, but each type has to opt-in.


*Compile-time Polymorphism* A function is called during the compilation of a program in *compile-time polymorphism*. **Early binding** or **static binding** is the term used for this type of polymorphism. Function overloading or operator overloading are used to accomplish the compile-time polymorphism.

When several functions of the same name but different parameters exist, they are said to be *overloaded*. Changes in the number of arguments or the form of arguments may cause functions to become overloaded.

Three `add` functions are created: the first accepts two Int parameters, the second accepts two Double parameters, the third accepts 3 Int parameters. The `main` function calls each one - which `add` function is selected is based on their CT type signature.

*Runtime Polymorphism* Functions are called during the execution of a program in a Runtime polymorphism. As a result, it is referred to as late binding or dynamic binding. Function overriding or virtual function is used to accomplish the runtime polymorphism.

*Function overriding* In function overriding, override a base class function in a derived class, to give it a new definition.

Classes `A` and `B`, where A is a base class and B is a derived class. The `display` function of the base class is redefined in the child class is *function overriding*. In the `main` function creating the object of class B and calling the display() function, here the display() function of class B gets execute which is decided based on the object on which it is calling. 

A *virtual function* is a base class member function. In a derived class, we can redefine it. The virtual function must be declared in the base class using the keyword `virtual`.

In computer science, **polymorphism** is a programming language feature that allows values of different data types to be handled in a uniform manner.

On the one hand, we have parametric polymorphism, where a single generic function acts on a variety of types. This is in contrast to adhoc polymorphism, where we have an overloaded function that is resolved to a particular function implementation by the compiler. Put another way, parametric polymorphism allows us to lift the level of abstraction, whereas ad-hoc polymorphism gives us a powerful tool for decoupling. In this sense, parametric polymorphism is considered to be "true polymorphism", while ad hoc is only "apparent" (or "synthetic").
