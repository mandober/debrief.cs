# Types and programming languages
Benjamin C. Pierce, 2000, MIT Press


## Contents

1. Introduction
  1.1 Types in Computer Science
  1.2 What Type Systems Are Good For
  1.3 Type Systems and Language Design
  1.4 Capsule History
  1.5 Related Reading

2. Mathematical Preliminaries
  2.1 Sets, Relations, and Functions
  2.2 Ordered Sets
  2.3 Sequences
  2.4 Induction
  2.5 Background Reading

*I Untyped Systems*

3. Untyped Arithmetic Expressions
  3.1 Introduction
  3.2 Syntax
  3.3 Induction on Terms
  3.4 Semantic Styles
  3.5 Evaluation
  3.6 Notes

4. An ML Implementation of Arithmetic Expressions
  4.1 Syntax
  4.2 Evaluation
  4.3 The Rest of the Story

5. The Untyped Lambda-Calculus
  5.1 Basics
  5.2 Programming in the Lambda-Calculus
  5.3 Formalities
  5.4 Notes

6. Nameless Representation of Terms
  6.1 Terms and Contexts
  6.2 Shifting and Substitution
  6.3 Evaluation

7. An ML Implementation of the Lambda-Calculus
  7.1 Terms and Contexts
  7.2 Shifting and Substitution
  7.3 Evaluation
  7.4 Notes

*II Simple Types*

8. Typed Arithmetic Expressions
  8.1 Types
  8.2 The Typing Relation
  8.3 Safety = Progress + Preservation

9. Simply Typed Lambda-Calculus
  9.1 Function Types
  9.2 The Typing Relation
  9.3 Properties of Typing
  9.4 The Curry-Howard Correspondence
  9.5 Erasure and Typability
  9.6 Curry-Style vs. Church-Style
  9.7 Notes

10. An ML Implementation of Simple Types
  10.1 Contexts
  10.2 Terms and Types
  10.3 Typechecking

11. Simple Extensions
  11.1 Base Types
  11.2 The Unit Type
  11.3 Derived Forms: Sequencing and Wildcards
  11.4 Ascription
  11.5 Let bindings
  11.6 Pairs
  11.7 Tuples
  11.8 Records
  11.9 Sums
  11.10 Variants
  11.11 General Recursion
  11.12 Lists

12. Normalization
  12.1 Normalization for Simple Types
  12.2 Notes

13. References
  13.1 Introduction
  13.2 Typing
  13.3 Evaluation
  13.4 Store Typings
  13.5 Safety
  13.6 Notes

14. Exceptions 
  14.1 Raising Exceptions 
  14.2 Handling Exceptions 
  14.3 Exceptions Carrying Values 

__III Subtyping__

15 Subtyping 
  15.1 Subsumption 
  15.2 The Subtype Relation 
  15.3 Properties of Subtyping and Typing 
  15.4 The Top and Bottom Types 
  15.5 Subtyping and Other Features 
  15.6 Coercion Semantics for Subtyping 
  15.7 Intersection and Union Types 
  15.8 Notes 207viii Contents

16 Metatheory of Subtyping 
  16.1 Algorithmic Subtyping 
  16.2 Algorithmic Typing 
  16.3 Joins and Meets 
  16.4 Algorithmic Typing and the Bottom Type 

17 An ML Implementation of Subtyping 
  17.1 Syntax 
  17.2 Subtyping 
  17.3 Typing 

18 Case Study: Imperative Objects 
  18.1 What Is Object-Oriented Programming? 
  18.2 Objects 
  18.3 Object Generators 
  18.4 Subtyping 
  18.5 Grouping Instance Variables 
  18.6 Simple Classes 
  18.7 Adding Instance Variables 
  18.8 Calling Superclass Methods 
  18.9 Classes with Self 
  18.10 Open Recursion through Self 
  18.11 Open Recursion and Evaluation Order 
  18.12 A More Efficient Implementation 
  18.13 Recap 
  18.14 Notes 

19 Case Study: Featherweight Java 
  19.1 Introduction 
  19.2 Overview 
  19.3 Nominal and Structural Type Systems 
  19.4 Definitions 
  19.5 Properties 
  19.6 Encodings vs. Primitive Objects 
  19.7 Notes 263Contents ix

__IV Recursive Types__

20 Recursive Types 
  20.1 Examples 
  20.2 Formalities 
  20.3 Subtyping 
  20.4 Notes 

21 Metatheory of Recursive Types 
  21.1 Induction and Coinduction 
  21.2 Finite and Infinite Types 
  21.3 Subtyping 
  21.4 A Digression on Transitivity 
  21.5 Membership Checking 
  21.6 More Efficient Algorithms 
  21.7 Regular Trees 
  21.8 µ-Types 
  21.9 Counting Subexpressions 
  21.10 Digression: An Exponential Algorithm 
  21.11 Subtyping Iso-Recursive Types 
  21.12 Notes 

__V Polymorphism__

22 Type Reconstruction 
  22.1 Type Variables and Substitutions 
  22.2 Two Views of Type Variables 
  22.3 Constraint-Based Typing 
  22.4 Unification 
  22.5 Principal Types 
  22.6 Implicit Type Annotations 
  22.7 Let-Polymorphism 
  22.8 Notes 

23 Universal Types 
  23.1 Motivation 
  23.2 Varieties of Polymorphism 
  23.3 System F 
  23.4 Examples 
  23.5 Basic Properties 
  23.6 Erasure, Typability, and Type Reconstruction 354x Contents
  23.7 Erasure and Evaluation Order 
  23.8 Fragments of System F 
  23.9 Parametricity 
  23.10 Impredicativity 
  23.11 Notes 

24 Existential Types 
  24.1 Motivation 
  24.2 Data Abstraction with Existentials 
  24.3 Encoding Existentials 
  24.4 Notes 

25 An ML Implementation of System F 
  25.1 Nameless Representation of Types 
  25.2 Type Shifting and Substitution 
  25.3 Terms 
  25.4 Evaluation 
  25.5 Typing 

26 Bounded Quantification 
  26.1 Motivation 
  26.2 Definitions 
  26.3 Examples 
  26.4 Safety 
  26.5 Bounded Existential Types 
  26.6 Notes 

27 Case Study: Imperative Objects, Redux 

28 Metatheory of Bounded Quantification 
  28.1 Exposure 
  28.2 Minimal Typing 
  28.3 Subtyping in Kernel F<: 
  28.4 Subtyping in Full F<: 
  28.5 Undecidability of Full F<: 
  28.6 Joins and Meets 
  28.7 Bounded Existentials 
  28.8 Bounded Quantification and the Bottom Type 436Contents xi

__VI Higher-Order Systems__

29 Type Operators and Kinding 
  29.1 Intuitions 
  29.2 Definitions 

30 Higher-Order Polymorphism 
  30.1 Definitions 
  30.2 Example 
  30.3 Properties 
  30.4 Fragments of Fω 
  30.5 Going Further: Dependent Types 

31 Higher-Order Subtyping 
  31.1 Intuitions 
  31.2 Definitions 
  31.3 Properties 
  31.4 Notes 

32 Case Study: Purely Functional Objects 
  32.1 Simple Objects 
  32.2 Subtyping 
  32.3 Bounded Quantification 
  32.4 Interface Types 
  32.5 Sending Messages to Objects 
  32.6 Simple Classes 
  32.7 Polymorphic Update 
  32.8 Adding Instance Variables 
  32.9 Classes with “Self” 
  32.10 Notes 

Appendices
  A Solutions to Selected Exercises 
  B Notational Conventions 
  B.1 Metavariable Names 
  B.2 Rule Naming Conventions 
  B.3 Naming and Subscripting Conventions 
  References 
  Index
