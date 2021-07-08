# Programming language theory

https://en.wikipedia.org/wiki/Programming_language_theory

**Programming language theory** - PLT, sometimes **Theory of Programming Languages** - TPL, is a CS branch that deals with the design, implementation, analysis, characterization, and classification of programming languages and their features. It is an area of active research that both, depends on and affects mathematics, software engineering and linguistics.

The history of PLT predates even the programming languages. The *lambda calculus*, invented by Alonzo Church in the 1930s as a tool for exploring the foundations of mathematics, is largely considered to be the world's first programming language, even though it was intended to model computation rather than being a means for describing algorithms to a computer system. Many modern functional programming languages have been described as providing a "thin veneer" over the lambda calculus, and many are easily described in terms of it. The most popular pure functional language today, Haskell, has lambda calculus as its core language, with all its other features being translatable into the core language.

The first programming language to be invented was *Plankalkül*, designed by Konrad Zuse in the 1940s, but not publicly known until 1972, and even not implemented until 1998.

The first widely known and successful high-level programming language was `Fortran`, developed from 1954 to 1957 by a team of IBM researchers led by *John Backus*. The success of FORTRAN led to the formation of a committee of scientists to develop a "universal" computer language; the result of their effort was `ALGOL 58`.

During the same period, *John McCarthy* had developed the `Lisp` programming language, based on the lambda calculus. LISP was the first PL with origins in academia to be successful.

With the success of these initial efforts, programming languages became an active topic of research, from the 1960s onwards.


## Subdisciplines

There are several fields of study which either lie within PLT, or which have a profound influence on it; many of these have considerable overlap. In addition, PLT makes use of many other branches of mathematics, including computability theory, category theory, and set theory.

**Formal semantics**    
Formal semantics is the formal specification of the behaviour of computer programs and programming languages. The 3 common approaches to describe the semantics of a computer program are *denotational semantics*, *operational semantics* and *axiomatic semantics*.

**Type theory**    
Type theory is the study of type systems: tractable syntactic method for proving the absence of certain program behaviors by classifying phrases according to the kinds of values they compute. Many PLs are distinguished by the characteristics of their type systems.

**Program analysis and transformation**    
Program analysis is the general problem of examining a program and determining key characteristics (such as the absence of classes of program errors). Program transformation is the process of transforming a program in one form (language) to another form.

**Comparative programming language analysis**    
Comparative programming language analysis seeks to classify programming languages into different types based on their characteristics; broad categories of programming languages are often known as *programming paradigms*.

**Generic and metaprogramming**    
Metaprogramming is the generation of higher-order programs which, when executed, produce programs (possibly in a different language, or in a subset of the original language) as a result.

**Domain-specific languages**    
Domain-specific languages are languages constructed to efficiently solve problems of a particular part of domain.

**Compiler construction**   
Compiler theory is the theory of writing compilers (or more generally, translators); programs which translate a program written in one language into another form. The actions of a compiler are traditionally broken up into *syntax analysis* (scanning and parsing), *semantic analysis* (determining what a program should do), *optimization* (improving the performance of a program) and *code generation* (e.g. generation and output of the CPU instructions).

**Run-time systems**    
Runtime systems refers to the development of programming language *runtime environments* and their components, including *virtual machines*, *garbage collection*, *foreign function interface*.




## Some key events in the PLT history

Some other key events in the history of programming language theory since then:

* 1950s
  - Noam Chomsky developed the *Chomsky hierarchy* in linguistics, a discovery which has directly impacted PLT and other branches of CS.
* 1960s
  - `Simula` PL was developed by *Ole-Johan Dahl* and *Kristen Nygaard*; it is widely considered to be the first example of an OO PL, also introducing the concept of *coroutines*.
  - In 1964, *Peter Landin* is the first to realize Church's lambda calculus can be used to model programming languages. He introduces the *SECD machine* which "interprets" lambda expressions.
  - In 1965, Landin introduces the `J` operator, essentially a form of continuation.
  - In 1966, Landin introduces `ISWIM`, an abstract computer programming language in his article "The Next 700 Programming Languages". It is influential in the design of languages leading to Haskell.
  - In 1966, *Corrado Böhm* introduced the programming language `CUCH` (Curry-Church)
  - In 1967, *Christopher Strachey* publishes his influential set of lecture notes "Fundamental Concepts in Programming Languages", introducing the terminology *R-values*, *L-values*, *parametric polymorphism*, and *ad hoc polymorphism*.
  - In 1969, *J. Roger Hindley* publishes "The Principal Type-Scheme of an Object in Combinatory Logic", later generalized into the *Hindley–Milner* type inference algorithm.
  - In 1969, *Tony Hoare* introduces the *Hoare logic*, a form of axiomatic semantics.
  - In 1969, *William Alvin Howard* observed that a "high-level" proof system, referred to as natural deduction, can be directly interpreted in its intuitionistic version as a typed variant of the model of computation known as lambda calculus. This became known as the *Curry–Howard correspondence*.
* 1970s
  - In 1970, *Dana Scott* first publishes his work on *denotational semantics*.
  - In 1972, logic programming and `Prolog` were developed thus allowing computer programs to be expressed as mathematical logic.
  - A team of scientists at Xerox PARC led by *Alan Kay* develop `Smalltalk`, an OO PL widely known for its innovative development environment.
  - In 1974, John C. Reynolds discovers `System F`. It had already been discovered in 1971 by the mathematical logician *Jean-Yves Girard*.
  - From 1975, *Gerald Jay Sussman* and *Guy Steele* develop the `Scheme`, a Lisp dialect incorporating lexical scoping, a unified namespace, and elements from the actor model including first-class continuations.
  - Backus, at the 1977 ACM Turing Award lecture, assailed the current state of industrial languages and proposed a new class of programming languages now known as function-level programming languages.
  - In 1977, *Gordon Plotkin* introduces `Programming Computable Functions`, an abstract typed functional language.
  - In 1978, *Robin Milner* introduces the *Hindley–Milner type inference algorithm* for the `ML` programming language. Type theory became applied as a discipline to programming languages, this application has led to tremendous advances in type theory over the years.
* 1980s
  - In 1981, Gordon Plotkin publishes his paper on structured operational semantics.
  - In 1988, Gilles Kahn published his paper on natural semantics.
  - There emerged process calculi, such as the Calculus of Communicating Systems of Robin Milner, and the Communicating sequential processes model of C. A. R. Hoare, as well as similar models of concurrency such as the actor model of Carl Hewitt.
  - In 1985, the release of `Miranda` sparks an academic interest in lazy-evaluated pure functional programming languages. A committee was formed to define an open standard resulting in the release of the `Haskell` 1.0 standard in 1990.
  - Bertrand Meyer created the methodology *Design by contract* and incorporated it into the Eiffel programming language.
* 1990s
  - Gregor Kiczales, Jim Des Rivieres and Daniel G. Bobrow published the book "The Art of the Metaobject Protocol".
  - *Eugenio Moggi* and *Philip Wadler* introduced the use of monads for structuring programs written in functional programming languages.
