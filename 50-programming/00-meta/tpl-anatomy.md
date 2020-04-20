# PL Anatomy

---

* Language
  * Nature of language
    - Communication
    - Syntax
    - Semantics
    - Natural Languages
    - Programming Languages
    - Standardization
    - Nonstandard Compilers
* Describing computation
* Program modeling

---

* Language
  1. The Nature of Language
    1.1 Communication
    1.2 Syntax and Semantics
    1.3 Natural Languages and Programming Languages
      1.3.1 Structure
      1.3.2 Redundancy
      1.3.3 Using Partial Information: Ambiguity and Abstraction
      1.3.4 Implicit Communication
      1.3.5 Flexibility and Nuance
      1.3.6 Ability to Change and Evolve
    1.4 The Standardization Process
      1.4.1 Language Growth and Divergence
    1.5 Nonstandard Compilers
  2. Representation and Abstraction
    2.1 Program
    2.2 Representation
      2.2.1 Semantic Intent
      2.2.2 Explicit versus Implicit Representation
      2.2.3 Coherent versus Diffuse Representation
    2.3 Language Design
      2.3.1 Competing Design Goals
      2.3.2 The Power of Restrictions
      2.3.3 Principles for Evaluating a Design
    2.4 Classifying Languages
      2.4.1 Language Families
      2.4.2 Languages Are More Alike than Different
  3. Elements of Language
    3.1 The Parts of Speech
      3.1.1 Nouns
      3.1.2 Pronouns: Pointers
      3.1.3 Adjectives: Data Types
      3.1.4 Verbs
      3.1.5 Prepositions and Conjunctions
    3.2 The Metalanguage
      3.2.1 Words: Lexical Tokens
      3.2.2 Sentences: Statements
      3.2.3 Larger Program Units: Scope
      3.2.4 Comments
      3.2.5 Naming Parts of a Program
      3.2.6 Meta-words That Let the Programmer Extend the Language
  4. Formal Description of Language
    4.1 Foundations of Programming Languages
    4.2 Syntax
      4.2.1 Extended BNF
      4.2.2 Syntax Diagrams
    4.3 Semantics
      4.3.1 The Meaning of a Program
      4.3.2 Definition of Language Semantics
      4.3.3 The Abstract Machine
      4.3.4 Lambda Calculus: A Minimal Semantic Basis
    4.4 Extending the Semantics of a Language
      4.4.1 Semantic Extension in FORTH
* Describing Computation
  5. Primitive Types
    5.1 Primitive Hardware Types
      5.1.1 Bytes, Words, and Long Words
      5.1.2 Character Codes
      5.1.3 Numbers
    5.2 Types in Programming Languages
      5.2.1 Type Is an Abstraction
      5.2.2 A Type Provides a Physical Description
      5.2.3 What Primitive Types Should a Language Support
      5.2.4 Emulation
    5.3 A Brief History of Type Declarations
      5.3.1 Origins of Type Ideas
      5.3.2 Type Becomes a Definable Abstraction
  6. Modeling Objects
    6.1 Kinds of Objects
    6.2 Placing a Value in a Storage Object
      6.2.1 Static Initialization
      6.2.2 Dynamically Changing the Contents of a Storage Object
      6.2.3 Dereferencing
      6.2.4 Pointer Assignment
      6.2.5 The Semantics of Pointer Assignment
    6.3 The Storage Model: Managing Storage Objects
      6.3.1 The Birth and Death of Storage Objects
      6.3.2 Dangling References
  7. Names and Binding
    7.1 The Problem with Names
      7.1.1 The Role of Names
      7.1.2 Definition Mechanisms: Declarations and Defaults
      7.1.3 Binding
      7.1.4 Names and Objects: Not a One-to-One Correspondence
    7.2 Binding a Name to a Constant
      7.2.1 Implementations of Constants
      7.2.2 How Constant Is a Constant?
    7.3 Survey of Allocation and Binding
    7.4 The Scope of a Name
      7.4.1 Naming Conflicts
      7.4.2 Block Structure
      7.4.3 Recursive Bindings
      7.4.4 Visibility versus Lifetime
    7.5 Implications for the Compiler / Interpreter
  8. Expressions and Evaluation
    8.1 The Programming Environment
    8.2 Sequence Control and Communication
      8.2.1 Nesting
      8.2.2 Sequences of Statements
      8.2.3 Interprocess Sequence Control
    8.3 Expression Syntax
      8.3.1 Functional Expression Syntax 
      8.3.2 Operator Expressions
      8.3.3 Combinations of Parsing Rules
    8.4 Function Evaluation
      8.4.1 Order of Evaluation
      8.4.2 Lazy or Strict Evaluation
      8.4.3 Order of Evaluation of Arguments
  9. Functions and Parameters
    9.1 Function Syntax
      9.1.1 Fixed versus Variable Argument Functions
      9.1.2 Parameter Correspondence
      9.1.3 Indefinite-Length Parameter Lists
    9.2 What Does an Argument Mean?
      9.2.1 Call-by-Value
      9.2.2 Call-by-Name
      9.2.3 Call-by-Reference
      9.2.4 Call-by-Return
      9.2.5 Call-by-Value-and-Return
      9.2.6 Call-by-Pointer
    9.3 Higher-Order Functions
      9.3.1 Functional Arguments
      9.3.2 Currying
      9.3.3 Returning Functions from Functions
  10. Control Structures
    10.1 Basic Control Structures
      10.1.1 Normal Instruction Sequencing
      10.1.2 Assemblers
      10.1.3 Sequence, Subroutine Call, IF, and WHILE Suffice
      10.1.4 Subroutine Call
      10.1.5 Jump and Conditional Jump
      10.1.6 Control Diagrams
    10.2 Conditional Control Structures
      10.2.1 Conditional Expressions versus Conditional Statements
      10.2.2 Conditional Branches: Simple Spaghetti
      10.2.3 Structured Conditionals
      10.2.4 The Case Statement
    10.3 Iteration
      10.3.1 The Infinite Loop
      10.3.2 Conditional Loops
      10.3.3 The General Loop
      10.3.4 Counted Loops
      10.3.5 The Iteration Element
    10.4 Implicit Iteration
      10.4.1 Iteration on Coherent Objects
      10.4.2 Backtracking
  11. Global Control
    11.1 The GOTO Problem
      11.1.1 Faults Inherent in GOTO
      11.1.2 To GOTO or Not to GOTO
      11.1.3 Statement Labels
    11.2 Breaking Out
      11.2.1 Generalizing the BREAK
    11.3 Continuations
    11.4 Exception Processing
      11.4.1 What Is an Exception?
      11.4.2 The Steps in Exception Handling
      11.4.3 Exception Handling in Ada
* Application Modeling
  12. Functional Languages
    12.1 Denotation versus Computation
      12.1.1 Denotation
    12.2 The Functional Approach
      12.2.1 Eliminating Assignment
      12.2.2 Recursion Can Replace WHILE
      12.2.3 Sequences
    12.3 Miranda: A Functional Language
      12.3.1 Data Structures
      12.3.2 Operations and Expressions
      12.3.3 Function Definitions
      12.3.4 List Comprehensions
      12.3.5 Infinite Lists
  13. Logic Programming
    13.1 Predicate Calculus
      13.1.1 Formulas
    13.2 Proof Systems
    13.3 Models
    13.4 Automatic Theorem Proving
      13.4.1 Resolution Theorem Provers
    13.5 Prolog
      13.5.1 The Prolog Environment
      13.5.2 Data Objects and Terms
      13.5.3 Horn Clauses in Prolog
      13.5.4 The Prolog Deduction Process
      13.5.5 Functions and Computation
      13.5.6 Cuts and the not Predicate
      13.5.7 Evaluation of Prolog
  14. The Representation of Types
    14.1 Programmer-Defined Types
      14.1.1 Representing Types within a Translator
      14.1.2 Finite Types
      14.1.3 Constrained Types
      14.1.4 Pointer Types
    14.2 Compound Types
      14.2.1 Arrays
      14.2.2 Strings
      14.2.3 Sets
      14.2.4 Records
      14.2.5 Union Types
    14.3 Operations on Compound Objects
      14.3.1 Creating Program Objects: Value Constructors
      14.3.2 The Interaction of Dereferencing, Constructors, and Selectors
    14.4 Operations on Types
  15. The Semantics of Types
    15.1 Semantic Description
      15.1.1 Domains in Early Languages
      15.1.2 Domains in Typeless Languages
      15.1.3 Domains in the 1970s
      15.1.4 Domains in the 1980s
    15.2 Type Checking
      15.2.1 Strong Typing
      15.2.2 Strong Typing and Data Abstraction
    15.3 Domain Identity: Different Domain/ Same Domain?
      15.3.1 Internal and External Domains
      15.3.2 Internally Merged Domains
      15.3.3 Domain Mapping
    15.4 Programmer-Defined Domains
      15.4.1 Type Description versus Type Name
      15.4.2 Type Constructors
      15.4.3 Types Defined by Mapping
    15.5 Type Casts, Conversions, and Coercions
      15.5.1 Type Casts
      15.5.2 Type Conversions
      15.5.3 Type Coercion
    15.6 Conversions and Casts in Common Languages
      15.6.1 COBOL
      15.6.2 FORTRAN
      15.6.3 Pascal
      15.6.4 PL/1
      15.6.5 C
      15.6.6 Ada Types and Treatment of Coercion
    15.7 Evading the Type Matching Rules
  16. Modules and Object Classes
    16.1 The Purpose of Modules
    16.2 Modularity Through Files and Linking
    16.3 Packages in Ada
    16.4 Object Classes
      16.4.1 Classes in C++
      16.4.2 Represented Domains
      16.4.3 Friends of Classes
  17. Generics
    17.1 Generics
    17.1.1 What Is a Generic?
    17.1.2 Implementations of Generics
    17.1.3 Generics, Virtual Functions, and ADTs
    17.1.4 Generic Functions
    17.2 Limited Generic Behavior
    17.2.1 Union Data Types
    17.2.2 Overloaded Names
    17.2.3 Fixed Set of Generic Definitions, with Coercion
    17.2.4 Extending Predefined Operators
    17.2.5 Flexible Arrays
    17.3 Parameterized Generic Domains
    17.3.1 Domains with Type Parameters
    17.3.2 Preprocessor Generics in C
  18. Dispatching with Inheritance
    18.1 Representing Domain Relationships
    18.1.1 The Mode Graph and the Dispatcher
    18.2 Subdomains and Class Hierarchies
    18.2.1 Subrange Types
    18.2.2 Class Hierarchies
    18.2.3 Virtual Functions in C++
    18.2.4 Function Inheritance
    18.2.5 Programmer-Defined Conversions in C++
    18.3 Polymorphic Domains and Functions
    18.3.1 Polymorphic Functions
    18.3.2 Manual Domain Representation and Dispatching
    18.3.3 Automating Ad Hoc Polymorphism
    18.3.4 Parameterized Domains
    18.4 Can We Do More with Generics?
    18.4.1 Dispatching Using the Mode Graph
    18.4.2 Generics Create Some Hard Problems
* Exhibits Listed by Topic
  * A.1 Languages
    - A.1.1 Ada
    - A.1.2 APL
    - A.1.3 C++
    - A.1.4 C and ANSI C
    - A.1.5 FORTH
    - A.1.6 FORTRAN
    - A.1.7 LISP
    - A.1.8 Miranda
    - A.1.9 Pascal
    - A.1.10 Prolog
    - A.1.11 Scheme and T
    - A.1.12 Other Languages
  * A.2 Concepts
    - A.2.1 Application Modeling, Generics, and Polymorphic Domains
    - A.2.2 Control Structures
    - A.2.3 Data Representation
    - A.2.4 History
    - A.2.5 Lambda Calculus
    - A.2.6 Language Design and Specification
    - A.2.7 Logic
    - A.2.8 Translation, Interpretation, and Function Calls
    - A.2.9 Types
