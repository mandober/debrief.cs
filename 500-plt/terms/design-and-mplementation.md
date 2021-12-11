# Design and Implementation of Programming Languages (DIPL)

Modern PLs are so full of various features, it seems the complete historical excavation would be in order to investigate them all, and it sometimes is, but more often all these fancy features can be derived from a far smaller subset of really essential PL features.

Lambda calculus is often considered the world's smallest function PL. However, although LC is terribly unergonomical and impractical to use directly, it can be used and often is in FPLs, as the so-called core language, into which more complicated language features can be translated. Those features that are desired for the comfort and convenince they bring are often easily integrated into a FPL based on LC, as long as they are easily desugared into the core.

LC cannot really be considered as a standalone PL, at least because it lacks the basic input-output facilities. However, these facilities may be provided by a runtime-system that runs the compiled program, thus alowing LC to remain pure. This setup of having a sharp split between the pure language for authoring programs versus the impure runtime system that runs and manages the programs, is employed today in Haskell. Haskell the PL in which people write code is pure, while its runtime system performs the side-effects.

So, we do actually go ahead and consider LC as a minimal PL. And as a PL, LC offers just one thing: functions. In fact, it offeres two things, but both are still about functions: a way to define a function, and a way to apply them.
