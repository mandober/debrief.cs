# Concepts

Concepts as the usual forks in the language design process.

Concepts as the factors of division of PLs:
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
  - call-by-value
  - strict
  - call-by-name
  - lazy
  - call-by-sharing
  - call-by-reference
* resource management
  - manual
  - garbage collection
  - mixed
