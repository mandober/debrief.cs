# Programming > Programming paradigms

- Action-based programming
  - An action programming language is used for specifying state transition systems, and for creating formal models of the effects of actions on the world. Action languages are used in AI and robotics, where they describe how actions affect the states of a system over time, may be used for automated planning.
  - action description languages
  - action query languages
  - fluent
  - state transition systems
  - formal models
  - modeling effect system
  - automated planning
  - https://en.wikipedia.org/wiki/Action_language
- Agent-oriented programming (AOP)
  - https://en.wikipedia.org/wiki/Agent-oriented_programming
  - software construction centered on the concept of software agents.
  - In contrast to OOP which has objects (providing methods with variable parameters) at its core, AOP has externally specified agents (with interfaces and messaging capabilities) at its core. They can be thought of as abstractions of objects. Exchanged messages are interpreted by receiving "agents", in a way specific to its class of agents.
- Array-oriented programming
  - array programming refers to solutions which allow the application of operations to an entire set of values (an array) at once.
  - such solutions are commonly used in scientific and engineering settings.
  - https://en.wikipedia.org/wiki/Array_programming
- Automata-based programming
  - where a program (or its part) is thought of as a model of a FSM or any other formal automaton. Sometimes a potentially infinite set of possible states is introduced, and such a set can have a complicated structure, not just an enumeration.
  - https://en.wikipedia.org/wiki/Automata-based_programming
* Concurrent
  - Concurrent programming
    - form of computing in which several computations are executed concurrently (during overlapping time periods) rather then sequentially, with one completing before the next starts.
    - https://en.wikipedia.org/wiki/Concurrent_computing
  - Choreographic programming
    - style of concurrent programming where programs are compositions of interactions among multiple concurrent participants.
    - https://en.wikipedia.org/wiki/Choreographic_programming
  - Relativistic programming (RP)
    - style of concurrent programming where instead of trying to avoid conflicts between readers and writers (or writers and writers) the algorithm is designed to tolerate them and get a correct result regardless of the order of events. Also, relativistic programming algorithms are designed to work without the presences of a global order of events.
    - https://en.wikipedia.org/wiki/Relativistic_programming
- Data-driven programming
  - program statements describe the data to be matched and the processing required rather than defining a sequence of steps to be taken.
  - data is a sequence of input stream lines (also called line-oriented PL)
  - pattern matching is primarily done via regex or line numbers.
  - sed, AWK
  - https://en.wikipedia.org/wiki/Data-driven_programming
* Declarative
  - Declarative programming
    - contrasted by imperative
    - structuring programs by expressing the computation logic rather then focusing on the control flow.
    - https://en.wikipedia.org/wiki/Declarative_programming
  * Functional
    - Functional programming (FP)
    - Functional logic programming (FLP)
      - combines FP and LP
      - Curry, Mercury
    - Purely functional programming (pFP)
      - Haskell
  * Logic
    - Logic programming (LP)
    - Functional logic
    - Concurrent logic
    - Inductive logic
    - Abductive logic
    - Answer set
  * Constraint
    - Constraint programming
    - Constraint logic programming
    - Concurrent constraint logic
  * Dataflow
    - Dataflow programming
    - Flow-based programming
    - Reactive programming
  - Ontology
  - Query language
* Differentiable programming
  - where a numeric program can be differentiated throughout via automatic differentiation. This allows for gradient based optimization of parameters in the program, often via gradient descent. Differentiable programming has found use in a wide variety of areas, particularly scientific computing and AI.
* Dynamic/scripting
* Event-driven
* Function-level (contrast: Value-level)
  - Point-free style
  - Concatenative
* Generic
* Imperative (contrast: Declarative)
  - Procedural
  - Object-oriented
    - Polymorphic
* Intentional
  - Intentional Programming is a programming paradigm developed by Charles Simonyi that encodes in software source code the precise intention which programmers (or users) have in mind when conceiving their work. By using the appropriate level of abstraction at which the programmer is thinking, creating and maintaining computer programs become easier. By separating the concerns for intentions and how they are being operated upon, the software becomes more modular and allows for more reusable software code.
* Language-oriented
  - Domain-specific
* Literate
* Natural-language programming
* Metaprogramming
  - Automatic
    - Inductive programming
  - Reflective
    - Attribute-oriented
  - Macro
  - Template
* Non-structured (contrast: Structured)
  - Array
* Nondeterministic
* Parallel computing
  - Process-oriented
* Probabilistic
* Quantum
* Set-theoretic
* Structured (contrast: Non-structured)
  - Recursive
  - Block-structured
    - Structured concurrency
  - Object-oriented
    - Actor-based
    - Class-based
    - Concurrent
    - Prototype-based
      - Prototype-based programming is a style of OOP in which behaviour reuse (inheritance) is performed via a process of reusing existing objects via delegation that serve as prototypes. This model can also be known as prototypal, prototype-oriented, classless or instance-based programming.
    - By separation of concerns:
      - Aspect-oriented
      - Role-oriented
      - Subject-oriented
* Symbolic
* Value-level (contrast: Function-level)



Code reuse
- via inheritance
- via function composition and HOFs
- via modules
- vlass-based
- object-based
- prototype-based (up the prototype chain)
- traits-based (behavioral mixins; interfaces)
- component-based
