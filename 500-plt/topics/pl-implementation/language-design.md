# Design of programming languages

Design of programming languages, strategies and tradeoffs in implementing various PL features form syntactical, operational and pragmatic perspectives.
- Overal language design in relation to the chosen paradigm.
- Realizability of efficiently implementing desired set of features.
- From desired, possibly sugared, surface syntax to the low-level impl details.
- Selected paradigm vs efficiency tradeoffs.
- Design challenges


## PL design challenges

1. funarg
  Managing first-class functions - wrt the call stack, but also managing closures wrt heap, func pointers. Impl closures that capture their env (lexical env or dynamic env or ...).

2. the expression problem (Wadler)
  the possibility of extending both (existing) datatypes and behaviour, without too much refactoring. Like add-on type variants and addon extra methods (sum types); e.g. painlessly extending an interpreter with new entities (types, methods, handlers, whatever).

3. polymorphism
  - impl overloading: type classes, monomorphisation, ...
  - method resolution: static, dynamic, ...
  - method dispatching: late binding, ...
