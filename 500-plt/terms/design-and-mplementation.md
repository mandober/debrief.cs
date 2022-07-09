# Design and Implementation of Programming Languages (DIPL)

Modern PLs abound with features, but almost all of them can be derived from a small subset of really essential features.

Lambda calculus as the core language into which more complicated language features can be translated.

Features that bring comfort and convenince may be integrated into (the surface) language in the form of syntactic sugar, which can be easily translated (desugared) into the core language.

LC cannot really be considered as a standalone PL, at least because it lacks the basic input-output facilities. However, these facilities may be provided by a runtime-system that runs the compiled program, thus alowing LC to remain pure.

This setup of having a sharp split between the pure language for authoring programs, versus the impure runtime system that runs and manages the programs, is employed in Haskell. Haskell the language is pure, but Haskell's RTS (runtime system) is effectfull.
