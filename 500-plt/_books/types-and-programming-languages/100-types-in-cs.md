# Types and Programming Languages
Benjamin C. Pierce, 2002

## 1.1 Types in Computer Science

Software engineering recognizes a range of *formal methods* for helping ensure that software behaves correctly with respect to an implicit or explicit specification of the desired behavior.

Formal methods range from the *powerful formal methods* such as Hoare logic, algebraic specification languages, modal logics, denotational semantics, on one end, and the *lightweight formal methods* on the other end, that include model checkers (search for errors in finite-state systems), run-time monitoring (dynamic behaviour detection), and, most importantly, *type systems*. These are deemed "lightweight" because they can be automated and built in a compiler, making them usable independent of programmers' sophistication (which is a big prerequisite for using the powerful formal methods).

> **Type systems** are tractable syntactic methods 
> that classify values in a programming language 
> into types according to their common properties and behavior, 
> in order to prove the absence of undesired behaviors.

Type systems are tools for *reasoning about programs*. They are part of the type theory that is a much broader field of study in math. *Type theory* was formed as a math discipline in the early 1900's as a way to avoid the emerging paradoxes related to set theory, most of all the Russell's paradox that lurked in light of self-referential structures (particularly sets). To battle the paradox, Russell and Whitehead have devised *ramified theory of types* that introduced types to set theory, by constructing an infinite hierarchy of types. The paradox was avoided by typifing sets and allowing only the higher-ranked sets to contain lower-ranked sets.

During the XX century, types have become standard tools in logic, especially in proof theory. The significant milestones where Ramsey's *simple theory of types* in 1925 that was used by Church as the basis for typifying his lambda calculus in order to avoid its paradoxes by introducing Simply Typed Lambda Calculus in 1940. Martin Löf's *constructive type theory* (1973, 1984); *Pure type systems* (Berardi, 1988; Terlouw, 1989; Barendregt, 1992).

There are two approaches to type systems in CS: the more practical one, which is concerned with application of type systems to PLs, and the more abstract one that focuses on connections between various pure-typed lambda calculi and varieties of logic, via the Curry-Howard Isomorphism (CHI).

Another aspect of type systems is the *classification of syntactic phrases* of a PL according to the properties of the values they compute when executed.

A type system can be regarded as calculating a static approximation of the run-time behavior of a program. Static type systems do most of their work at compile-time, as opposed to dynamic type systems that do their work at run-time (when it's too late). Having a system in place that can catch many sorts of errors statically (when the cost of errors is low) is a huge benefit and a very good reason to use a statically typed PL.

A type of an expression depends only on the types of its subexpressions, and so the types assigned to terms are generally calculated compositionally.

Being static, type systems are necessarily *conservative*: they can prove the absence of incorrect behavior, but they cannot prove the presence of incorrect behaviour, thus they sometimes reject programs at compile-time that are actually well-behaved at run time, when the correct behaviour cannot be proven (within a particular type system). For these situations, all such PLs provide an escape hatch, a mechanism to circumvent the type system (usually detectable by the presence of the `unsafe` keyword).

The tension between conservativity and expressiveness is a fundamental issue in every type system, and the main driving force towards designing better and smarter type systems that will type-check more, objectively correct, programs. The latest step in that sense is the development of *dependent type theory* and related type systems (Agda, Idris, Coq, etc.) that have much more guarantees compared to traditional type systems (e.g. they can guarantee that the second argument to the division operation is non-zero number).

Programmers working in richly typed languages often remark that their programs tend to "just work", once they pass the typechecker, much more often than they feel they have a right to expect.

An expressive type systems offer numerous "tricks" for encoding information about structure in terms of types, such as phantom types, newtype aliases, type classes, type families, higher-rank types, type roles, etc. even a kind system that is for types what type system is for terms.

## 1.2 What Type Systems Are Good For

- detecting errors
- abstraction
- documentation
- language safety
- efficiency
- further applications

Structuring large systems in terms of modules with clear interfaces leads to a more abstract style of design, where interfaces are designed and discussed independently from their eventual implementations.

Types also contribute to language safety; safe languages are those that make it very hard to shoot yourself in the foot. A safe language is one that protects its own abstractions. Language safety is not the same thing as static type safety. Language safety can be achieved by static checking, but also by run-time checks that trap nonsensical operations just at the moment when they are attempted and stop the program or raise an exception.

Run-time safety is not normally achievable by static typing alone. Still today, most safe PLs actually perform array-bounds checking dynamically. In fact, static elimination of array-bounds checking is a long-standing goal for type system designers. In principle, the necessary mechanisms based on *dependent types* are well understood, but packaging them in a form that balances expressive power, predictability and tractability of typechecking, and complexity of program annotations remains a significant challenge.

Most high-performance compilers rely heavily on information gathered by the typechecker during optimization and code-generation phases. Even compilers for languages without type systems per se work hard to recover approximations to the typing information. The `ML Kit Compiler` uses a powerful *region inference* algorithm to replace most, if not all, of the need for garbage collection by stack-based memory management.

A quite different application of type systems appears in the field of computational linguistics, where typed lambda-calculi form the basis for formalisms such as *categorial grammar*.

## 1.3 Type Systems and Language Design

In typed languages the type system itself is often taken as the foundation of the design and the organizing principle in light of which every other aspect of the design is considered.

A well-designed statically typed language will never require huge amounts of type information to be explicitly and tediously maintained by the programmer.

## 1.4 History

The earliest type systems in CS were used to make very simple distinctions between integer and floating point representations of numbers (Fortran). In the late 1950s, this classification was extended to structured data (arrays of records) and higher-order functions. In the 1970s, a number of richer concepts like parametric polymorphism, abstract data types, module systems, subtyping were introduced, and type systems emerged as a field in its own right. At the same time, computer scientists began to be aware of the connections between the type systems found in PLs and those of mathematical logic (CHI), leading to a rich interplay that continues to the present.

1870s
- origins of formal logic, Frege (1879)
1900s
- formalization of mathematics, Whitehead and Russell (1910)
1930s
- untyped lambda-calculus, Church (1941)
1940s
- simply typed lambda-calculus, Church (1940), Curry and Feys (1958)
1950s
- `Fortran`, Backus (1981)
- `Algol-60`, Naur et al. (1963)
1960s
- `Automath` project, de Bruijn (1980)
- `Simula`, Birtwistle et al. (1979)
- Curry-Howard correspondence, Howard (1980)
- `Algol-68`, van Wijngaarden et al. (1975)
1970s
- `Pascal`, Wirth (1971)
- Martin-Löf type theory (1973, 1982)
- System F, System Fω, Girard (1972)
- polymorphic lambda-calculus, Reynolds (1974)
- `CLU`, Liskov et al. (1981)
- polymorphic type inference, Milner (1978), Damas and Milner (1982)
- `ML`, Gordon, Milner, Wadsworth (1979)
- intersection types, Coppo and Dezani (1978), Coppo, Dezani, Sallé (1979), Pottinger (1980)
1980s
- `NuPRL` project, Constable et al. (1986)
- subtyping, Reynolds (1980), Cardelli (1984), Mitchell (1984)
- ADTs as existential types, Mitchell and Plotkin (1988)
- calculus of constructions, Coquand (1985), Coquand and Huet (1988)
- linear logic, Girard (1987), Girard et al. (1989)
- bounded quantification, Cardelli and Wegner (1985), Curien and Ghelli (1992), Cardelli et al. (1994)
- Edinburgh Logical Framework, Harper, Honsell, and Plotkin (1992)
- `Forsythe`, Reynolds (1988)
- pure type systems, Terlouw (1989), Berardi (1988), Barendregt (1991)
- dependent types and modularity, Burstall and Lampson (1984), MacQueen (1986)
- `Quest`, Cardelli (1991)
- effect systems, Gifford et al. (1987), Talpin and Jouvelot (1992)
- row variables; extensible records, Wand (1987), Rémy (1989), Cardelli and Mitchell (1991)
1990s
- higher-order subtyping, Cardelli (1990), Cardelli and Longo (1991)
- typed intermediate languages, Tarditi, Morrisett, et al. (1996)
- object calculus, Abadi and Cardelli (1996)
- translucent types and modularity, Harper and Lillibridge (1994), Leroy (1994)
- typed assembly language, Morrisett et al. (1998)
