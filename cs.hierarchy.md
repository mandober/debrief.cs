# Computer Science :: HIERARCHY

## CS General

- CS in general, general topics
- History of CS
- Beginning of CS in math
- Philosophy of CS (?)
- classification of sciences, and the issue of CS placement
- is CS a part of mathematics still or a standalone science like physics?

- fields of CS
  + CS areas, disciplines, fields
  + classification factors
  - Theoretical CS
  - Information Theory (IT)
  - Theory of Computation (ToC) - shared with math

- Hardware and software
  - hardware is king ↓
  - mind and body
  - making hardware, creating software
  - fluctation of cost of hw vs sw
  - 1970's - the decade when cost of sw overtook hw
  - the fall of IBM
  - hw: engineering side, manufacturing
  - sw: practical, theoretical side
  - importance and irreplacability of data
  - software is king ↑

- Fundamentals of CS
  - fundamental principles
  - 3 fundamental principles: abstraction, abstraction and abstraction



## CS Foundations
  - Computer Science (CS)
  - History of Computer Science
  - Foundations of Computer Science
  - Theoretical Computer Science (TCS)
  - Mathematics of computing
  - Mathematics in Computer Science

## Hardware
  - computer
  * Computer aspects
    * Logical aspect
      - sequential logic
      - circuits: AND, OR, NOT, NAND, NOR
    * Physical aspects
      - transistors
      - clocks
      - synchronization
      - pulses
  - history of computers
  * Main computer components
    - CPU
    - Buses
    - Memory
    - IO
    - Other components
      - Motherboard
      - GPU
      - PSU
      - Peripherals
        - Keyboard
        - Mouse
  * Hardware/Software components
    - BIOS
    - Loader
    - Firmware
    - Driver
    - Booting process
      - POST
      - partition
      - MBR
      - GPT
  * Computer architecture
  * Computer systems by (hardware) aspect

### CPU
  * CPU microarchitecture
    - branching
    - hyperthreading
    - pipelining
    - SIMD, MIMD
    - advanced instructions: AVX, 
  * CPU components
    * CPU units
      - Control unit (CU)
      - Memory management unit (MMU)
      - Translation lookaside buffer (TLB)
      - Set-associativity
      - Arithmetic-logic unit (ALU)
      - Floating-point unit (FPU)
      - Address generation unit (AGU)
    * CPU Registers
      - Internal registers
        - Memory address register (MAR)
        - Memory data register (MDR)
      - Program-accessible registers
        - Program counter (PC)
        - Stack base pointer
        - Stack frame pointer
        - Index register
      - General purpose registers
    * CPU Cache
      - Cache levels
        - L1D, level 1 cache for data
        - L1I, level 1 cache for instructions
        - L2U, universal level 2 cache
        - L3U, universal level 3 cache
      - Cache associativity
        - 4-way associative cache
        - 16-way associative cache
      - Cache concerns
        - Cache coherence
        - Cache association
        - Cache hit/miss
        - Cache invalidation
        - Cache block size
        - Cache expulsion algorithms

### Memory
  - Memory technology
    - RAM, ROM, DRAM, SRAM
    - Content-Addressable Memory (CAM)
    - Universal memory
  - Memory latency
  - Memory hierarchy
    - Primary memory: Main memory, RAM
    - Secondary memory: SDD, HDD
    - Tertiary storage: BD, DVD, Tape
  * Memory Management (levels)
    - Memory Management: hardware level
    - Memory Management: OS level
    - Memory Management: program level
  * Memory Management: hardware level
    - Memory hierachy
    - Memory Types
    - Cache
    - Memory address register
    - Registers
    - Word

### Buses
  - Address bus
  - Instruction bus
  - Data bus

### Computer architecture
  * CA types
    * Serial CA
    * Parallel CA
    * Distributed CA
  * CA features
    - CPU cores: single, multi core
  * CA Implementation - System Design
    * Program-controlled system
    * Stored-program systems
      * Von Neumann architecture
      * Harvard architecture
      * Modified Harvard architecture
  * Instruction Set Architecture
    * ISA aspects
      - Bitness: 8-,16-,32-,64-bit
      - Endianness: LE, BE
      - Addressing modes: immediate, relative, absolute, indexed
    * ISA by instruction complexity
      - Complex Instruction Set Computing (CISC):
        - X86, X86 CPU modes
      - Reduced Instruction Set Computing (RISC): ARM
        - MIPS (Microprocessor without Interlocked Pipelined Stages)
      - Minimal instruction set computer (MISC)
      - Transport Triggered Architecture (TTA)
      - Very long instruction word (VLIW)
      - Super Harvard Architecture Single-Chip Computer (SHARC)
    * ISA concerns
      - Instruction Level Parallelism (ILP)
      - Addressability
      - Bitness
      - Endianness

### Computer systems by (hardware) aspect
  * aspect: purpose
    - Information systems
    - Experts systems
    - Decision systems
  * aspect: attributes of computer system
    - availability
    - reliability
    - fault-tolerance
    - maintainability
    - redundancy
  * aspect: organization of computer systems
    - Embedded systems
    - Firmware
    - Real-time systems
      - Real-time operating systems, OS
      - Real-time programming languages, PL
      - Real-time system specification, Specs
      - Real-time system architecture, Arch
    - operating system
    - networked system
    * methodology of computing
      - serial vs parallel computing
      - sequential vs concurrent computing
      - distributed vs centralized computing
    * Computing models
      - quantum vs classical computing
      - neural networks
      - edge computing

## Data
  - Data units: bit, byte, word
  - Data attributes: capacity, speed
  - Data mining
  - Data storage
  - Data processing
  * Data representation
    * Units
      - bit, byte/octet, word
      - binary number, binary digit
      - MSB, LSB
    * Bit-wise operations
      * logical operations
        - NOT, AND, OR, XOR
        - NAND, NOR, XNOR
      * complement
      * bit-shifting
        - right shift
        - left shift
        - sign-preserving shifts
      * bit-rotation
        - right rotation
        - left rotation
      * bit masks
    * Endianness
      - LE
      - BE
    * Positional number systems
      - radix/base
      - binary
      - octal
      - hexadecimal
      - base32, base64
    * Number representation
      * Integers
        * Integer encoding
          - Sign and magnitude
          - One's complement
          - Two's complement
        * Integer signed-ness
          - Unsigned integers
          - Signed integers
        * Integer types by size
            - i8, u8
            - i16, u16
            - i3,2 u32
            - i64, u64
            - i128, u128
        * ISA-dependent integers
      * Real numbers
        * Real number encoding
          * Fixed-point numbers
            - Fixed-point number encoding
              - Scale factor
              - Currency representation
            - Fixed-point number types
              - `Decimal`
          * Floating-point numbers
            - IEEE-754 standard
            - Partial equality
            * Floating-point number encoding
              - Sign
              - Significant/coefficient
              - Exponent
              * Base/radix
                * Base 2
                  - `Half`, binary16
                  - `Single`, binary32, single-precision
                  - `Double`, binary64, double-precision
                  - `Quadruple`, binary128
                  - `Octuple`, binary256
                * Base 10
                  - decimal32
                  - decimal64
                  - decimal128
              * Properties
                - Two infinities: positive and negative
                - Two `NaN` (not a number) markers
                - Two zeros: positive `+0` and negative `-0`
                  - Quiet NaN, `qNaN`
                  - Signaling NaN, `sNaN`
                - Defined division by zero (yields infinity)
              - Precision
              - Mantissa
              - Rounding errors
              - Subnormal numbers
    * Arithmetic operations
      - Modes
        - overflow
        - saturation
    * Text representation
      - Character
      * Strings
        - null-terminating
        - as objects
        - static strings
        - reference strings
      * Characters encoding
        - ASCII
        * Unicode
          - UTF-8
          - UTF-16
          - UTF-32
  * Complexity Theory
    - Complexity Theory
    - Asymptotic analysis
    - Algorithmic time complexity
    - Algorithmic space complexity
    - Algorithmic spacetime complexity
  * Data structures and algorithms
    - ADT
    - DS
    - Linear DS
    - Graph
      - Tree
    - Complexity
  * Algorithms
    - Searching
    - Sorting
  * Database theory
    - normalization forms
    - concurrency
  * Data structures
    - classification
      - Abstract Data Type
      - implementations
    - ds properties
      - concurrent
      - mutable
      - persistent
      - linear
    - ds types
      - Array
      - List
        - Linked list
        - Singly-linked list
        - Doubly-linked list
      - Hash table
      - Graph
      - Tree
  * Algorithms
    - Dynamic programming
    - Memoization
    - Sorting algorithms
    - Searching algorithms
    - Computer Graphics Algorithms
    - Numerical Methods
    - Optimization
    - Algorithmic complexity
    - Sorting
      - Insertion sort
      - Merge sort
      - Quicksort
    - Searching
      - BST

## Theory of Computation (in math)
  - Formal Language
  - Complexity Theory
  - Automata Theory
  * ToC and Logic in CS
    - Logic and verification
    - Proof theory [math]
    - Modal and temporal logics
    - Automated reasoning
    - Constraint and logic programming
    - Constructive math [math]
    - Description logics
    - Equational logic and rewriting
    - Finite Model Theory
    - Higher order logic
    - Linear logic
    - Programming logic
    - Abstraction
    - Verification by model checking
    - Type theory
    - Hoare logic
    - Separation logic
  * Theory and algorithms for application domains
    * Program semantics
      - Algebraic semantics
      - Denotational semantics
      - Operational semantics
      - Axiomatic semantics
      - Action semantics
      - Categorical semantics
    * Program reasoning
      - Invariants
      - Program specifications
      - Pre- and post-conditions
      - Program verification
      - Program analysis
      - Assertions
      - Parsing
      - Abstraction
  * Lambda Calculi
    - Lambda Calculus
    - Simply Typed Lambda Calculus
    - System F
    - Lambda Pi
    - Lambda Omega
    - Lambda Omega Pi
  * Formal language
    - symbolic language
    - Syntax
    - Semantics
    - Grammar
    - BNF
  * Automata Theory
    - DFA
    - NFA
  * Computability theory
    - Halting Problem
    - Recursion
    - Recursive set
    - Recursively enumerable set
    - Decision problem
    - Church-Turing thesis
    - Computable function
    - Primitive recursive function
  * Compiler theory
    - Parsing
    - Tokenization
    - Optimization
    - Code generation
  * Parsing
    * Top-down parsing
      - LL
      - Recursive descent
      - Tail recursive
      - Pratt parser
    * Bottom-up parsing
      - Precedence Simple Operator
      - Shunting-yard
      - Bounded-context
      - LR Simple 
      - Look-ahead 
      - Canonical
      - Generalized
      - CYK
      - Recursive ascent 
      - Shift-reduce
    * Parsing concerns
      - PEG
      - Definite clause grammar
      - Parser generator
      - LALR
      - Metacompiler
      - Parse tree
      - AST
      - Scannerless parsing
  * Syntax
    - Abstract Syntax
    - Post Systems
  * Grammar
    - Grammars and context
    - Context-free grammar
      - Backus-Naur Form (BNF)
      - Extended Backus-Naur Form (EBNF)
    - Context-sensitive grammar
  * Semantics
    - Operational
    - Denotational
    - Axiomatic

## Software
  - software domain
    - system software
      - bios, firmware, drivers
      - operating system
      - privileged accessed
    - applicative software
    - userland
  - software development
  - programs
  - programming
  - programming languages
  * Software and its engineering
  * Operating System
    - types
    - functions
    - memory management
    - resource management
  * Operating System: Memory Management
    - Memory model
    - Memory protection
    - Virtual memory
    - Segmentation fault
    - Address space
    - Memory address
    - Physical address
  * Program
    * program execution
    - program correctness
    - program verification
    * Code
      - Loader
      - Linker
      - Compiler
      - Machine code
      - Intermediate Representation
      - Object code
    - Program memory segments
      - .bss
      - .data
    - Program memory
    - Memory management
      - Stack
      - Heap
    - Calling convention
    - Memory address
    - Memory alignment
  * Memory Management: program level
    - Manual memory management
    - Garbage collection
    - Memory allocation
    - Stack based allocation
    - Dynamic memory allocation
    - Memory safety
    - Memory leak
    - Program memory
  * Program execution
    - Code
    - Translation
      - Compiler
      - Compile-time
      - Optimizing compiler
    - Intermediate representation (IR)
    - Execution
    - Runtime system
      - Runtime
      - Executable
      - Interpreter
      - Virtual machine
    - Types of code
      - Source code
      - Object code
      - Bytecode
      - Machine code
      - Microcode
    - Compilation strategies
      - Just-in-time (JIT)
      - Tracing just-in-time
      - Ahead-of-time (AOT)
      - Transcompilation
      - Recompilation
    - Compilers and toolchains
      - GNU Compiler Collection (GCC)
      - LLVM
  * Programming
    - programming languages
    * programming language theory
    * programming paradigms
    - design patterns
    - statistics
    - artificial intelligence
    - machine Learning
    * algorithms
  * Programming Paradigms
    - structured, imperative, oo, 
    - declarative, functional
    - logical
  * Programming concepts
    - Declaration
    - Definition
    - Assignment
    - Binding
    - Referential transparency
    - mutation
    - aliasing
  * Programming concepts: higher 
    - Inheritance
    - Polymorphism
    - Generics
    - Reflection
    - Interface

## PL theory
  - Implementation
    - Specification
    - Compiler
    - Interpreter
  * PL constructs
    - Aliasing
    - Assignment
    - Binding
    - Declaration
    - Identifier
    - Lifetime
    - Mutability
    - Operator
    - Pointers
    - Privacy
    - Reference
    - Scope
    - Symbol table
    - Value
    - Variable
    - Variable Declaration
    - Visibility
    - Local variable
    - Non-local variable
    - Global variable
    - Declaration
    - Forward declaration
    - volatile
    - static
    - constant
    - Expression
    - Statement
    - flow control
    - conditionals
    - operators
    - functions
    - code org:
      - modules
      - classes
      - subroutines
      - functions
  * PL classification
    - by abstraction level
      - low
        - Machine language
        - microarchitecture: microinstructions
      - intermediate
        - object language
        - p-code
      - high
        - Assembly language
        - Hardware description language (HDL)
        - higher-level PLs
    - by generation
      - first
      - second
      - third
      - fourth
    - by paradigm
    - by application
      - general
      - systems
      - scripting
      - DSL
      - markup

## Type System (in math)
  - Data
  - Data Types
  - Type Systems
  - Type safety
  - Data Type
  - Algebraic Data Types
  - Dynamic Types
  - Aggregate types
  - type checking
  - type inference
  - type annotation
  - type ascripion

## Graphics

## Operating systems

## Networking

## Security

## Artificial Intelligence
  * Artificial Intelligence
  * Machine Learning
