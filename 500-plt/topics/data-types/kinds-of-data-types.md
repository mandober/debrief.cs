# PLT :: INDEX :: Kinds of data types

Kinds of data types
- base data types
  - primitive data type
  - machine data type
  - language data type
- compound data types
- complex data types
  - exotic data types
  - foreign data types
- base vs compound data types
- function type
- abstract data type (ADT)
  - opaque data type
- algebraic data type (ADT)
  - empty data type, 0
  - singleton data type, 1
  - sum (coproduct) data type
  - product data type
  - exponential data type
    - function type
    - function object
- generalized algebraic data type (GADT)
- quantified data type
  - bounded quantification
  - universally quantified data type
  - existentially quantified data type

# Data types

- *data type properties* are essentail features of data type, what makes it it
- *data type attributes* are circumstantial features of data type, obain by being in a certain position (infix, sufix, prefix, mixfix), in a certain location (variance: positive or negative sum of locations wrt to an arrow), origin (user-defined, from stdlib)
- opposing pairs: scalar/compound, abstract/concrete, co/data, co/recursive
- by finiteness: *data vs codata*



* Primitive data types
  - primitive data types
  - machine primitives
  - language primitives
  - library data types
  - standatd library data types
  - user-defined data types
* FFI
  - foreign data type
  - external data type
  - marshalled data type
  - FFI data type
* Compounded
  - scalar data types
  - compound data types
  - base data types
  - function data types
  - nullable type
  - complex data types (?)
  - exotic data types (?)
* Set
  - union type
  - intersection type
* Logic
  - Boolean data type
  - top (universal) data type
  - bottom data type
  - linear data type
  - affine data type
  - relevant (relevance) data type
* Other
  - polymorphic (generic) data type
  - recursively polymorphic data type
  - concrete data type
  - abstract data type
  - opaque data type
  - algebraic data type
  - refined data types
  - constrained data types
  - equality types (ML)
  - boxed type
  - unboxed type
  - lifted type
  - strict type
  - lazy type
  - coerced type
  - newtype
  - type alias
  - record type
* Quantified
  - quantified data types
  - universally-quantified, forall, data types
  - existential data types
  - rank-n data types
* Algebraic Data Types
  - empty type, 0
  - unit type, 1
  - Boolean type
  - coproduct or sum type
  - product type
  - exponential type, function (object)
  - quotient types
* Dependent type
  - dependent pair, Π type
  - dependent function, Σ type
  - universe type
  - sort
  - sized types
* Data Types
  - finite types
  - inductive types
  - inductive recursive types
  - inductive inductive types
  - recursive types
  - constructed by data constructors (functions)
  - destructured by patterns
* Codata Types
  - infinite types (e.g. streams)
  - coinductive types
  - corecursive types
  - constructured by copatterns
  - destructured by data constructors (?)
  - co-(anything above)
