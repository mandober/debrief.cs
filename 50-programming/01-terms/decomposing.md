# Decomposing problems

PLs are classified into categories depending on the strategy they use to decompose problems:
- procedural
- declarative
- functional


**Functional paradigm** decomposes a problem into a set of pure functions (Standard ML, OCaml, Haskell).

**Declarative paradigm** shifts focus from instructions to the data. The programmer writes a specification describing the task and the programming language implementation must deal with the details; it must figure out how to perform the computation efficiently. For example, a SQL query describes the data that should be retrieved, leaving the details of how will that be actually achieved to the SQL engine, which alone must decide whether to, e.g., scan a table or use an index.

**Procedural paradigm** is focused on issuing specific instruction steps that tell the computer how to do things. (C, Pascal, bash).

**Object-oriented paradigm** is a type of procedural programming where the problems are modeled using objects, which an object encompasses both properties and behavior. Objects maintain their internal state and provide methods that are used to manipulate the state. (Smalltalk, Java).

Most PLs have mixed paradigms. For example, C++ and Python are languages that support object-oriented programming, but don't force it.
