# CS :: PLT :: PL Implementation :: Preliminaries

To study programming languages (their features, properties, implementation, design tradeoffs, type systems, etc.), we need clear, precise, mathematically tractable tools for expressing and reasoning about the *syntax* and *semantics* of programs.

Modern languages embed various paradigms, but it is the easiest to start with functional programming as it is the least divorced from mathematics. FPLs are based on lambda calculus, so we base this discussion initially on the untyped lambda calculus (ULC), and some other, simple and untyped, programming languages we'll design ourselves for the purposes of investigation of PLT, particularly as an aid to in studying the basic concepts of language implementation.

## Simple Untyped Programming Language

We develop an simple untyped programming language (we'll call SUPL) of booleans and numbers as a vehicle for introducing fundamental PLT concepts, such as
- syntactic forms
- abstract syntax
- concrete syntax
- inductive definitions and proofs
- evaluation
- modeling of run-time errors


## Grammar

The two main *aspects* of any PL are syntax and semantics.

The **syntax** of a language is defined by a grammar.

A **grammar** is a set of rules, describing how to form valid syntactic forms in the language. By *syntactic form* we mean strings of characters in the language.




**Semantics** describes the meaning of syntactic forms - language expressions. 

**Syntax** describes the legal syntactic forms, i.e. the set of legal expression expressible in the language.


Any language has a set of **legal syntactic forms** whose validity is governed and descibed by a **grammar**.


The syntactic forms of this simple language can be summarized by the grammar:

```hs
t :=                                terms
  true constant true
  false constant false
  if t then t else t conditional
  0 constant zero
  succ t successor
  pred t predecessor
  iszero t zero test
```

---

The underlying computational substrate is a call-by-value lambda-calculus, which matches most present-day programming languages and extends easily to imperative constructs such as references and exceptions.

For each *language feature*, the main concerns are the practical motivations for considering this feature, the techniques needed to prove safety of languages that include it, and the implementation issues that it raises-in particular, the design and analysis of typechecking algorithms.
