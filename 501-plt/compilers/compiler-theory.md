# Compiler theory

**Compiler theory** studies compiler design.

Compiler phases:
- syntax analysis
- semantic analysis
- optimization
- code generation

Compilers
- Compile-time
- Compiler types
- Compiler technics

## Compiler phases

- Syntactic Analysis
  - Lexical Analysis
  - Scanning
  - Parsing
- Semantic Analysis (types, scopes, etc.)
- Optimization (inlining, constant folding, etc.)
- Code Generation (translation, transpilation)

Compiler actions traditionally involve: *syntax analysis* (scanning and parsing), *semantic analysis* (determining what a program should do), *optimization* (improving the performance of a program as indicated by some metric; typically execution speed) and *code generation* (generation and output of an equivalent program in some target language; often the instruction set of a CPU).


---

Optimizing compiler
https://en.wikipedia.org/wiki/Optimizing_compiler

https://en.wikipedia.org/wiki/Dead_code

https://en.wikipedia.org/wiki/Constant_folding

https://en.wikipedia.org/wiki/Sparse_conditional_constant_propagation


Compiler Optimizations
http://compileroptimizations.com/
A collection of compiler optimizations with brief descriptions and examples of code transformations. These optimization categories are tested in the Automated Compiler Performance Analysis Suite.

NULLSTONE Automated Compiler Performance Analysis Suite
http://www.nullstone.com/
Uses a QA approach of test coverage and isolation to measure an optimizer. Available for C, C# and Java.The NULLSTONE methodology increases compiler performance by: isolating performance regressions and defects; identifying opportunities for improvements; setting development completion criteria; providing detailed competitive data. 
