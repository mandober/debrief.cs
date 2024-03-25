# PLT :: TOPICS

* compile-time transformations
  - defunctionalization

* name binding
  - static (CT) binding
  - dynamic (RT) binding

* type system types
  - bottom type
  - top type
  - unit type
  - product types
  - coproduct (sum) types
  - exponential types
  - quotient types
  - dependent types

* type system / language functions
  - terms to terms
  - types to terms
  - terms to types
  - types to types

* type systems
  - soundness
  - consistency
  - completeness (incomplete since they don't solve the Halting problem)

* type system properties
  - structural typing
  - nominal typing
  - weak typing
  - stronk typing
  - static typing
  - dynamic typing

* type system polymorphism
  - parameteric
  - ad hoc

* function abstraction levels and function capabilities
  - term level functions
    - functions from terms to terms
    - parameterize values
  - type level functions
    - functions from types to types
    - parameterize types
  * function capabilities
    - recursive functions
    - named functions statements
    - function expressions
    - anonymous functions
    - closures
    - first-class functions
      - functions as first-class values
      - functions are treated like other values
    * classification of functions
      - by first-class-ness
      - by arity
      - by order
      - by kind (kindedness)
      - by rank
    * classification by order of term level functions
      - first-order function
        - can take/return plain values
        - cannot take/return functions
      - second-order function
        - can take/return plain values and first-order functions
        - cannot take/return second-order function
      - third-order function
        - can take/return plain values and second-order functions
        - cannot take/return third-order function
      - higher-order function
        - can take/return any value including functions
    * classification of functions by order
    * classification of functions by arity
    * classification of functions by kind (kindedness)
      - kind is about 'level of parameterization'
      - first-kinded type: parameterization of types, `T a`
      - higher-kinded type, parameterization of type ctors, `H m a`
    * classification of functions by rank
      - rank pertains to a type parameter in function types
      - first-rank function: ∀ a b. a -> b -> a
      - second-rank function: ∀ a b. a -> b -> (∀r. r)
