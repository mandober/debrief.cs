# CS Hierarchy

Hierarchy: Domains » Areas » Sections » Topics

Domains:
* Math
* Logic
* CS

**Math**
  * Math foundations
  * Discrete math
    * Number theory
      - Naturals
      - Integers
      - Rationals
      - Reals
      - Complex numbers
    * Counting theory
      - Fundamental counting rules
      - Combinatorics
      - Permutations
    * Sets
      * Set theory
        - Sets
        - Set operations
        - Fundamental sets
        * Set theories
          - Naïve set theory
          * Axiomatic set theory
            - ZF/ZFC
            - ZFC axioms
      * Relations
        - Cartesian product
        - Ordered pair
      * Order theory
        - poset
      * Functions
        - bijection
    * Graphs
      - tree

**Logic**
  * Math logic
    * Syllogistic logic
    * Term logic
    * Propositional logic
    * Predicate logic
    * Predicate logic
    * Proof theory
  * Theory of computation
    - Computability
    - Halting problem
    * Complexity theory
      - Space complexity
      - Time complexity
      * Asymptotic analysis
        - Θ notation
        - Ω notation
        - O notation
        * Complexity scales
          - constant scale
          - logarithmic scale
          - linear scale
          - quadratic scale
          - exponential scale
    * Automata Theory
      - Finite Automata
      - Context-Free Grammars
      - Turing Machines
  * Type theory
    * Lambda calculi
      * Lambda cube
      * Lambda calculus
      * Simply-typed lambda calculus
  * Category theory

**CS**
* History and foundations of computing

  * **Computer Hardware**
    * *CPU*
      * Bitness
        - 32-bit
        - 64-bit
      - Microarchitecture
      - CPU Modes
      - Pipelining
      - MIPS Architecture
      * CPU elements
        * Units
          - Control unit (CU)
          - Memory management unit (MMU)
            - Translation lookaside buffer (TLB)
              - Set-associativity
          - Arithmetic-logic unit (ALU)
          - Floating-point unit (FPU)
          - Address generation unit (AGU)
        * Registers
          - Internal registers
            - Memory address register (MAR)
            - Memory data register (MDR)
          - Program-accessible registers
            - Program counter (PC)
            - Stack base pointer
            - Stack frame pointer
            - Index
          - General purpose registers
        * Cache
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
      * CPU types
        * by cores
          - single core
          - multi core
        * CPU by instruction complexity
          - Complex Instruction Set Computing (CISC)
          - Reduced Instruction Set Computing (RISC)
    * *Memory*
      - Memory latency
      - Memory by technology
      - Content-Addressable Memory (CAM)
      * Memory storage hierarchy
        - Primary memory
          - Main memory, RAM
        - Secondary memory
          - SDD, HDD
        - Tertiary storage
          - BD, DVD
    * *Buses*
      * Address bus
      * Instruction bus
      * Data bus
    * *IO*
    * Components
      - Motherboard
      - CPU
      - GPU
      - RAM
      - ROM
      - SSD
      - HDD
      - PSU
      - UPS
      - HID
    * Computer types
      - Mainframe computer
      - Super computer
      - Midrange computer
      - Personal computer
      - Microcomputer
      - Computer appliance
      - Business machine
      - Information appliance

  * Computer architecture
    * Computer architecture designs
      * Program-controlled system
      * Stored-program system
        * Von Neumann architecture
        * Harvard architecture
          * Modified Harvard architecture
    * Computer architecture elements
      * **Instruction Set Architecture** (*ISA*)
        * Elements dictated by ISA
          * Bitness
            - 8 bit
            - 16 bit
            - 32 bit
            - 64 bit
          * Endianness
            - LE
            - BE
          * Addressing modes
            - Immediate
            - Relative
            - Absolute
            - Indexed
        * ISA by instruction complexity
          - Complex Instruction Set Computing (CISC)
            - X86
            - X86_64
          - Reduced Instruction Set Computing (RISC)
            - ARM
            - Berkeley RISC
            - Power Architecture
            - IBM 801
            - MIPS (Microprocessor without Interlocked Pipelined Stages)
              - Stanford MIPS
          - Minimal instruction set computer (MISC)
          - Transport Triggered Architecture (TTA)
          - Very long instruction word (VLIW)
          - Super Harvard Architecture Single-Chip Computer (SHARC)
        * ISA concerns
          - Instruction Level Parallelism (ILP)
      * **Microarchitecture** (computer organization)
      * **System Design** (implementation)
    * Computer architecture types
      * Serial architectures
      * Parallel architectures
      * Distributed architectures
      * Other architectures

  * Computer system
    * Computation Units
      - bit
      - byte
      - word
    * Addressability
    * Bitness
      - 32-bit computing
      - 64-bit computing
    * Endianness
    * Boot
    * BIOS
    * Loader
    * Firmware
    * Driver

  * **Operating System**
    * Computer system types
      * Embedded systems
        - Firmware
        - Embedded hardware
        - Embedded software
      * Real-time systems
        - Real-time operating systems
        - Real-time languages
        - Real-time system specification
        - Real-time system architecture
      * Dependable systems
        - Reliability
        - Availability
        - Maintainability and maintenance
        - Processors and memory architectures
        - Secondary storage organization
        - Redundancy
        - Fault-tolerant network topologies
      * Other systems
        - Edge computing
        - Neural networks
        - Quantum computing
  
  * Software
    * Software by domain:
      * System software
      * Applicative software
    * Artificial intelligence
    * Machine Learning
    * Software development
      * Activities
        - Processes
        - Requirements
        - Design
        - Engineering
        - Construction
        - Testing
        - Debugging
        - Deployment
        - Maintenance
      * Development models
        - Minimum viable product (MVP)
        - Agile
        - Cleanroom
        - Incremental
        - Prototyping
        - Spiral
        - V model
        - Waterfall
      * Methodologies and frameworks
        - Extreme programming (XP)
        - Rapid Application Development (RAD)
        - Scrum
        - DevOps
        - Kanban
        - ASD
        - DAD
        - DSDM
        - FDD
        - IID
        - Lean
        - SD
        - LeSS
        - MDD
        - MSF
        - PSP
        - RUP
        - SAFe
        - SEMAT
        - TSP
        - UP
      * Supporting disciplines
        - Configuration management
        - Documentation 
        - Software quality assurance (SQA)
        - Project management
        - User experience
      * Practices
        - Test-driven development (TDD)
        - Behaviour-driven development (BDD)
        - ATDD
        - DDD
        - Continuous integration (CI)
        - CCO
        - CD
        - Stand-up
        - PP
        - SBE
      * Tools
        - Compiler
        - Debugger
        - Profiler
        - GUI designer
        - Modeling
        - IDE
        - Build automation
        - Release automation
        - Infrastructure as code
        - Testing
      * Standards
        - BABOK
        - CMMI
        - IEEE standards
        - ISO 9001
        - ISO/IEC standards
        - PMBOK
        - SWEBOK
        - ITIL
    * Programming paradigms/types
        - Structured programming
        - Object Oriented programming
        - Data structures
        - Analysis of Algorithms
        - Formal languages
        - Compiler construction
        - Computer Graphics Algorithms
        - Sorting and Searching
        - Numerical Methods
        - Optimization
        - Statistics
  
  * Data
    * Information
      * Units of information
        - Bit, byte, word
      * Information encoding
        - ASCII
        - Unicode
        - Error checking and correction
    * Data representation
      * Number systems
        - Natural numbers
        - Integer numbers
        - Rational numbers
        - Irrational numbers
        - Real numbers
        - Ordinal numbers
        - Counting and measurement
      * Number bases
        - Binary
        - Octal
        - Hexadecimal
        - base32
        - base64
      * Binary
        - Unsigned binary
        - Unsigned binary arithmetic
        - Signed binary using two's complement
        - Numbers with a fractional part
        - Rounding errors
        - Absolute and relative errors
        - Range and precision
        - Normalisation of floating point form
        - Underflow and overflow
      * Representing media
        - Analogue and digital
        - A/D conversion
        * Graphics
          - Bitmapped graphics
          - Vector graphics
        * Sound
          - Digital representation of sound
          - Musical Instrument Digital Interface (MIDI)
        * Video
        - Data Compression
          - Lossy format
          - Lossless format
        - Data Encryption
    * Data structures and algorithms
      * Abstract data types (ADT)
      * Data structures
        * Fields, records and files
        * Arrays
          - single-dimensional arrays
          - multi-dimensional arrays
        * Vectors
        * Queues
        * Stacks
        * Graphs
        * Trees
          - Binary trees
          - AVL
          - BW
        * Hash tables
        * Dictionaries
      * Algorithms
        * Complexity of algorithms
        * Graph-traversal
        * Tree-traversal
        * Reverse Polish – infix transformations
        * Search algorithms
          - Linear search
          - Binary search
          - Binary search tree (BST)
        * Sorting algorithms
          - Bubble sort
          - Merge sort
          - Quicksort
          - Timsort
        * Optimisation algorithms
          - Dijkstra's shortest path algorithm
          - Hill climbing

  * Program
    * Program execution
    * Program correctness
    * Program verification
  
  * Programming Language Theory
    * Formal languages
    * Parsing
      * Top-down
        - LL
        - Recursive descent
        - Tail recursive
        - Pratt parser
      * Bottom-up
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
      * Concerns
        - PEG 
        - Definite clause grammar
        - Dynamic programming
        - Memoization
        - Parser generator
        - LALR
        - Metacompiler
        - Parse tree
        - AST
        - Scannerless parsing
    * Syntax
      * Abstract Syntax
      * Post Systems
      * Grammars (wrt. context)
        * Context-free grammar
          - Backus–Naur Form (BNF)
          - Extended Backus–Naur Form (EBNF)
        * Context-sensitive grammar
    * Semantics
      * Operational
      * Denotational
      * Axiomatic
    * Language Implementation
      * Interpreter
      * Compiler
    * Language (types)
      - Machine language
      - Assembly language
      - Hardware description language
    * Compiler theory
  
  * Type Systems
  
  * **Networks**
    * Networks topology
    * Networks components
      - Gateways
      - Routers



Theory (class) ≘ practice/implementation (instance):
- TPL (class) ≘ Rust (instance)
- OS theory ≘ ArchLinux
- Database theory ≘ MySQL
