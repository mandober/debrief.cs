# CS: Hierarchy vs Anarchy


PART I: INTRODUCTION
====================

## cs
  - theoretical CS
  - history and foundations
  - computing
  - computer systems

## computer systems
  - operating system
  - embedded system
  - real-time system
  - networked system
  * computer system attributes
    - reliability
    - availability
    - fault-tolerance
    - maintainability
    - redundancy

## computing
  - serial, parallel, distributed
  - edge computing
  - neural networks
  - quantum computing



PART II: HARDWARE
=================

## Computer Hardware
  - Processors and memory architectures
  * Main components
    - CPU
    - Memory
    - Buses
    - IO
  * Other components
    - Motherboard, GPU, PSU
    - Peripherals: Keyboard
  * Hardware/Software components
    - BIOS
    - Loader
    - Firmware
    - Driver
    - *Booting*

## CPU
  - Microarchitecture
  - components

## CPU microarchitecture
  - branching
  - hyperthreading
  - pipelining
  - SIMD, MIMD
  - advanced instructions: AVX, 

## CPU components
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

## Memory
  - Memory technology
    - RAM, ROM, DRAM, SRAM
    - Content-Addressable Memory (CAM)
    - Universal memory
  - Memory latency
  - Memory hierarchy
    - Primary memory: Main memory, RAM
    - Secondary memory: SDD, HDD
    - Tertiary storage: BD, DVD, Tape

## Buses
  - Address bus
  - Instruction bus
  - Data bus

## Computer architecture
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

## Instruction Set Architecture
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

## Logical aspects
  - sequential logic
  - circuits: AND, OR, NOT, NAND, NOR
  - synchronization
  - clock


PART III: DATA
==============

## Data
  - Data representation
    - Units: bit, byte, word
    - Data storage, capacity, speed
  - Information theory
  - Data structures
  - Algorithms
  - Database theory

## Data representation
  - numbers
  - text
  - media

## Data structures
  - ADT
  - implementations
  - persistent
  - mutable
  - classification

## Database theory
  - normalization forms
  - concurrency

## Information theory
  - bit
  - entropy


PART IV: SOFTWARE
=================

## software
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

## program
  - program execution
  - program correctness
  - program verification

## programming
  - programming languages
  * programming language theory
  * programming paradigms
  - design patterns
  - statistics
  - artificial intelligence
  - machine Learning
  * algorithms

## Programming Paradigms
  - structured, imperative, oo, 
  - declarative, functional
  - logical


PART V: PROGRAMMING LANGUAGE
============================

## PL classification
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

## Programming Language Theory
  - Formal language
  - Compiler theory
  - Parsing
  - Syntax
  - Semantics
    - Operational
    - Denotational
    - Axiomatic
  - Implementation
    - Specification
    - Compiler
    - Interpreter
  * Type System

## Formal language
  - symbolic language
  - syntax
  - grammar
  - semantics

## Compiler theory
  - Parsing
  - Tokenization
  - Optimization
  - Code generation

## Parsing
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

## Syntax
  - Abstract Syntax
  - Post Systems

## Grammar
  - Grammars and context
  - Context-free grammar
    - Backus–Naur Form (BNF)
    - Extended Backus–Naur Form (EBNF)
  - Context-sensitive grammar

## Semantics
  - Operational
  - Denotational
  - Axiomatic


PART V: ALGORITHMS AND DATA STRUCTURES
======================================

## Algorithms
  - Dynamic programming
  - Memoization
  - Sorting algorithms
  - Searching algorithms
  - Computer Graphics Algorithms
  - Numerical Methods
  - Optimization
