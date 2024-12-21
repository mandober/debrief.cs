# CS GLOSSARY

### Links
https://en.wikipedia.org/wiki/List_of_computing_and_IT_abbreviations
https://en.wikipedia.org/wiki/List_of_information_technology_initialisms
https://en.wikipedia.org/wiki/Timeline_of_operating_systems
https://en.wikipedia.org/wiki/Glossary_of_operating_systems_terms
https://en.wikipedia.org/wiki/Glossary_of_computer_hardware_terms
https://en.wikipedia.org/wiki/Category:Lists_of_computer_terms
https://en.wikipedia.org/wiki/Category:Computing-related_lists
https://en.wikipedia.org/wiki/Category:Computing_terminology
https://en.wikipedia.org/wiki/Category:Glossaries_of_computers

### TOC

<!-- TOC depthFrom:2 depthTo:2 -->

- [Abstract data type](#abstract-data-type)
- [Ad hoc polymorphism](#ad-hoc-polymorphism)
- [Algebraic Data Type](#algebraic-data-type)
- [Abstract Syntax Tree](#abstract-syntax-tree)
- [Aliasing](#aliasing)
- [Alignment](#alignment)
- [Application Binary Interface](#application-binary-interface)
- [Arity](#arity)
- [Assembly](#assembly)
- [Axiomatic semantics](#axiomatic-semantics)
- [Bidirectional map](#bidirectional-map)
- [Big Endianness](#big-endianness)
- [Binding](#binding)
- [Böhm-Berarducci encoding](#böhm-berarducci-encoding)
- [Bounded parametric polymorphism](#bounded-parametric-polymorphism)
- [Closure](#closure)
- [CHI](#chi)
- [Compiler](#compiler)
- [Composition over inheritance](#composition-over-inheritance)
- [Critical section](#critical-section)
- [Concurrency](#concurrency)
- [Data structure](#data-structure)
- [Data type](#data-type)
- [Data typing](#data-typing)
- [Denotational semantics](#denotational-semantics)
- [Discriminant](#discriminant)
- [Dispatch](#dispatch)
- [Duck typing](#duck-typing)
- [Dynamically typed language](#dynamically-typed-language)
- [Efficiency](#efficiency)
- [Embarrassingly parallel](#embarrassingly-parallel)
- [Endianness](#endianness)
- [Escape analysis](#escape-analysis)
- [Foreign Function Interface](#foreign-function-interface)
- [Generic programming](#generic-programming)
- [Hash bag](#hash-bag)
- [Hungarian notation](#hungarian-notation)
- [Information theory](#information-theory)
- [Initialization](#initialization)
- [Inlining](#inlining)
- [Interface](#interface)
- [Intermediate Representation](#intermediate-representation)
- [Invariant](#invariant)
- [In-order Execution](#in-order-execution)
- [Jump](#jump)
- [Link-time optimization](#link-time-optimization)
- [Literal](#literal)
- [Little Endianness](#little-endianness)
- [Marshalling](#marshalling)
- [Monomorphization](#monomorphization)
- [Monomorphic type](#monomorphic-type)
- [Nominal Types](#nominal-types)
- [Offline algorithm](#offline-algorithm)
- [Online algorithm](#online-algorithm)
- [Opaque data type](#opaque-data-type)
- [OpenCL](#opencl)
- [OpenMP](#openmp)
- [Operational semantics](#operational-semantics)
- [Out-of-order execution](#out-of-order-execution)
- [Overloading](#overloading)
- [Parallelism](#parallelism)
- [Polymorphism](#polymorphism)
- [Parametric polymorphism](#parametric-polymorphism)
- [Polymorphic parameter/argument](#polymorphic-parameterargument)
- [Polymorphic type](#polymorphic-type)
- [Restricted polymorphism](#restricted-polymorphism)
- [Pointer](#pointer)
- [Prelude](#prelude)
- [Recursion](#recursion)
- [Program synthesis](#program-synthesis)
- [Reentrant](#reentrant)
- [Reflection](#reflection)
- [Reference](#reference)
- [Semantics](#semantics)
- [Sigil](#sigil)
- [Smart pointer](#smart-pointer)
- [Standard Library](#standard-library)
- [Statically Typed Language](#statically-typed-language)
- [Static dispatch](#static-dispatch)
- [Static Single Assignment](#static-single-assignment)
- [Strictness Analysis](#strictness-analysis)
- [Tail-Recursion Elimination](#tail-recursion-elimination)
- [Thread-safe](#thread-safe)
- [Token](#token)
- [Transmute](#transmute)
- [Type annotation](#type-annotation)
- [Type checking](#type-checking)
- [Theoretical Computer Science](#theoretical-computer-science)
- [Type erasure](#type-erasure)
- [Type identifier](#type-identifier)
- [Type inference](#type-inference)
- [Type safety](#type-safety)
- [Typestate](#typestate)
- [Type system](#type-system)
- [Undefined behavior](#undefined-behavior)
- [Value](#value)
- [Variable](#variable)
- [Software development kit](#software-development-kit)

<!-- /TOC -->


## Abstract data type
1. An abstract data type (ADT) is a mathematical model for data types. An abstract data type is defined by its behavior (semantics) from the point of view of the users (not the implementor), specifically in terms of possible values, possible operations on such data type, and the behavior of these operations. This mathematical model contrasts with data structures, which are concrete representations of data, as viewed from the perspective of the implementor (not users). For instance, a stack is an abstract data type that may be implemented in terms of many concrete data types (as an array, vector, linked list, etc.). Programming paradigm that is agnostic about concrete data types is called generic programming.

2. In PLs, an abstract data type (ADT) is any type that doesn't reveal its implementation, requiring the users to interact with it only through a well-defined interface (API). This enables the author to change the implementation details as long as the interface remains (behaves) the same.

## Ad hoc polymorphism
Ad hoc polymorphism is the definition of names (functions) that can be used at different types, with different behaviours in each case. It is about using a single name to denote a similar behaviour across types, even though each type may have wildly different implementation.

Ad hoc polymorphism is ideal in situations when monomorphic types are too restrictive and fully polymorphic types are too general.

## Algebraic Data Type
Algebraic data type (ADT) is a kind of composite type, a type formed by combining other types. Two common classes of algebraic types are product types and sum types, also called tagged or disjoint unions or variant types.

## Abstract Syntax Tree
AST is abstract syntactic structure of the source code, representing the structure of the program. This tree data structure is an intermediate product of compilation, where each node of the tree denotes a construct occurring in the source code. As a ballpark example, an expression `x = 6` would have a subroot node, named "=", with two children, "x" and "6".

## Aliasing
Aliasing is situation in which a data location in memory can be accessed through different symbolic names in the program; modifying the data through one name implicitly modifies the value associated with all aliased names, which may not be expected. As a result, aliasing makes it particularly difficult to understand, analyze and optimize programs. Rust allows read-only aliasing.

## Alignment
Alignment is the way a data structure (value, object) is laid-out and accessed in memory. A memory access is aligned when the address of data is a multiple of its size. It specifies what addresses must be used to store a particular value. It is always a power of two.

## Application Binary Interface
ABI defines how to call a function at the assembly level. Languages define which ABI the external function uses to call its code.

## Arity
Arity refers to the number of arguments a function or operator takes. Languages that support automatic partial application, only have unary functions. Such functions are unary (arity is 1); functions that take two arguments are binary; generally all functions are n-ary.

## Assembly
An assembler language (ASM), is a low-level programming language in which there is a very strong, but often not one-to-one, correspondence between the language and the architecture's machine code instructions. Assembly language may also be called symbolic machine code.

## Axiomatic semantics
Specific properties of the effect of the execution of a PL are expressed as assertions, thereby possibly ignoring some execution aspects.

## Bidirectional map
A bidirectional map, or a hash bag, is an associative data structure in which the key-value pairs form a one-to-one correspondence (bijection). Thus, the binary relation is functional in each direction: key <-> value. An `(a,b)` pair is such that `a` can be used as a key to find a value `b`, `a -> b`, and vice versa, `b -> a`.

## Big Endianness
Big endian architectures order bytes in memory with the most significant byte (MSB) of a multi-byte value in the lowest-numbered memory location.

## Binding
A binding is an association between an identifier (name, label) and some value object.

Bindings usually occurs explicitly when the user declares a variable and then assigns a value to it. Or when the user declares a constant and assigns it a value. In most PLs, constants are *defined*, meaning the declaration and initialization must be done immediately. That is, a declared constant must be immediately assigned a value, as opposed to a varaible, which may be declared first and initialized later (but must not be used before then). Many intricacies exists regarding declaration, definition, initialization of bindings.

Bindings usually occurs explicitly when the user declares a variable and then assigns a value to it.

Binding also occurs when the user declares a new function - then the name of the function is bound to the function's body; function's parameters are bound to the arguments then the function is called. Bindings also occur in pattern matching, in catch statements, in class declarations, etc.

Bindings are also implicitly created by the language. Most languages expose a set of builtin names which are fucntions, methods, classes and other language items.

A binding is called *mutable* if the value obejct may be changed, i.e. if the reassignement is permitted. Some languages do not allow (or have constructs to opt into) changing the bound objects in any part, but some allow (or cannot control) if a part of the bound object is changed. Mutability is fragmented. Some PLs allow any change, and other only permit the change if the new object has the same type. However, changing the bound object has nothing to do with the mutability of values themselves - it is only about whether the rebinding (reassignement) is allowed.

Some languages allow re-creating bindings, aka *redeclaration*, within the same scope. For example, JS allows redeclaration if the binding was introduced with the 'var' keyword, otherwise it is disallowed. In almost all PL, a binding from an enclosing scope is said to be *shadowed* by the same binding in the inner scope. Some PLs also support *deconstructing* (destructuring) of the bound value.

A binding often has attributes like *scope*, lifetime, and other.


## Böhm-Berarducci encoding
The typed version of Church encoding that can be used to model data structures in a typed lambda calculus (using only functions).

## Bounded parametric polymorphism
Sometimes a limit on types which can be used in generics is needed and this can be achieved with bounded parametric polymorphism. It requires types, in order to be applicable for use with generics, to have something in common, like belonging to the same type class or to implement a common behaviour.

## Closure


A closure is a function, `g`, that has escaped its original scope - commonly, by being returned from a higher-order function, `f`, inside of which it is lexically nested - but nevertheless holds a set of references to values from its originating environment, even if that environment is long gone.

A closure is a function, `k`, that "closes over" its original env - meaning it binds a subset of values from the environment it is defined in (also called its lexical scope). In fact, only a function that has escaped its originating env is called a closure. Normally, this happens when a nested function is returned by the enclosing function (support for first-class functions is reqyuired).

, `f`, inside of which it is nested


Commonly, this happens when a higher-order function, `f`, inside of which is a nested function (our wanna be closure) `h`, returns the function `f`


Actually, it holds a set of references to the values accessible to it from its originating env. 

the values if its enclosing environment, keeping a reference to them even if they get destroyed (drop out of scope).


together with the subset of the enclosing environment.

Closures are a feature of PLs that is similar to functions. A closure is a subroutine (a function) that, besides its regular local variables, also supports nonlocal (free) variables that get bound to values from the enclosing environment, at the compile-time (static binding) or run-time (dynamic binding). In modern PLs, exp. in FPL, a closure is created when a higher-order function `f` returns a function `g`, where `g` is often a function nested inside `f`. The returned function has references to a set of values from its original environment, even though it later finds itself inside another environment.


containing the free variables of this function. The environment allows the function to reference its free variables by extending their lifetime to the lifetime of the closure itself

## CHI
The most profound connection between logic and computation is a pun. The doctrine of Propositions as Types asserts that propositions correspond to types, proofs to programs, and simplification of proofs to evaluation of programs. The proof of a conjunction is a pair, the proof of a disjunction is a case expression, and the proof of an implication is a lambda expression. Proof by induction is just programming by recursion. Dependently-typed programming languages, such as Agda, exploit this pun. To prove properties of programming languages in Agda, all we need do is program a description of those languages Agda. Finding an abstruse mathematical proof becomes as simple and as fun as hacking a program. This talk introduces Programming Language Foundations in Agda, a new textbook that is also an executable Agda script---and also explains the role Agda is playing in IOHK's new cryptocurrency.

## Compiler
Compiler is primarily used to translate source code from a high-level programming language to a lower level language (e.g., assembly language, object code, or machine code), to create an executable program.

## Composition over inheritance
or composite reuse principle in object-oriented programming (OOP) is the principle that classes should achieve polymorphic behavior and code reuse by their composition (by containing instances of other classes that implement the desired functionality) rather than inheritance from a base or parent class.

## Critical section
A critical section is a range of lines in the source code that must be executed without interruption, i.e. atomically (interruption usually tranfers the control to another process that can potentially mutate the critical values).

## Concurrency
A property of a system in which a set of tasks in a system can remain active and make progress at the same time. To utilize concurrent execution when running a program, a programmer must identify the concurrency in their program, expose it within the source code, and then exploit it using a notation that supports concurrency.

## Data structure
Data structure is a particular way of organizing and storing data in a computer so that it can be accessed and modified efficiently. More precisely, a data structure is a collection of data values, the relationships among them and the functions or operations that can be applied to the data.

## Data type
A data type, or just type, represents a constraint placed upon the interpretation of data in a type system, describing representation, interpretation and structure of values stored in memory. A type defines the ways how the data of that type is intended to be used.

## Data typing
Data typing or just typing is the process of classifying data into data types.

## Denotational semantics
The meanings of PL constructs are modelled by mathematical objects that represent the effect of the PL execution. This approach to sematics pays more interest to the effect itself, then to its origin.

## Discriminant
Each `enum` instance has a discriminant (tag) which is an integer associated with it, used to determine which variant the instance holds.

## Dispatch
Dispatch is a mechanism to determine which specific version is to actually run when code involves polymorphism. It comes in 2 major forms: _static_ and _dynamic_ dispatch.

## Duck typing
Identifying a value by probing for methods it responds to, rather then checking its concrete type. The name comes from the phrase: "if it walks like a duck, and quacks like a duck, then it must be a duck".

## Dynamically typed language
In dynamic languages variables don't carry the type: a variable can change its binding and type freely, throughout program's execution, i.e. values of different types can be (re)assigned to a variable, and interpreter will manage all the typing. Dynamic languages rely heavily on type inference. Type checking is performed at run-time.

## Efficiency
Efficiency is a very important property of programs, but only after the most imprtant property - corretness - is obtaind (see what happens when you're speeding?). Correctness is inversly proportional to efficiency and immensely neglected. The main problem is that the latter has better PRs despite space mariners - everybody wants fast n' sloppy, shying away from security bulletins.

## Embarrassingly parallel
In parallel computing, an embarrassingly parallel problem (or an embarrassingly parallelizable problem) is the situation when a program is readily divisible into a number of chunks suitable for parallel processing. This is often the case where there is little or no dependency between the different parts of code and there is no need to exchange the intermediate results between the tasks while they execute in parallel.

## Endianness
Endianness only applies to processors that allow individual addressing of units of data (such as bytes) that are smaller than the basic addressable machine word. An architecture may use big or little endianness, or both, or be configurable to use either. The x86 architecture is little endian. Most RISC architectures (SPARC, Power, PowerPC, MIPS) were originally big endian (ARM was little endian), but many (including ARM) are now configurable.

## Escape analysis
Escape analysis is a method for determining the dynamic scope of pointers. It can be used to check whether the address of a heap allocated object ever leaves the scope of the function where the allocation is performed. If it does not escape its scope, the heap allocation could be replaced by an allocation on the stack.

## Foreign Function Interface
Interacting with functions written in a foreign language. In Rust, FFI is used to call functions written in another language (typically calling C or C++ functions from Rust) and when another language interfaces with Rust's functions (e.g. calling Rust's functions from JavaScript).

## Generic programming
Generic programming is a style of programming in which algorithms are written in terms of types to-be-specified-later that are then instantiated when needed for specific types provided as parameters.

## Hash bag
(v. Bidirectional map)

## Hungarian notation
It is a variable-naming convention that reminds the user what type the variable has, by prefixing its name with a mnemonic.

## Information theory
is the scientific study of quantification, storage and communication of digital information.

## Initialization
A variable is initialized if it has been assigned a value and hasn't since been moved from. All other memory locations are assumed to be initialized. Only unsafe Rust can create such a memory without initializing it.

## Inlining
In principle, inlining is very simple optimization technic where a function call is replaced by an instance of the function's entire body, thereby skipping the need to jump (relatively slow maneuvre).

Inlining is the practice of replacing a function call with the called function's body, pasted right into the callsite, eliding the jump.

to a function by including the function body directly into the callsite, enabling optimizations (such as avoiding the overhead of a function call). It is controlled with the `inline` attribute:
  - `#[inline(never)]`
  - `#[inline]` hint to the compiler that inlining is desirable. It is required for any cross-crate inlining.
  - `#[inline(always)]` hint to the compiler that inlining is required.
2. Data structure: 
  when a data structure is inlined it means it is on the stack. e.g. array is inlined, contiguous sequence with a fixed size at compile time.

## Interface
Interface is used to define an abstract type that defines behaviors as method signatures. It describes the contract which types that implement it need to obey. In Rust, interface is realized through traits.


## Intermediate Representation
Intermediate Representation (IR)
It is the output LLVM IR Code, which can be shown in text form by passing `--emit=ir` to rustc.

## Invariant
An invariant is a condition that can be relied upon to be true during execution of a program, or during some portion of it. It is a logical assertion that is held to always be true during a certain phase of execution. For example, a loop invariant is a condition that is true at the beginning and end of every execution of a loop.

## In-order Execution
A model of execution where the instructions are executed in order of submission, with each command running to completion before the next one begins.

## Jump
A jump transfers the control of execution to another location in the program, normally used to handle some particular situtation. A *local jump* is a jump within the same functoon. A *relative jump* is an unconditional jump to a label.

## Link-time optimization
Link-time optimization (LTO)
A type of optimization performed by a compiler at link time. In Rust, link-time optimization can only be performed on executables.

## Literal
A literal is an expression consisting of a single token, rather than a sequence of tokens, that immediately and directly denotes the value it evaluates to, rather than referring to it by name or some other evaluation rule.

## Little Endianness
Little endian processors order bytes in memory with the least significant byte (LSB) of a multi-byte value in the lowest-numbered memory location.

## Marshalling
Marshalling is the process of transforming the memory representation of an object to a data format suitable for storage or transmission.

Marshaling and serialization are loosely synonymous in the context of remote procedure call, but semantically different as a matter of intent. In particular, marshaling is about getting parameters from here to there, while serialization is about copying structured data to or from a primitive form such as a byte stream. In this sense, serialization is one means to perform marshaling, usually implementing pass-by-value semantics. It is also possible for an object to be marshaled by reference, in which case the data "on the wire" is simply location information for the original object. However, such an object may still be amenable to value serialization.

## Monomorphization
Monomorphization, a form of _static dispatch_, is a process of turning generic into concrete code. When generic code is used, concrete types replace generic types (concretization of code). This results in the code that would have been written in the first place if only concrete types were available.

Monomorphization increases code size, which, in some cases (that are avoidable by employing certain strategies) is referred to as the _code (size) bloat_, but the generated machine code is highly efficient (because concrete types are used) and very fast (which is never referred to as the _speed bloat_). The alternative with inversed trade-offs is _dynamic dispatch_.

## Monomorphic type
A monomorphic type is a concrete, fully instantiated type (e.g. `Bool`, `Int -> Bool`, etc.).

## Nominal Types
Types identified by name, as opposed to their internal structure.

## Offline algorithm
An offline algorithm must be fed the entire input (problem dataset) at once.

## Online algorithm
An online algorithm can process its input piece-by-piece, serially, in order the input is fed to it, without having the entire input available at once.

## Opaque data type
An opaque data type is a data type whose concrete data structure is not defined in an interface. This enforces information hiding, since its values can only be manipulated by calling subroutines. Typical examples of opaque data types include handles for miscellaneous resources.

## OpenCL
Open Computing Language is an open standard for general purpose parallel programming across CPUs, GPUs and other processors, giving software developers portable and efficient access to the power of these heterogeneous processing platforms. OpenCL consists of an API for coordinating parallel computation across heterogeneous processors; and a cross-platform programming language with a well-specified computation environment.

## OpenMP
OpenMP is an API that supports multi-platform shared-memory multiprocessing programming in C, C++, and Fortran, on many platforms, instruction-set architectures and operating systems.

## Operational semantics
The meaning of a PL construct is specified by the computation it induces when it is executed on a machine. In particular, how the effect of a computation is produced is of the biggest interest.

## Out-of-order execution
A model of execution in which instructions may begin and complete execution in an order that is different then the order in which they appear in the source code, as long as the result is consistent with specification (or common sense).

## Overloading
Overloading (sometimes called restricted polymorphism) is a form of ad hoc polymorphism where the definition of functions, and especially operators, has the same name but different implementations. The canonical example is addition, usually denoted with symbol `+`, which represents the same idea, but each type that supports this operator has a different (internal) implementation. For example, the addition of unsigned integers exploits their 2's compliment representation, while addition of floats uses an entirely different technic.

## Parallelism
True parallelism includes a number of physical CPUs that simultaneously execute different pieces of a single process (program). To expolit parallelism, a program must be parallelizable - it should be possible to split it into pieces (that can execute simultaneously) in a way that makes sense. Importantly, in a way so that the results can be collected and stiching together sensibly. One of the crucial properties is for the piece to be independable of each other. Things that can be mapped and reduced are ideal. On the other hand, concurrency is the execution of different processes in a little by little manner, where each process is granted a time slot on the CPU to execute. The scheduler part of the kernel relies on a complex algorithm to select the next process it will let for a few spins on the CPU. The fast pace in which this happens gives the illusion of simultaneous execution.

## Polymorphism
Polymorphism is the provision of a single interface to entities of different types.

## Parametric polymorphism
Using parametric polymorphism, a function or a data type can be written 
generically so that it can handle values identically without depending on their type. Such functions and data types are called generic functions and generic datatypes and form the basis of generic programming.

Parametric polymorphism (also universal polymorphism, sometimes also higher-order polymorphism) is the definition of functions that behave uniformly over all types. A canonnical example of a parameterically polymorphic function is the identity function, possibly defined as `id : ∀a. a -> a`.

## Polymorphic parameter/argument
Polymorphism gets more complicated when a parameterically polymorphic function is allowed to declare a polymorphic parameter (polytypic parameter, polymorphic components), which is an argument instantiated at different types in the function's body.

## Polymorphic type
A polymorphic type is not any concrete type, but a type that a polymorphic type variable represents. In fact, only type variables may be polymorphic. When such a type variable is fully instantiated (at some concrete type), we obtain a monomorphic type. Polymorphic type is thus represented by an unconstrained type variable (parameteric polymorphism), but it may also be represented by a constrained type variable (ad hoc polymorphism) in which the type variable only ranges over a subset of all possible types. In the former case, there is also the question of *instantiation* - can a parametrically polymorphic type variable be instantiated at different types in the same expression (in the same function), opening the door to existentially vs universally quantified type variables.

A polymorphic type is one whose operations can also be applied to values of some other type(s).

## Restricted polymorphism
Restricted polymorphism occurs when a type variable is constrained. Usually, constraints are derived from type classes. For example, the function that test two values for equality may be defined as `== : Eq a => a -> a -> Bool`, where `Eq` is the type class that groups types which can be compared for equality. So the type parameter `a` is constrained - it can only be instantiated at types that are members of the Eq class, i.e. at types that can indeed be compared for equality. Only in that case are we assured that there is the `==` function that we can use to check whether any two values of that type are equal.

## Pointer
A pointer is an object that stores a memory address. Usually, it is an address of another value located in computer memory, or in some cases, address of memory-mapped computer hardware. A pointer references a location in memory, and obtaining the value stored at that location is known as *dereferencing the pointer*.

## Prelude
Languages that support modules often define a prelude, which is a set of commonly used language items that gets implicitly imported in every module. The prelude module itself does not define anything, but only reexports names of interest gathered from various modules (files) that usually comprise the standard library of a language. The language primitives could also be made available through a prelude module, or they may be always available; in the first case, it is usually possible to create a completely blank environment with nothing defined by denying the import of the prelude. The concept of preludes makes it possible to define a custom initial environment in a languages that supports it.

## Recursion
The recursion may involve other language entities, but it is by far most commonly realized with functions, which are, thus, referred to as recursive functions. A half-assed description of such functions says that "recursion is when a function calls itself", a phrase that raised the concern to quickly come up with something more stronk, moonshine well-foundedness newly-foundland [throw out the imposters]. In the modern treatment, the term "recursion" almost always entails well-foundedness.

The *well-founded recursion* manages to curb the recursive set of arguments and make it (in some sense) smaller, with each iterative step, on its way towards the base case. Or, more briefly, it is a (recursive) function that (always) terminates.

Recursion is closely related to mathematical induction.

Recursion is a divide-and-conquer technic applicable to solving self-similar computational problems. The self-similarity of a problem means that the same function (recursion is most commonly realized through a recursive function) can be used to solve all the subproblems that the main problem is broken down into. This is where the "self-similarity" kicks in: the main problem and all the (generated) subproblems have to be sufficiently similar.

(recursion = analysis + synthesis) Or, from another perspective, it must be possible to synthesize the main problem back from the set of the ever so smaller components it is being reduced to by analysis.

In a narrow sense, the term "recursion" is used to describe a computational structure in which the solution to any but the simplest instances of a problem requires, as an initial step, the solution of one or more subproblems of the same sort. Recursive procedure invocations are used to obtain the results for these subproblems, which are then brought together and postprocessed. The results of the postprocessing are returned as the results of the original invocation of the recursive procedure.

## Program synthesis

In the proof of a property, we take an existing program and then demonstrate that it satisfies some property. In the synthesis of a program, we take a property called *specification* and synthesize a program that satisfies it. In some contexts, program synthesis is called *program derivation*. Both proof and synthesis require essentially the same reasoning. Often a proof can be turned into a synthesis by reversing the order of steps, and vice versa.

## Reentrant
A function is reentrant if it can be interrupted in the middle of its execution, and then be safely called again ("re-entered") before its previous invocations complete execution.

## Reflection
Reflection is the ability of a program to examine, introspect, and modify its own structure and behavior at runtime.

## Reference
A reference is a value that enables an indirect access a particular data; it refers to some data and accessing that data is called dereferencing the reference. A reference is distinct from the data itself. A reference may be implemented as the physical address of where the data is stored in memory; due to this, it is often confused with a pointer, but a reference may also be implemented in other ways, such as the offset between the data's address and some fixed "base" address, as an index into an array, or more abstractly as a handle; more broadly, in networking, a reference may be a network address such as URL.

## Semantics
Semantics refers to the meaning of language constructs, as opposed to their form (syntax). Semantics provides the rules for interpreting the syntax which do not provide the meaning directly but constrains the possible interpretations of what is declared. The 3 principal approaches to describing the semantics of PLs are operational, denotational and axiomatic.

## Sigil
A sigil is a symbol attached to a variable name, presenting some attribute of variable (datatype, scope, etc.), usually in prefix position; e.g. `$foo` where `$` is the sigil.

## Smart pointer
A smart pointer is an abstract data type that simulates a pointer while providing added features, such as automatic memory management or bounds checking. Such features are intended to reduce bugs caused by the misuse of pointers, while retaining efficiency. Smart pointers typically keep track of the memory they point to, and may also be used to manage other resources, such as network connections and file handles. Smart pointers prevent most situations of memory leaks, caused by pointer mishandling (double free, dangling pointers, etc.), by making the memory deallocation automatic.

## Standard Library
A standard library is the library made available across implementations of a programming language. It is often treated as part of the language by its users, although the designers may have treated it as a separate entity. The line between a language and its libraries differs between languages and it is not always clear. Some languages are designed so that the meanings of certain syntactic constructs cannot even be described without referring to the core library.

## Statically Typed Language
In static languages, variables are classified into types: once a variable acquires a type, it is type-locked. It cannot change its type and it accepts bindings only to the values of the matching type. Moreover, in some languages, a variable cannot even be rebound to a different value, after its initial binding, although some languages permit this by declaring a variable mutable. Static languages perform type checking at compile-time (many also at run-time).

## Static dispatch
Static dispatch usually resolves polymorphic calls using _monomorphization_. It allows _inlining_ of function calls.

## Static Single Assignment
Static Single Assignment (SSA) is a property of an intermediate representation (IR), which requires that each variable is assigned exactly once, and every variable is defined before it is used. Existing variables in the original IR are split into versions, new variables typically indicated by the original name with a subscript in textbooks, so that every definition gets its own version. In SSA form, use-def chains are explicit and each contains a single element.

## Strictness Analysis
Strictness analysis is used to prove whether a function is strict in one or more of its arguments. A strict argument is guaranteed to always be evaluated by the function and hence the evaluation can also be done on the caller side instead. This can lead to a significant decrease in thunks in the program and therefore improved performance, since unnecessary evaluation of them can be eliminated.

## Tail-Recursion Elimination
A function is said to be tail-recursive if the last operation performed in its body is a bare recursive call (without further touching the result of the call). Such a recursive function does not need the previous stack frames since it leaves nothing there (don't touch the results of the call part - you may only return it, nothing else). This opens up the possibility to optimize away such functions by converting them into a iterative version, e.g. a (bounded) loop computation.

## Thread-safe
A process/thread is considered thread-safe if its internal state remains consistent when interrupted by other processes/threads (that could potentially mutate its state); it is re-entrant-safe: pausing and resuming it, as well as restarting it, or starting a few of its instances, does not confuse it, it is resillient to fuckuppery.

## Token
Tokens are primitive productions in the grammar defined by regular, non-recursive, language.

## Transmute
Reinterpret the bits of a value of one type as another type.

## Type annotation
Type annotation is an explicit identification of the data type by placing type identifiers directly on expressions in the source code.

## Type checking
The type system uses data type information to verify and enforce the constraints of data types through a process called type checking.

## Theoretical Computer Science
Theoretical CS is a part of CS that focuses on the mathematical aspects of computing.

## Type erasure
Keeping types around at runtime is not only expensive but unnecessary. Types are used at compile-time to verify the correctness of the program, but after that it is safe to erase them. However, the things get more complex in a dependently-typed language because, there, some types carry information and so their presence is required at runtime. For example, with proof-carrying code, the proofs are actually carried by types.

## Type identifier
A type identifier is the name of a data type, such as `Int`, `->`, `(,)`, or more complex ones. In parameterized data type, the name of the type (the type identifier) directly corresponds to the name of the type constructor, so, e.g. `[]` is a type identifier, "pronounced" as 'list'. Commonly, type and value identifiers live in separete namespaces.

## Type inference
Deduction of types of expressions and other language entities that is based on code analysis rather then explicit user annotations. The Hindley-Milner type system is at the base of many modern FPLs as its type inference algorithm is efficient and, most importantly, decidable in finding the principle type of language expressions. Most of the time, users need not bother placing type annotations anywhere, yet still, the types will be correctly inferred. Why don't all languages today support HM type system is a great mystery. Actually, all recently created (strongly-typed) languages do (Rust, Swift, F#, Elm, PureScript), and implementing it for the methuselah guard is either too complicated now, or maybe it's a question of not-invented-here inferior mentality of the dying breed. The superiority of HM is unrivaled, so it really should be the most common denominator across PLs, except in presence of dependent types which make type inference undecidable (however, manual type annotation is overcompensated).

## Type safety
Type safety is the extent to which a language discourages type errors.

## Typestate
Typestate is the dependence of a type and its behavior on the contained value: typestates define valid sequences of operations that can be performed on a value of a given type. Typestate associates state information with variables of that type. This state information is used to determine, at compile-time, which operations are valid on an instance (value) of that type. Operations performed on an object, that would usually only be executed at run-time, are performed on the typestate information, which is then modified to be compatible with the new state of the object.

## Type system
A type system is a set of rules that assigns a type property to the various value-carrying constructs of a programming language.

## Undefined behavior
Undefined behavior (UB) is the result of executing computer code whose behavior is not prescribed by the language specification.

## Value
A value is a sequence of bits together with its interpretation.

## Variable
A variable is a storage location paired with an associated symbolic name (an identifier) that contains some quantity of information referred to as a value.

## Software development kit
Software development kit (SDK) containing docs, headers, libraries, samples, tools, etc. required for developing software for/around some product (for which the SDK has been released). For example, Windows 10 SDK, released by Microsoft, provides the latest headers, libraries, metadata, and tools for building Windows 10 apps.
