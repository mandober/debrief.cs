# Semantics 

https://en.wikipedia.org/wiki/Semantics_(computer_science)

In programming language theory (PLT), *semantics* is the field concerned with the rigorous mathematical study of the *meaning of programming languages*. It does so by evaluating the meaning of syntactically valid strings defined by a specific PL, showing the computation involved. In such a case that the evaluation would be of syntactically invalid strings, the result would be non-computation.

Semantics describes the processes a computer follows when executing a program in that specific language. This can be shown by describing the relationship between the input and output of a program, or an explanation of how the program will be executed on a certain platform, hence creating a *model of computation*.

The field of formal semantics encompasses all of the following:
- The definition of semantic models
- The relations between different semantic models
- The relations between different approaches to meaning
- The relation between computation and the underlying mathematical structures from fields such as logic, set theory, model theory, category theory, etc.

Semantics has close links with other areas of computer science such as programming language design, type theory, compilers and interpreters, program verification and model checking.

## Approaches

There are many approaches to formal semantics, but they all more-less belong to the three major classes:

* **Denotational semantics**, whereby each phrase in the PL is interpreted as a *denotation*, i.e. a conceptual meaning that can be thought of abstractly. Such denotations are often mathematical objects inhabiting a mathematical space, but it is not a requirement that they should be so. As a practical necessity, denotations are described using some form of mathematical notation, which can in turn be formalized as a denotational metalanguage. For example, denotational semantics of FPLs often translate the language into *domain theory*. Denotational semantic descriptions can also serve as compositional translations from a PL into the denotational metalanguage and used as a basis for designing compilers.

* **Operational semantics**, whereby the execution of a PL is described directly (rather than by translation). Operational semantics loosely corresponds to *interpretation*, although again the "implementation language" of the interpreter is generally a mathematical formalism. Operational semantics may define an *abstract machine* (such as the SECD machine), and give meaning to phrases by describing the transitions they induce on states of the machine. Alternatively, as with the pure lambda calculus, operational semantics can be defined via syntactic transformations on phrases of the language itself;

* **Axiomatic semantics**, whereby one gives meaning to phrases by describing the axioms that apply to them. Axiomatic semantics makes no distinction between a phrase's meaning and the logical formulas that describe it; its meaning is exactly what can be proven about it in some logic. The canonical example of axiomatic semantics is *Hoare logic*.

Apart from the choice between denotational, operational or axiomatic approaches, most variations in formal semantic systems arise from the choice of supporting mathematical formalism.

https://en.wikipedia.org/wiki/Denotational_semantics
https://en.wikipedia.org/wiki/Operational_semantics
https://en.wikipedia.org/wiki/Axiomatic_semantics


## Variations

Some variations of formal semantics include the following:

* *Action semantics* is an approach that tries to modularize denotational semantics, splitting the formalization process in two layers (macro and microsemantics) and predefining three semantic entities (actions, data and yielders) to simplify the specification.

* *Algebraic semantics* is a form of axiomatic semantics based on algebraic laws for describing and reasoning about program semantics in a formal manner.

* *Attribute grammars* define systems that systematically compute "metadata" (called attributes) for the various cases of the language's syntax. Attribute grammars can be understood as a denotational semantics where the target language is simply the original language enriched with attribute annotations. Aside from formal semantics, attribute grammars have also been used for code generation in compilers, and to augment regular or context-free grammars with context-sensitive conditions.

* *Categorical semantics* uses category theory as the core mathematical formalism. A categorical semantics is usually proven to correspond to some axiomatic semantics that gives a syntactic presentation of the categorical structures. Also, denotational semantics are often instances of a general categorical semantics.

* *Concurrency semantics* is a catch-all term for any formal semantics that describes concurrent computations. Historically important concurrent formalisms have included the actor model and process calculi;

* *Game semantics* uses a metaphor inspired by game theory.

* *Predicate transformer semantics*, developed by Edsger W. Dijkstra, describes the meaning of a program fragment as the function transforming a postcondition to the precondition needed to establish it.

https://en.wikipedia.org/wiki/Action_semantics
https://en.wikipedia.org/wiki/Algebraic_semantics_(computer_science)
https://en.wikipedia.org/wiki/Attribute_grammar
https://en.wikipedia.org/wiki/Categorical_semantics
https://en.wikipedia.org/wiki/Concurrency_semantics
https://en.wikipedia.org/wiki/Game_semantics
https://en.wikipedia.org/wiki/Predicate_transformer_semantics


## Describing relationships

For a variety of reasons, one might wish to describe the relationships between different formal semantics. For example:

* To prove that a particular operational semantics for a language satisfies the logical formulas of an axiomatic semantics for that language. Such a proof demonstrates that it is "sound" to reason about a particular (operational) interpretation strategy using a particular (axiomatic) proof system.

* To prove that operational semantics over a high-level machine is related by a simulation with the semantics over a low-level machine, whereby the low-level abstract machine contains more primitive operations than the high-level abstract machine definition of a given language. Such a proof demonstrates that the low-level machine "faithfully implements" the high-level machine.

It is also possible to relate multiple semantics through abstractions via the theory of abstract interpretation.
