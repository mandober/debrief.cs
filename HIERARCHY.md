# CS HIERARCHY

* Computing
  - History
  - Foundations
* Computer Hardware
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
* Operating System
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
  * Data representation
  * Data structures
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
* Networks
  * Networks topology
  * Networks components
    - Gateways
    - Routers
