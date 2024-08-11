# Design and implementation of programming languages :: TERMS

formal language
programming language (PL)
alphabet
symbols, characters
words, tokens
well-formed expressions, well-formed words

syntax
gramar
BNF notation
abstract syntax
concrete syntax
term
expression
value
constant
literal
language construct, syntactic form, syntactic phrase
inductively defined grammar of terms
evaluation
evaluation order
reduction

- Defining a grammar
  - grammar: defines legal syntactic forms, well-formed language forms/exp
  - inductive definition of grammar
    - definition of grammar by induction on terms
  - BNF (compact notation for inductive definition)
  - term, atomic expression (bulding block of compound expressions)
  - compound expressions

- Semantics
  - operational semantics
  - denotational semantics
  - axiomatic semantics

- Operational semantics (opsem)
  + small-step style opsem (structural opsem)
  + big-step style opsem (natural semantics)
  - abstract machine
    - its behavior is defined by transition function between states
    - it starts in an initial state, and halts in a final state which defines the meaning of an expression
  - small-step style of opsem, aka structural operational semantics (Plotkin, 1981) performs a single step of simplification of an expression, or halts.
  - in the big-step style, aka natural semantics (Kahn, 1987), a single transition of the abstract machine evaluates a term to its final result.
  - Several opsem possible and useful to define.
  - Proving that behaviors of different opsems coincide (in some suitable sense when executing the same program) amounts to proving the correctness of an implementation of a PL.

- Denotational semantics
  - meaning of a term is a mathematical object such as a number or function
  - giving denotational semantics consists of finding a collection of semantic domains and then defining an interpretation function that maps terms into domain elements.
  - semantic domains
  - domain theory
  - extracting properties to prove laws about program behavior
  - equational reasoning about programs 

- Axiomatic semantics
  - methods take the laws themselves as the definition of a PL
  - meaning of a term is what can be proved about it
  - focus attention on the process of reasoning about programs
  - idea of invariants
  



---

  features
  implementation
  design
  tradeoffs

Basic concepts
  abstract syntax
  inductive definitions and proofs
  inference rules
  operational semantics
  BNF grammar
  evaluation
  abstract machine
  concrete implementation

fundamental concepts
  abstract syntax
  inductive definitions and proofs
  evaluation
  compile-time
  run-time
  modeling run-time errors



Flow
  Motivation
  formal definitions
  proofs of basic properties such as type safety
  investigation of metatheory
  type-checking and proofs of soundness, completeness, and termination
  concrete realization of these algorithms as a program


programming language concepts
  syntax
  abstract syntax
  concrete syntax
  grammar

evaluation and reduction
  evaluation
  reduction
  call-by-value
  call-by-name
  call-by-need
  normal order
  applicative order
  strict evaluation
  non-strict (lazy) evaluation
  evaluation under lambda
  normal form
  weak-head normal form
  redex
  reduct
  term vs expression vs value
  stuck term
  confluence


language design
  programming language
  programming language concepts
  programming language features
  compiler implementation
  security
  type system


lambda calculus
  untyped lambda calculi
  simply-typed lambda calculus
  typed lambda calculi
type system
polymorphism
  paramteric (universal) polymorphism
  ad hoc polymorphism
  quantification
  universal quantification
  existential quantification
  bounded quantification
type inference, type reconstruction
subtyping
type ctors
  functions from types to types
  type operators
recursive types


imperative constructs
  assignment
  mutation
  references
  exceptions
  null
