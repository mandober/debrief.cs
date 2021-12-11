# Practical Foundations for Programming Languages (PFFPL)
by Robert Harper, Cambridge University Press, 2016, 2nd Edition, 9781107150300
https://www.cs.cmu.edu/~rwh/pfpl/


## Sections

- I    Judgments and Rules
- II   Statics and Dynamics
- III  Function Types
- IV   Finite Data Types
- V    Infinite Data Types
- VI   Dynamic Types
- VII  Variable Types
- VIII Subtyping
- IX   Classes and Methods
- X    Exceptions and Continuations
- XI   Types and Propositions
- XII  Symbols
- XIII State
- XIV  Laziness
- XV   Parallelism
- XVI  Concurrency
- XVII Modularity

001-judgments-and-rules.md


## Contents

### I Judgments and Rules

  1. Syntactic Objects
    1.1 Abstract Syntax Trees
    1.2 Abstract Binding Trees

  2. Inductive Definitions
    2.1 Judgments
    2.2 Inference Rules
    2.3 Derivations
    2.4 Rule Induction
    2.5 Iterated and Simultaneous Inductive Definitions
    2.6 Defining Functions by Rules
    2.7 Modes

  3. Hypothetical and General Judgments
    3.1 Hypothetical Judgments
      3.1.1 Derivability
      3.1.2 Admissibility
    3.2 Hypothetical Inductive Definitions
    3.3 General Judgments
    3.4 Generic Inductive Definitions

### II Statics and Dynamics

  4. Statics
    4.1 Syntax
    4.2 Type System
    4.3 Structural Properties

  5. Dynamics
    5.1 Transition Systems
    5.2 Structural Dynamics
    5.3 Contextual Dynamics
    5.4 Equational Dynamics

  6. Type Safety
    6.1 Preservation
    6.2 Progress
    6.3 Run-Time Errors

  7. Evaluation Dynamics
    7.1 Evaluation Dynamics
    7.2 Relating Structural and Evaluation Dynamics
    7.3 Type Safety, Revisited
    7.4 Cost Dynamics

### III Function Types

  8 Function Definitions and Values
  8.1 First-Order Functions
  8.2 Higher-Order Functions
  8.3 Evaluation Dynamics and Definitional Equality
  8.4 Dynamic Scope

  9 Godel's T
  9.1 Statics
  9.2 Dynamics
  9.3 Definability
  9.4 Undefinability

  10 Plotkin's PCF
  10.1 Statics
  10.2 Dynamics
  10.3 Definability

### IV Finite Data Types

  11 Product Types
  11.1 Nullary and Binary Products
  11.2 Finite Products
  11.3 Primitive and Mutual Recursion

  12 Sum Types
  12.1 Nullary and Binary Sums
  12.2 Finite Sums
  12.3 Applications of Sum Types
  12.3.1 Void and Unit
  12.3.2 Booleans
  12.3.3 Enumerations
  12.3.4 Options

  13 Pattern Matching
  13.1 A Pattern Language
  13.2 Statics
  13.3 Dynamics
  13.4 Exhaustiveness and Redundancy
  13.4.1 Match Constraints
  13.4.2 Enforcing Exhaustiveness and Redundancy
  13.4.3 Checking Exhaustiveness and Redundancy

  14 Generic Programming
  14.1 Introduction
  14.2 Type Operators
  14.3 Generic Extension

### V Infinite Data Types

  15 Inductive and Co-Inductive Types
  15.1 Motivating Examples
  15.2 Statics
  15.2.1 Types
  15.2.2 Expressions
  15.3 Dynamics

  16 Recursive Types
  16.1 Solving Type Isomorphisms
  16.2 Recursive Data Structures
  16.3 Self-Reference
  16.4 The Origin of State

### VI Dynamic Types

  17 The Untyped l-Calculus
  17.1 The l-Calculus
  17.2 Definability
  17.3 Scott's Theorem
  17.4 Untyped Means Uni-Typed

  18 Dynamic Typing
  18.1 Dynamically Typed PCF
  18.2 Variations and Extensions
  18.3 Critique of Dynamic Typing

  19 Hybrid Typing
  19.1 A Hybrid Language
  19.2 Dynamic as Static Typing
  19.3 Optimization of Dynamic Typing
  19.4 Static Versus Dynamic Typing

### VII Variable Types

  20 Girard's System F
  20.1 System F
  20.2 Polymorphic Definability
  20.2.1 Products and Sums
  20.2.2 Natural Numbers
  20.3 Parametricity Overview
  20.4 Restricted Forms of Polymorphism
  20.4.1 Predicative Fragment
  20.4.2 Prenex Fragment
  20.4.3 Rank-Restricted Fragments

  21 Abstract Types
  21.1 Existential Types
  21.1.1 Statics
  21.1.2 Dynamics
  21.1.3 Safety
  21.2 Data Abstraction Via Existentials
  21.3 Definability of Existentials
  21.4 Representation Independence

  22 Constructors and Kinds
  22.1 Statics
  22.2 Higher Kinds
  22.3 Canonizing Substitution
  22.4 Canonization

### VIII Subtyping

  23 Subtyping
  23.1 Subsumption
  23.2 Varieties of Subtyping
  23.2.1 Numeric Types
  23.2.2 Product Types
  23.2.3 Sum Types
  23.3 Variance
  23.3.1 Product and Sum Types
  23.3.2 Function Types
  23.3.3 Quantified Types
  23.3.4 Recursive Types
  23.4 Safety

  24 Singleton Kinds
  24.1 Overview
  24.2 Singletons
  24.3 Dependent Kinds
  24.4 Higher Singletons

### IX Classes and Methods

  25 Dynamic Dispatch
  25.1 The Dispatch Matrix
  25.2 Class-Based Organization
  25.3 Method-Based Organization
  25.4 Self-Reference

  26 Inheritance
  26.1 Class and Method Extension
  26.2 Class-Based Inheritance
  26.3 Method-Based Inheritance

### X Exceptions and Continuations

  27 Control Stacks
  27.1 Machine Definition
  27.2 Safety
  27.3 Correctness of the Control Machine
  27.3.1 Completeness
  27.3.2 Soundness

  28 Exceptions
  28.1 Failures
  28.2 Exceptions
  28.3 Exception Type
  28.4 Encapsulation of Exceptions

  29 Continuations
  29.1 Informal Overview
  29.2 Semantics of Continuations
  29.3 Coroutines

### XI Types and Propositions

  30 Constructive Logic
  30.1 Constructive Semantics
  30.2 Constructive Logic
  30.2.1 Provability
  30.2.2 Proof Terms
  30.3 Proof Dynamics
  30.4 Propositions as Types

  31 Classical Logic
  31.1 Classical Logic
  31.1.1 Provability and Refutability
  31.1.2 Proofs and Refutations
  31.2 Deriving Elimination Forms
  31.3 Proof Dynamics
  31.4 Law of the Excluded Middle
  31.5 The Double-Negation Translation

### XII Symbols

  32 Symbols
  32.1 Symbol Declaration
  32.1.1 Scoped Dynamics
  32.1.2 Scope-Free Dynamics
  32.2 Symbolic References
  32.2.1 Statics
  32.2.2 Dynamics
  32.2.3 Safety

  33 Fluid Binding
  33.1 Statics
  33.2 Dynamics
  33.3 Type Safety
  33.4 Some Subtleties
  33.5 Fluid References

  34 Dynamic Classification
  34.1 Dynamic Classes
  34.1.1 Statics
  34.1.2 Dynamics
  34.1.3 Safety
  34.2 Class References
  34.3 Definability of Dynamic Classes
  34.4 Classifying Secrets

### XIII State

  35 Modernized Algol
  35.1 Basic Commands
  35.1.1 Statics
  35.1.2 Dynamics
  35.1.3 Safety
  35.2 Some Programming Idioms
  35.3 Typed Commands and Typed Assignables

  36 Assignable References
  36.1 Capabilities
  36.2 Scoped Assignables
  36.3 Free Assignables
  36.4 Safety for Free Assignables
  36.5 Benign Effects

### XIV Laziness

  37 Lazy Evaluation
  37.1 By-Need Dynamics
  37.2 Safety
  37.3 Lazy Data Structures
  37.4 Suspensions

  38 Polarization
  38.1 Positive and Negative Types
  38.2 Focusing
  38.3 Statics
  38.4 Dynamics
  38.5 Safety

### XV Parallelism

  39 Nested Parallelism
  39.1 Binary Fork-Join
  39.2 Cost Dynamics
  39.3 Multiple Fork-Join
  39.4 Provably Efficient Implementations

  40 Futures and Speculations
  40.1 Futures
  40.1.1 Statics
  40.1.2 Sequential Dynamics
  40.2 Speculations
  40.2.1 Statics
  40.2.2 Sequential Dynamics
  40.3 Parallel Dynamics
  40.4 Applications of Futures

### XVI Concurrency

  41 Process Calculus
  41.1 Actions and Events
  41.2 Interaction
  41.3 Replication
  41.4 Allocating Channels
  41.5 Communication
  41.6 Channel Passing
  41.7 Universality

  42 Concurrent Algol
  42.1 Concurrent Algol
  42.2 Broadcast Communication
  42.3 Selective Communication
  42.4 Free Assignables as Processes

  43 Distributed Algol
  43.1 Statics
  43.2 Dynamics
  43.3 Safety
  43.4 Situated Types

### XVII Modularity

  44. Components and Linking
    44.1 Simple Units and Linking
    44.2 Initialization and Effects

  45. Type Abstractions and Type Classes
    45.1 Type Abstraction
    45.2 Type Classes
    45.3 A Module Language
    45.4 First- and Second-Class

  46. Hierarchy and Parameterization
    46.1 Hierarchy
    46.2 Parameterizaton
    46.3 Extending Modules with Hierarchies and Parameterization
    46.4 Applicative Functors

  47. Equational Reasoning for T
    47.1 Observational Equivalence
    47.2 Logical Equivalence
    47.3 Logical and Observational Equivalence Coincide
    47.4 Some Laws of Equality
      47.4.1 General Laws
      47.4.2 Equality Laws
      47.4.3 Induction Law

  48. Equational Reasoning for PCF
    48.1 Observational Equivalence
    48.2 Logical Equivalence
    48.3 Logical and Observational Equivalence Coincide
    48.4 Compactness
    48.5 Co-Natural Numbers

  49. Parametricity
    49.1 Overview
    49.2 Observational Equivalence
    49.3 Logical Equivalence
    49.4 Parametricity Properties
    49.5 Representation Independence, Revisited

  50. Process Equivalence
    50.1 Process Calculus
    50.2 Strong Equivalence
    50.3 Weak Equivalence

### XIX Appendices

  * A Finite Sets and Finite Functions
