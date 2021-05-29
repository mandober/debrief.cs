# Type checking

*Type-checking* is an aspect of a type system in which a program's source code is verified to make sure the assigned types are sound. This task is usually carried out after, or as part of the process that verifies the typings, made either by the programmer, or, possibly, inferred by the compiler for expressions that were lacking explicit type annotations. In any case, once all expression are typed, the types are checked to make sure everything is in agreement. Then the types are usually erased, having served their purpose.


a task most commonly performed at two distinguishing different times in the life-cycle of a program

determines whether and when types are verified, with the "when" set at compile-time and run-time. 

*Static type system*, that is, a type system (or a PL) for which is said to be static, means that type checking is performed at the compilation-time, as opposed to a *dynamic type system* that checks types at run-time (when the ship has already sailed).


errors are reported based on a program's source code.

Dynamic checking means that type errors are reported based on a program's dynamic (run-time) behavior.
