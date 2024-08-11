# CS :: PLT :: CLUSTERS

Best to divide into
- term level features
- presence of types and type system
- type level features
- fundamental features
- general features

## Fundamental PL features

- variables, var nams, free/bound/binding occurrences
- application, β-reduction, redex, fn and arg (actual param)
- abstraction, lambda abs, formal params, body
- definitions
  - let-binding
- equality
  - equality of terms
  - equality of literals
  - equality of constants
  - equality of variables
  - equality of expressions
  - *equality*: syntactically identical, identical as strings, λx.x = λx.x = λ 0
  - *equivalence*: equality modulo x
    - equality of equivalence classes, 2 = 1 + 1, λx.x = λy.y = λ 0
  - definitional (judgmental) equality
  - propositional equality
  - computational equality
  - α equality
  - βη equality
  - αβη equality
  - equality modulo evaluation (β-reduction)
  - η-equality, η-equivalence
  - equality of contractums
  - type equality
    - structural typing
      - branding
    - nominal typing
    - duck typing

- normal forms

## General PL features

- mutation
  - mutability
    - update in place
    - name aliasing
  - restricted mutability
    - borrowing
    - restricted side effects
  - immutability
    - referential transparency
- code blocks
  - subroutines
  - functions
  - procedures
- declaration
  - declaration
  - forwards declaration
  - prototype (re function, method)
  - initialization
  - definition
  - binding
- classes (à la OOP)
  - objects (à la OOP)
  - inheritence (à la OOP)
- subtyping
  - subtyping (à la OOP)
  - data type subtyping
- variance
  - output/return type is in a covariant position:
    it is ok to return something more specific than what is promised.
         if a <: b then 
          [a] <: [b]
       (r, a) <: (r, b)
      r → [a] <: r → [b]
      [a] → r :> [b] → r


- data types
  - data type alising (a la type in Haskell)
  - newtypes (a la newtype in Haskell)
  - algebraic data types
    - empty (void)
    - singleton (unit)
    - product types
    - sum types
    - exponential types
    - quotient types
  - generalizied algebraic data types
  - universally quantified data types
  - existentially quantified data types
  - abstract data types
  - lazy data types
  - type classes
  - classes, objects, mixins, impl blocks, t


- modules
  - parameterized modules (a la OCaml)

language constructs
structure
literals
expressions
statements
exceptions
type system
compilation units
classes (oop)
mixins (oop)
enums
slots
methods (oop)
fields
inheritance (oop)
facets (oop)
functions
closures
ffi
serialization
concurrency
actors
name conventions
localization
dsl
grammar


- macros (à la Lisp)
- reflection
- proxies (à la JS)
- keywords
- literals
- constants
- expressions vs statements
  - expression
  - statement
  - expression-driven language
  - statement-driven language
- functions
  - pure functions (mathematical functions)
  - closures
  - first-class functions
  - annonymous functions
  - named functions
- type system
  - static
  - dynamic
  - weak
  - strong
  - types
    - term vs types separation
    - term vs types vs kinds separation
  - type classes
  - generics
  - polymorphism
    - ad hoc
    - parametric
    - row
    - rank-N



- runs on
  - JVM platform
  - modern web browsers

- surface syntax style
  - Algol-like syntax
  - Lisp-like syntax
  - Haskell-like syntax, offside rule (indentation matters)

- type system
  - static typing
  - dynamic typing

- concurrent programming
  - actor concurrency

- system library
- closures
- immutability

- functional paradigm (Lisp-like, ML-like)
- purely functional paradigm (Haskell-like)
- logical paradigm (Prolog-like)
- concatinative paradigm (Joy-like, Forth-like)


- type level features
  - type-level computation
    - Java generics, C++ templates, TS generics
    - Haskell
    - Agda, Idris, Coq, Lean …


- exceptions
  - checked exceptions (Java)
  - unchecked exceptions (Java)


contracts and assertions
assertions
contracts
optional parameters
multi-methods
tuples
anonymous functions
parametric types


expressivity
modularity
safety
correctness
invariants


Functional programming languages
- FP concepts
  - binding
  - currying
  - continuation
  - meta programming
  - monad
  - tail recursion
  - types
  - parametric polymorphism
  - ad-hoc polymorphism
- evaluation strategies
  - strict
  - non-strict
  - lazy
  - sequential
  - parallel evaluation
  - lazy evaluation
    - defining infinite data structures
  - concurrent evaluation
    - actor model (in fp)
- macros
  - define new program constructs
- functional programming languages (Haskell, Erlang, Lisp)
  - Lazy evaluation
  - parallellism
  - concurrency
  - meta programming
  - bindings and 
  - polymorphism
  - continuations
  - monads


imperative paradigm
procedural paradigm
OO paradigm
high-level programming language
- typing disciplines
  - untyped, typeless
  - duck typing

- PL implementation
  - standard

Secondary language features

interpreted
compiled
variable name sigils
variable names
ASCII-based
unicode-based
built-in operators
delimited string
comma-separated values
array
- no data types
  - MUMPS has one universal data type, which is implicitly coerced to string, int or float as context requires. no declarations
  - abbreviation of keywords and command names, contracted operator syntax
  whitespace is not allowed within expressions
  whitespace as statement terminator
- significant whitespace
  - lines are significant syntactic entity
  - significant newlines
  - Multiple statements per line
  - case sensitivity
  - case insensitivity
  - mixed case insensitivity
  Reserved words 
coercion
casting
side effects
statements
token
Command
arguments
label
conditions
numeric value
Preconditionals
Postconditionals
assertions
substitution 
Indirection
late binding
pointers
Piece functions
delimiter
assignment 
- fixity
  - precedence
  - associativity
scoping rules
Declared local variables



atomicity


https://en.wikipedia.org/wiki/Programming_language
https://en.wikipedia.org/wiki/List_of_programming_languages
https://en.wikipedia.org/wiki/Comparison_of_programming_languages
https://en.wikipedia.org/wiki/Timeline_of_programming_languages
https://en.wikipedia.org/wiki/History_of_programming_languages

https://en.wikipedia.org/wiki/List_of_programming_languages
https://en.wikipedia.org/wiki/List_of_programming_languages_by_type
https://en.wikipedia.org/wiki/Generational_list_of_programming_languages
https://en.wikipedia.org/wiki/Non-English-based_programming_languages
https://en.wikipedia.org/wiki/Category:Programming_languages
