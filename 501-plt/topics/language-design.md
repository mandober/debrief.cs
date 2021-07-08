# Language design

from: 15-819 Foundations of Quantitative Program Analysis. 


- Concrete vs. abstract syntax
- Abstract syntax trees
- Induction over expressions


* Concrete syntax: the actual syntax of a PL specified using context-free grammars (or generalizations); Used in compiler/interpreter front-end, to decide how to interpret strings as programs

* Abstract syntax: the essential constructs of a PL, Specify using so-called Backus Naur Form (BNF) grammars; Used in specifications and implementations to describe the abstract syntax trees of a language.

The three most important reasoning techniques for PLs:
* Mathematical induction over ℕ
* Structural induction over ASTs
* Rule induction over derivations
