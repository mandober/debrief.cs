# Software design patterns


https://en.wikipedia.org/wiki/Anti-pattern#Software_engineering
https://en.wikipedia.org/wiki/Functional_programming

* Software design patterns

  * FP software design patterns
    - Raw IO
    - mtl
      - Final tagless
    - effect systems
      - algebraic effects
    - Service Handle pattern
    - Free Monads
      - Church Encoded Free Monads
      - Hierarchical Free Monads (HFM)
      - Freer Monads

  * FP patterns
    - persistent data structures
    - memoization
    * Styles
      - point-free style
      - continuation-passing style
      - declaration style: pattern matching, `where`
      - expression style: `let` and `case`
      - top-to-bottom
      - bottom-up

    * categorical
      * functor
        - mappable context (container)
        - functorial computation
      * applicative functor
        - sequencing of functorial computations
      * monad
        - Maybe
          - nullable types
          - fallable computation
        - List
          - nondeterministic computation
        - Either
          - fallable computation with (custom) errors
        - Reader
          - fixed environment
          - readonly context
        - Writter
          - logging
          - output aggregator
        - LogicT
          - models unification search with backtracking
        - ContT
          - continuations
          - translates classical logic into IL
      * monad transformers
        - compose monad
        - stack different monads into one
      * comonad
        - model infinite grids (GoL)
    - `ReaderT` pattern

  * OOP patterns
    * Gang of Four (GoF) patterns
    * Creational
      - Abstract factory
      - Builder
      - Factory method
      - Prototype
      - Singleton
    * Structural
      - Adapter
      - Bridge
      - Composite
      - Decorator
      - Facade
      - Flyweight
      - Proxy
    * Behavioral
      - Chain of responsibility
      - Command
      - Interpreter
      - Iterator
      - Mediator
      - Memento
      - Observer
      - State
      - Strategy
      - Template method
      - Visitor

  * Concurrency patterns
    - Active object
    - Balking
    - Binding properties
    - Double-checked locking
    - Event-based asynchronous
    - Guarded suspension
    - Join
    - Lock
    - Monitor
    - Proactor
    - Reactor
    - Read write lock
    - Scheduler
    - Thread pool
    - Thread-local storage

  * Architectural patterns
    - Front controller
    - Interceptor
    - MVC Model-view-controller
      - MVVC
    - ADR Action-domain-responder
    - ECS Entity-component-system
    - Multitier architecture, n-tier
    - Specification
    - Publish-subscribe
    - Naked objects
    - Service locator
    - Active record
    - Identity map
    - Data access object
    - Data transfer object
    - Inversion of control
    - JSP Model 2

  * Other patterns
    - Blackboard
    - Business delegate
    - Composite entity
    - Dependency injection
    - Intercepting filter
    - Lazy loading
    - Mock object
    - Null object
    - Object pool
    - Servant
    - TwinType tunnel
    - Method chaining
    - Delegation


https://101wiki.softlang.org/Language:Haskell
https://101wiki.softlang.org/Contribution:haskellScott
https://www.codewars.com/kata/59c132fb70a3b7efd3000024
https://cs.stackexchange.com/questions/42179/
https://okmij.org/ftp/tagless-final/course/Boehm-Berarducci.html
https://kseo.github.io/posts/2016-12-13-scott-encoding.html
https://en.wikipedia.org/wiki/Church_encoding
https://www.slideshare.net/rlaemmel/functional-data-structures

https://www.google.com/search?q=Scott+encoding&oq=Scott+encoding&aqs=chrome..69i57j69i60j69i65.430j0j7&sourceid=chrome&ie=UTF-8

https://en.wikipedia.org/wiki/Applicative_functor
https://en.wikipedia.org/wiki/Generic_programming
https://en.wikipedia.org/wiki/Monad_(functional_programming)
https://en.wikipedia.org/wiki/Functor_(functional_programming)
https://en.wikipedia.org/wiki/Software_design_pattern
https://en.wikipedia.org/wiki/Extreme_programming
https://en.wikipedia.org/wiki/Portland_Pattern_Repository

https://en.wikipedia.org/wiki/Category:Functional_programming
https://en.wikipedia.org/wiki/Category:Programming_idioms

https://en.wikipedia.org/wiki/Design_Patterns
https://en.wikipedia.org/wiki/Observer_pattern
https://en.wikipedia.org/wiki/Binding_properties_pattern
https://en.wikipedia.org/wiki/Balking_pattern
https://en.wikipedia.org/wiki/Model-view-controller
https://en.wikipedia.org/wiki/Nixon_diamond
