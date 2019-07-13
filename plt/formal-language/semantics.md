# Semantics

Denotational semantics
Operational semantics
Axiomatic semantics


In *programming language theory*, __semantics__ is the field concerned with the rigorous mathematical study of the meaning of programming languages.

It does so by evaluating the meaning of syntactically valid strings defined by a specific programming language, showing the computation involved.

In such a case that the evaluation would be of syntactically invalid strings, the result would be non-computation.

Semantics describes the processes a computer follows when executing a program in that specific language. This can be shown by describing the relationship between the input and output of a program, or an explanation of how the program will be executed on a certain platform, hence creating a model of computation.


## Disciplines

The field of __formal semantics__ encompasses all of the following:
- definition of semantic models
- relations between different semantic models
- relations between different approaches to meaning
- relation between computation and the underlying mathematical structures (from fields such as logic, set theory, model theory, category theory, etc.)

Semantics has a close link with other CS areas: programming, language design, type theory, compilers and interpreters, program verification, model checking.


## Approaches

The three major approaches to formal semantics:

**Denotational semantics**, whereby each phrase in the language is interpreted as a denotation, i.e. a conceptual meaning that can be thought of abstractly.

Such denotations are often mathematical objects inhabiting a mathematical space, but it is not a requirement that they should be so.

As a practical necessity, denotations are described using some form of mathematical notation, which can in turn be formalized as a denotational metalanguage.

For example, denotational semantics of functional languages often translate the language into domain theory.

Denotational semantic descriptions can also serve as compositional translations from a programming language into the denotational metalanguage and used as a basis for designing compilers.


**Operational semantics**, whereby the execution of the language is described directly (rather than by translation).

Operational semantics loosely corresponds to interpretation, although again the "implementation language" of the interpreter is generally a mathematical formalism.

Operational semantics may define an abstract machine (such as the SECD machine), and give meaning to phrases by describing the transitions they induce on states of the machine.

Alternatively, as with the pure lambda calculus, operational semantics can be defined via syntactic transformations on phrases of the language itself.

**Axiomatic semantics**, whereby one gives meaning to phrases by describing the axioms that apply to them.

Axiomatic semantics makes no distinction between a phrase's meaning and the logical formulas that describe it. Its meaning is exactly what can be proven about it in some logic.

The canonical example of axiomatic semantics is *Hoare logic*.


---

https://en.wikipedia.org/wiki/Category:Programming_language_semantics

https://en.wikipedia.org/wiki/Semantics_(computer_science)
https://en.wikipedia.org/wiki/Computational_semantics
https://en.wikipedia.org/wiki/Formal_semantics_of_programming_languages
https://en.wikipedia.org/wiki/Semantic_equivalence

https://web.archive.org/web/20150619164601/http://www.emu.edu.tr/aelci/Courses/D-318/D-318-Files/plbook/semantic.htm
