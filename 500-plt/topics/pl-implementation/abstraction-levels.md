# PLT :: INDEX :: Abstraction Levels in CS/PLs



Abstraction levels
- bit level
- instruction level
- data level
- process (task) level

Levels of abstraction
- low-level
- close to the metal
- higher level
- language level
- compiler level
- machine-code level
- object-code level
- user-level



- Dependent typing (the top)
  - Agda, Idris, Coq, Lean
  - safety: max
  - speed:  min (getting better all the time)
- Logical paradigm:
  - Mercury: Prolog with Haskell type system
  - Prolog (poor type system)
- Haskell, Miranda, Clean, Frege
- Lisp, Scheme, ML
- dynamic: Python, JS, Ruby, PHP
- oop: C++, Java, C#
- weak static typing:
  - C
    - type system:  poor 🕱
    - safety:       min 🕱
    - speed:        max ✔✔✔✔✔
    - control:      max ✔✔✔✔✔
- Fortran
- Pascal

- Conventional programming languages
  - mostly distinguished by their type system
  - somewhat by introducing some unique useful feature
  - classification by generation is not very useful, more a guideline

- *Assembly languages*
  - macro-like preprocessor/language
  - mnemonics
    - mnemonics that group and repr bitstrings
  - many assembly languages
    - varying per architecture
    - varying arbitrarily, by mnemonic convention
    - varying by level of abstraction
      - lower-level assembly languages
        - low abstraction
      - higer-level assembly languages
        - higher abstraction but nothing crazy, more convenience
  - assembler: translates assembly into machine code

- *Machine code*
  - 1's and 0's only, some denoting instructions, some data
  - binary code
  - object files with binary code

- Microarchitecture
  - vonNeumann architecture
    - same bus for instructions and data
    - care taken to differentiate instructions and (user) data
  - CPU design
    - microprogramming CPU features
  - microcode
  - ISA

- Logico-physical level
  - filters, voltage selectors, voltage identifiers, repeaters

- Physical level
  - electricity, voltage, current
