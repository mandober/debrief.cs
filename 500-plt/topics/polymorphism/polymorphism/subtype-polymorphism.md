# Subtype polymorphism

https://en.wikipedia.org/wiki/Subtyping

In programming language theory, **subtype polymorphism** (subtyping, inclusion polymorphism) is a form of *type polymorphism* in which a subtype is a datatype that is related to another datatype (the supertype) by some notion of substitutability, meaning that program elements, typically subroutines or functions, written to operate on elements of the supertype can also operate on elements of the subtype.


If S is a subtype of T, the subtyping relation is often written S <: T, to mean that any term of type S can be safely used in a context where a term of type T is expected. The precise semantics of subtyping crucially depends on the particulars of what "safely used in a context where" means in a given programming language. The type system of a programming language essentially defines its own subtyping relation, which may well be trivial should the language support no (or very little) conversion mechanisms.

Due to the subtyping relation, a term may belong to more than one type. Subtyping is therefore a form of type polymorphism. In object-oriented programming the term 'polymorphism' is commonly used to refer solely to this subtype polymorphism, while the techniques of parametric polymorphism would be considered generic programming.

Functional programming languages often allow the subtyping of records. Consequently, simply typed lambda calculus extended with record types is perhaps the simplest theoretical setting in which a useful notion of subtyping may be defined and studied[citation needed]. Because the resulting calculus allows terms to have more than one type, it is no longer a "simple" type theory. Since functional programming languages, by definition, support function literals, which can also be stored in records, records types with subtyping provide some of the features of object-oriented programming. Typically, functional programming languages also provide some, usually restricted, form of parametric polymorphism. In a theoretical setting, it is desirable to study the interaction of the two features; a common theoretical setting is system F<:. Various calculi that attempt to capture the theoretical properties of object-oriented programming may be derived from system F<:.

The concept of subtyping is related to the linguistic notions of hyponymy and holonymy. It is also related to the concept of bounded quantification in mathematical logic. Subtyping should not be confused with the notion of (class or object) inheritance from object-oriented languages;[1] subtyping is a relation between types (interfaces in object-oriented parlance) whereas inheritance is a relation between implementations stemming from a language feature that allows new objects to be created from existing ones. In a number of object-oriented languages, subtyping is called interface inheritance, with inheritance referred to as implementation inheritance.



## Refs

https://mvanier.livejournal.com/3820.html
https://byorgey.wordpress.com/2010/06/29/typed-type-level-programming-in-haskell-part-i-functional-dependencies/
http://lambda-the-ultimate.org/node/979


https://en.wikipedia.org/wiki/Lambda_calculus
https://en.wikipedia.org/wiki/Church_encoding
https://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding


https://en.wikipedia.org/wiki/Subtyping
https://en.wikipedia.org/wiki/Polymorphism_(computer_science)
https://en.wikipedia.org/wiki/Data_type
https://en.wikipedia.org/wiki/Liskov_substitution_principle
https://en.wikipedia.org/wiki/Subroutine
https://en.wikipedia.org/wiki/Functional_programming
https://en.wikipedia.org/wiki/Record_(computer_science)
https://en.wikipedia.org/wiki/Simply_typed_lambda_calculus
https://en.wikipedia.org/wiki/Anonymous_function
https://en.wikipedia.org/wiki/Type_theory
https://en.wikipedia.org/wiki/Hyponymy_and_hypernymy
https://en.wikipedia.org/wiki/Holonymy
https://en.wikipedia.org/wiki/System_F-sub
https://en.wikipedia.org/wiki/Bounded_quantification
https://en.wikipedia.org/wiki/Inheritance_(object-oriented_programming)
