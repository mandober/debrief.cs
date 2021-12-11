## 3. Untyped Arithmetic Expressions
(Types and Programming Languages, Benjamin C. Pierce, 2002)

Contents
- 3.1 Introduction
- 3.2 Syntax
- 3.3 Induction on Terms
- 3.4 Semantic Styles
- 3.5 Evaluation
- 3.6 Notes


To talk rigorously about type systems and their properties, we first need clear, precise and mathematically tractable tools for expressing and reasoning about the syntax and semantics of programs. We first develop a small language of numbers and booleans, somewhat trivial as a language but useful as a vehicle for introduction of several fundamental PLT concepts: abstract syntax, inductive definitions and proofs, evaluation, modeling of run-time errors.

## 3.1 Introduction

The language used in this chapter contains just a handful of syntactic forms:
the boolean constants true and false, conditional expressions, the numeric
constant 0, the arithmetic operators succ (successor) and pred (predecessor),
and a testing operation iszero that returns true when it is applied to 0
and false when it is applied to some other number. These forms can be
summarized compactly by the following grammar.

## 3.2 Syntax

## 3.3 Induction on Terms

## 3.4 Semantic Styles

Having formulated the syntax of our language rigorously, we next need a similarly precise definition of how terms are evaluated, i.e. *the semantics of the language*.

There are 3 basic approaches to formalizing semantics:

1. **Operational semantics** specifies the behavior of a PL by defining a simple *abstract machine* for it. This machine is "abstract" in the sense that it uses the terms of the language as its machine code, rather than some low-level microprocessor instruction set. For simple languages, a state of the machine is just a term, and the machine's behavior is defined by a *transition function* that, for each state, either gives the next state by performing a *simplification step* on the term or declares that the machine has halted. The meaning of a term `t` can be taken as the final state the machine reaches when started with `t` as its initial state.

Strictly speaking, what we are describing here is the so-called **small-step style** of operational semantics, sometimes called *structural operational semantics* (Plotkin, 1981).

An alternative, **big-step style**, sometimes called *natural semantics* (Kahn, 1987), also exists in which a single transition of the abstract machine evaluates a term to its final result.

It is sometimes useful to give two or more different operational semantics for a single language - some more abstract, with machine states that look similar to the terms that the programmer writes, others closer to the structures manipulated by an actual interpreter or compiler for the language. Proving that the behaviors of these different machines correspond in some suitable sense when executing the same program amounts to proving the *correctness of an implementation of the language*.

2. **Denotational semantics** takes a more abstract view of meaning: instead of just a sequence of machine states, the meaning of a term is taken to be some mathematical object (number, function, set, relation, etc.).

Giving a denotational semantics for a language consists of finding a collection of semantic domains and then defining an *interpretation function* that maps the terms into elements of these domains.

The search for appropriate semantic domains for modeling various language features has given rise to a rich and elegant research area known as *domain theory*.

One major advantage of denotational semantics is that it abstracts from the gritty details of evaluation and highlights the essential concepts of the language. Also, the properties of the chosen collection of semantic domains can be used to derive powerful laws for reasoning about program behaviors - laws for proving that two programs have exactly the same behavior, for example, or that a program's behavior satisfies some specification. Finally, from the properties of the chosen collection of semantic domains, it is often immediately evident that various (desirable or undesirable) things are impossible in a language.

3. **Axiomatic semantics** takes a more direct approach to these laws: instead of first defining the behaviors of programs (by giving some operational or denotational semantics) and then deriving laws from this definition, axiomatic methods take the laws themselves as the definition of the language.

The meaning of a term is just what can be proved about it. The beauty of axiomatic methods is that they focus attention on the process of reasoning about programs. It is this line of thought that has given CS such powerful ideas as invariants.

During the '60s and '70s, operational semantics was generally regarded as inferior to the other two styles - useful for quick and dirty definitions of language features, but inelegant and mathematically weak. But in the '80s, the more abstract methods began to encounter increasingly thorny technical problems (nondeterminism and concurrency for denotational semantics; procedures for axiomatic semantics), and the simplicity and flexibility of operational methods seemed more and more attractive by comparison - especially in the light of new developments in the area by a number of researchers, beginning with Plotkin's `Structural Operational Semantics` (1981), Kahn's `Natural Semantics` (1987), and Milner's work on CCS (1980, 1989, 1999), which introduced more elegant formalisms and showed how many of the powerful mathematical techniques developed in the context of denotational semantics could be transferred to an operational setting. Operational semantics has become an energetic research area in its own right and is often the method of choice for defining programming languages and studying their properties. It is used exclusively in this book.

## 3.5 Evaluation

Operational semantics of a language of boolean expressions:

```js
𝔹 (untyped)

Syntax
  t ::=                                                   terms:
    true                                                  constant true
    false                                                 constant false
    if t then t else t                                    conditional

  v ::=                                                   values:
    true                                                  value true
    false                                                 value false

Evaluation                                                t ---> t'
  if true  then t₂ else t₃ ---> t₂                        (E-IfTrue)
  if false then t₂ else t₃ ---> t₃                        (E-IfFalse)

                     t₁ ---> t₁'
  -------------------------------------------------       (E-If)
  if t₁ then t₂ else t₃ ---> if t₁' then t₂ else t₃
```
