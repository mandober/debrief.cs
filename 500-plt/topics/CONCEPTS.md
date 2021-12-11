# Concepts of programming languages

https://en.wikipedia.org/wiki/Category:Programming_language_concepts

* Authoring
  - script
  - source file
  - character encoding
  - IDE
  - library
  - executable

* Comments
  - annotation, pragma, directive (in a comment form)
  - comments by purpose:
    - comment as a docblok: specially formatted doc comments
    - comment as a note: warning, todo, scenario
    - comment as fake annotation (for unsupported feat) decorator, sig, pragma
    - comments as type annotation (in a dynamic language)
    - comments as means of temporarily deactivating code
  - line comment
    - single start marker, e.g. `--`
    - end-of-line comment
    - infixed comment, line segment comment
  - block comment
    - start and end markers, e.g. `{- ... -}`
    - multiline comment
  - XHTML comments
  - nested comments
  - comments for hiding code
  - documentation comments
    - module/file bound
    - bound to the following item (function)

* Escapes, Escaping
  - stripping the special meaning of osme chars or char sequences
    - `\n`, `\r\n`
  - line continuation
    - escaping newline (EOL) marker (LF on linux), which usully also ignores one or more spaces in the beggining of the subsequnt line

* Values
  - value
  - variable
  - reference
    - pointer
    - handle
  - classifications
    - by impl (primitive, third party, FFI/extern, user defined)
    - type
    - ownership
    - scope
    - extent
    - lifetime

* Data Types
  - primitive
  - builtin
  - std
  - user/custom
  - 3rd party
  - extern/FFI
  - compound
  - complex
  - special


* Code organizational units
  - expression
  - statement
  - procedure

* Callables
  - subroutine
  - procedure
  - function
  - macro


* type system strictness
  - static (compile-time type-checking)
  - dynamic (run-time type-checking)
* purity management
  - honest functions
  - pure functions
  - side effects management
  - IO (impure, pure:monadic, pure:else)
  - Concurrency strategy (wrt mutation)
  - Error and exception handling
  - FFI management
* evaluation strategy
  - strict
  - non-strict
  - call-by-value
  - call-by-name
  - call-by-sharing
  - call-by-reference
* resource management
  - manual
  - garbage collection
  - mixed


* functions
  - base types
  - tuples
  - program structure: selection and recursion
  - ad-hoc and parametric polymorphism
Evaluation:
reduction strategies; order of evaluation; lazy versus eager and strict versus non-strict.
Lists:
pattern matching; recursion over lists; proof by induction; folds and accumulation.
Higher-order features:
function application and composition; type inference; currying; higher-order functions.
Data structures:
recursion patterns; trees; arrays; sets; dictionaries.



## Bibliography

https://proxy.c2.com/cgi/fullSearch?search=CategoryLanguageFeature
