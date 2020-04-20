# TAPL: Types in Computer Science

*Formal methods* help ensure a system acts correctly according to its specs.

Formal systems include:
- Hoare logic (pre and post conditions)
- Algebraic specification languages
- Modal logics
- Denotational semantics (using math to specify semantics)

Lightweight formal methods include:
- model checkers
- run-time monitoring
- type systems

The lightweight formal methods have advantage that they can be built in a compiler, making them usable independent of programmers' sophistication. *Model checkers* search for errors in finite-state systems (chip design, communication protocols). *Run-time monitoring* allows a system to dynamically detect whether components behave properly. By far, the most popular lightweight method is a *type system*.

> **Type systems** are tractable syntactic methods that classify values in a programming language into types according to their common properties and behavior, in order to prove the absence of undesired behaviors. Type systems are means for reasoning about programs.

**Type theory** is a much broader field of study of math logic, brought about out of the effort to resolve paradoxes, especially Russell's paradox, which revealed deep inconsistencies in naive set theories. In 1900's, when he begun authoring Principia with A.Whitehead, B.Russell himself introduced the *ramified (stratified) type theory*, actually a hierarchy of type levels, as a way to avoid his paradox.

Major landmarks in this area include:
- Russell's original *ramified theory of types* (Whitehead and Russell, 1910)
- Ramsey's *simple theory of types* (1925)
  the basis of Church's *simply typed lambda calculus* (1940)
- Martin-Löf's *constructive type theory* (1973, 1984)
- Berardi, Terlouw and Barendregt's *pure type systems*
  (Berardi, 1988; Terlouw, 1989; Barendregt, 1992)

There are 2 major branches of type systems:
- The more practical, which concerns applications to programming languages
- The more abstract focuses on connections between various *pure-typed lambda calculi* and varieties of logic, via the *Curry-Howard correspondence*

Research on typed lambda calculi is usually concerned with systems in which every well-typed computation is guaranteed to terminate, whereas most programming languages sacrifice this property for the sake of features like recursive function definitions.

~ ~ ~

Type systems *classify* expressions into types according to a common property and behavior, but first they have to evaluate these expressions before they can analyse their behavior. Thus, a type system tries to calculate the static approximation of their run-time behavior. Moreover, the types assigned to expressions are generally calculated compositionally, with the type of an expression depending only on the types of its subexpressions.

Static type system perform their analysis at compile-time, unlike *dynamic or latent typing* found in languages such as Scheme, which use *run-time type tags* to distinguish different kinds of structures in the heap.

> Being static, type systems are necessarily conservative: they can categorically prove the absence of incorrect behaviors, but they cannot prove their presence.

As a consequence, they sometimes reject programs at compile-time that are actually well-behaved at run time. However, languages that provide such guarantees also provide an escape hatch to circumvent the strictness of the type system in such situations.
