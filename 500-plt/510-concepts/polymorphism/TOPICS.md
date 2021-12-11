# Topics in Programming Languages: Polymorphism

Polymorphism

* __Sorts of polymorphism__
  * 3 major classes of polymorphism
    - Parametric polymorphism
    - Ad hoc polymorphism
    - Subtype (inclusion) polymorphism
  * Phase-time polymorphism
    - Compile time polymorphism (static binding)
    - Runtime polymorphism (dynamic binding)
  * Other classes or names (of polymorphism)
    - row polymorphism
    - higher kinds of polymorphism
    - Rank-2 polymorphism
    - Rank-N polymorphism
    - rank polymorphism (higher and lower rank of values)
    - Hindley-Milner polymorphism
    - unification-based polymorphism
    - Hindley-Milner (unification-based) polymorphism
    - constrained polymorphism


* __Properties__
  -       static vs dynamic           polymorphism
  -      bounded vs unbounded         polymorphism
  -    universal vs nonuniversal      polymorphism
  -    universal vs nonuniversal      polymorphism
  -  first-class vs non-first-class   polymorphism
  -  predicative vs impredicative     polymorphism
  - compile-time vs runtime           polymorphism
  -  constrained vs constrained       polymorphism
  -       rank-2 vs rank-n            polymorphism
  -  higher-rank vs arbitrary rank    polymorphism
  - polymorphism vs polytypism



* __Parametric polymorphism__
  - universal polymorphism
  - parametricity
  - relational parametricity
  - type-scheme
  - let-polymorphism
    - let-generalization (vs lambda generalization)
  - quantification
    - universal quantification
    - existential quantification
    - bounded quantification
    - bounded polymorphism
    - unbounded polymorphism
  - theorems for free
  - generics
    - genericity
    - generic programming
    - generic function

* __Ad hoc polymorphism__
  - overloading polymorphism
    - name overloading
    - function overloading
    - operator overloading
  - type classes


* __Subtype polymorphism__
  - inclusion polymorphism
  - inheritance polymorphism
  - coercion polymorphism
  * Type-dispatching mechanisms
    - static dispatch
    - dynamic type dispatch
      - single type dispatch
      - double type dispatch
      - multiple type dispatch
    - virtual functions
    - predicate type dispatch
  * Variance
    - covariance
    - contravariance
    - invariance
    - polyvariance vs monovariance

* __Higher sorts of polymorphism__
  - kind polymorphism
    - kind-polymorphic type
    - higher-kinded type
    - higher-kinded polymorphism
  - arbitrary-rank polymorphism
    - higher-ranked polymorphism
    - rank-2 polymorphism
    - rank-n polymorphism
  - predicative polymorphism
    - impredicative polymorphism
  - bidirectional polymorphism
    - greedy bidirectional polymorphism
  - rank polymorphism
    - ops auto lifted to work over higher-ranked values
    - ranks of values:
      - 0-rank scalar values
      - 1-rank arrays
      - 2-rank matrices
      - 3-rank cuboids

* __Related concepts__
  - *Curry-Howard isomorphism*
    between types and theorems, terms and proofs
  - *Girard-Reynolds isomorphism*
    between types and terms in the presence of parametricity

* __Polymorphic lambda-calculi__
  - System F
  - System F-sub

* __Additional topics__
  - first-class polymorphism
  - polymorphic recursion
  - monomorphism vs polymorphism vs polytypism vs monotypism
    - monomorphic type (vs polymorphic type)
    - monotypes
    - monotypism (vs polytypes)
  - parameterized, parametric type vs polymorphic type
  - type specialization, type substitution
  - type instantiation
