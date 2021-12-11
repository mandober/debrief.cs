# Representation and Abstraction

<!-- TOC -->

- [Program](#program)
- [Representation](#representation)
    - [Semantic Intent](#semantic-intent)
    - [Explicit versus Implicit Representation](#explicit-versus-implicit-representation)
    - [Coherent versus Diffuse Representation](#coherent-versus-diffuse-representation)
- [Language Design](#language-design)
    - [Competing Design Goals](#competing-design-goals)
    - [The Power of Restrictions](#the-power-of-restrictions)
    - [Principles for Evaluating a Design](#principles-for-evaluating-a-design)
- [Classifying Languages](#classifying-languages)
    - [Language Families](#language-families)

<!-- /TOC -->

(The Anatomy Of Programming Languages. Alice E. Fischer, Frances S. Grodzinsky. Prentice Hall. 1993. Chapter 2.)

This chapter presents the concept of how real-world objects, actions, and changes in the state of a process are represented through a programming language on a computer.

Programs can be viewed as either a set of instructions for the computer to execute or as a model of some real-world process. Languages designed to support these views will exhibit different properties. The language designer must establish a set of goals for the language and then examine them for consistency, importance, and restrictions.

Principles for evaluating language design are presented. Classification of languages into groups. Categories for classifying languages are discussed.

Representation may be explicit or implicit, coherent or diffused.

## Program

We can view a program two ways:

1. *A program is a description of a set of actions that we want a computer to carry out.* The actions are the primitive operations of some real or abstract machine, and they are performed using the primitive parts of a machine. Primitive actions include such things as copying data from one machine register or a memory location to another, applying an operation to a register, or activating an input or output device.

2. *A program is a model of some process in the real or mathematical world.* The programmer must set up a correspondence between symbols in the program and real-world objects, and between program functions and real-world processes. Executing a function represents a change in the state of the world or finding a solution to a set of specifications about elements of that world.

These two world-views are analogous to the way a builder and an architect view a house. The *builder* is concerned with the method for achieving a finished house. The *architect* is concerned with the overall function and form of the house.

The two world-views lead to very different conclusions about the properties that a programming language should have. A language supporting the first world-view provides ready access to every part of the computer so that the programmer can prescribe in detail how the computer should go about solving a given problem. A language subscribed to thi s view allows a programmer to talk directly to hardware registers, memory, data movement, I/O devices, etc. For example, C permits (and forces) a programmer to work with and be aware of the raw elements of the host computer.

A language supporting the second world-view must be able to deal with abstractions and provide a means for expressing a model of the real-world objects and processes. It frees a programmer of concerns about the machine, allowing him to deal with abstract concepts instead.  In Prolog the programmer represents the world using formulas of mathematical logic. In other languages, a programmer may use procedures, type declarations, structured loops, and block structures to represent and describe the application. Writing a program becomes a process of representing objects, actions, and changes in the state of the process being modeled.

The advantage of a *builder's language* is that it permits the construction of efficient software that makes effective use of the computer on which it runs.

A disadvantage is that programs tailored to a particular machine cannot be expected to be well suited to another machine and hence they are not particularly portable. Moreover, a programmer using such a language is forced to organize ideas at a burdensome level of detail. Just as a builder must be concerned with numerous details such as building codes, lumber dimensions, proper nailing patterns, and so forth, the program builder likewise deals with storage allocation, byte alignment, calling sequences, word sizes, and other details which, while important to the finished product, are largely unrelated to its form and function.

By contrast, an *architect's language* frees one from concern about the underlying machine and allows one to describe a process at a greater level of abstraction, omitting the minute details.

A great deal of discretion is left to the compiler designer in choosing methods to carry out the specified actions. Two compilers for the same architect's language often produce compiled code of widely differing efficiency and storage requirements. In fact, there is no necessary reason why there must be a compiler at all. One could use the architect’s language to specify the form and function of the finished program and then turn the job over to a program builder. However, the computer can do a fairly good job of automatically producing a program for such languages, and the ability to have it do so gives the program architect a powerful tool not available to the construction architect - the ability to rapidly prototype designs.


## Representation

A representation of an object is a list of the relevant facts about that object in some language. A computer representation of an object is a mapping of the relevant facts about that object, through a computer language, onto the parts of the machine.

Some languages support high-level or *abstract representations*, which specify the functional properties of an object or the symbolic names and data types of the fields of the representation. A high-level representation will be mapped onto computer memory by a translator.

In contrast, a computer representation is low level if it describes a particular implementation of the object, such as the amount of storage that will be used, and the position of each field in that storage area.

A **computer representation** of a process is a sequence of program definitions, specifications, or statements that can be performed on representations of objects from specified sets.

We say that the representation of a process is *valid*, or correct, if the transformed object representation still corresponds to the transformed object in the real world.

We will consider 3 aspects of the *quality of a representation*: semantic intent, explicitness, and coherence. Abstract representations have these qualities to a high degree; low-level representations often lack them.

### Semantic Intent

A data object (variable, record, array, etc.) in a program has some intended meaning that is known to the programmer but cannot be deduced with certainty from the data representation itself. This intended meaning is the programmer’s **semantic intent**.

A program has **semantic validity** if it faithfully carries out the programmer’s explicitly declared semantic intent. Most programming languages use a data type to encode part of the semantic intent of an object. A type checking mechanism can thus help a programmer write semantically valid (meaningful) programs.

### Explicit versus Implicit Representation

The structure of a data object can be reflected implicitly in a program, by the way the statements are arranged, or it can be declared explicitly. A language that can declare more kinds of things explicitly is more *expressive*.

A language that permits explicit communication of information must have a translator that can identify, store, organize, and utilize that information. For example, if a language permits programmers to define their own types, the translator needs to implement type tables (where type descriptions are stored), new allocation methods that use these programmer-defined descriptions, and more elaborate rules for type checking and type errors.

These translator mechanisms to identify, store, and interpret the programmer’s declarations form the *semantic basis of a language*. Other mechanisms that are part of the semantic basis are those which implement binding, type checking and automatic type conversion, module protection.

### Coherent versus Diffuse Representation

A representation is **coherent** if an external entity (object, idea, or process) is represented by a single symbol in the program (a name or a pointer) so that it may be referenced and manipulated as a unit.

A representation is **diffuse** if various parts of the representation are known by different names, and no one name or symbol applies to the whole.

Some languages support coherence further by permitting a set of data representations to be grouped together with the functions that operate on them. Such a coherent grouping is called a module, class, package.


## Language Design

In this section we consider reasons why a language designer might choose to create an architect's language with a high degree of support for abstraction, or a builder's language with extensive control over low-level aspects of representation.


### Competing Design Goals

Programming languages have evolved greatly since the late 1950s when the first high-level languages, FORTRAN and COBOL, were implemented.

Along with improvements in hardware came improvements in language translation techniques. Both syntax and semantics of the early languages were ad hoc and clumsy to translate. *Formal language theory* and *formal semantics* affected language design in revolutionary ways and have resulted in better languages with cleaner semantics and a more easily translatable syntax.

Decisions to include or exclude language features must be made carefully. A language designer must consider several aspects of a potential feature to decide whether it supports or conflicts with the design goals.

Some issues about design have nbeen agreed upon ad are included in most languages. Other issues, however, are not yet agreed upon. For instance, the question of whether procedural or functional languages are "better". No single set of value judgments has yet emerged, because different languages have different goals and different intended uses.

The following are some potential language design goals:
- *Utility*. Is a feature often useful? Can it do important things that cannot be done using other features of the language?
- *Convenience*. Does this feature help avoid excessive writing? Does this feature add or eliminate clutter in the code?
- *Efficiency*. Is it easy or difficult to translate this feature? Is it possible to translate this feature into efficient code? Will its use improve or degrade the performance of programs?
- *Portability*. Will this feature be implementable on any machine?
- *Readability*. Does this form of this feature make a program more readable? Will a programmer other than the designer understand the intent easily? Or is it cryptic?
- *Modeling ability*. Does this feature help make the meaning of a program clear? Will this feature help the programmer model a problem more fully, more precisely, or more easily?
- *Simplicity*. Is the language design as a whole simple, unified, and general, or is it full of dozens of special-purpose features?
- *Semantic clarity*. Does every legal program and expression have one defined, unambiguous, meaning? Is the meaning constant during the course of program execution?

These goals are all obviously desirable, but they conflict with each other. For example, a simple language cannot possibly include all useful features, and the more features included, the more complicated the language is to learn, use, and implement.

Some language researchers have taken as goals the fundamental properties of language shown at the end of the list of design goals. Outstanding examples include Smalltalk, a superior language for modeling objects and processes, and Miranda, which is a list-oriented functional language that achieves both great simplicity and semantic clarity.

### The Power of Restrictions

Every language imposes restrictions on the user, both by what it explicitly prohibits and by what it simply doesn’t provide. Whenever the underlying machine provides instructions or capabilities that cannot be used in a user program, the programming language is imposing a restriction on the user.

A good example of a useful facility that some languages prohibit is explicit address manipulation. This is supported in C, but prohibited in a number of languages to prevent the occurrence of meaningless and potentially dangerous dangling pointers.

Let us define *flexibility* to mean the absence of a restriction, and call a restriction good if it prevents the writing of nonsense, and bad if it prevents writing useful things. Some restrictions might have both good and bad aspects.

A powerful language must have the flexibility to express a wide variety of actions - preferably a variety that approaches the power of the underlying machine. But power is not a synonym for flexibility. The most flexible of all languages is assembly language, but assemblers lack the power to express a problem solution succinctly and clearly.

A second kind of power is provided by sophisticated mechanisms in the semantic basis of a language that let the programmer express a lot by saying a little. The type definition and type checking facility in any modern language is a good example of a powerful mechanism.

A third kind of power can come from "good" restrictions that narrow the variety of things thatcan be written. If a restriction can eliminate troublesome or meaningless sentences automatically, then programmers will not have to check, explicitly, whether such meaningless sections occur in their programs. Pascal programs rarely run wild and destroy memory. But C and FORTH programs, with unrestricted pointers and no subscript bounds checking, often do so. A language should have enough good restrictions so that the programmer and translator can easily distinguish between a meaningful statement and nonsense.

For example, an attempt to access an element of an array with a subscript greater than the largest array subscript is obviously meaningless in any language. Some languages have run-time checks that array access is within array bounds. They are safe in this aspect and cannot lead to destruction of information.

No such array bounds check is done in C. It can destroy vital, unrelated information belonging to variables allocated before or after the array. This has allowed for development of various kinds of maleware (worms, trojans). Network-distributed malware can disable computer systems by flooding their processing queues with duplicates of itself, preventing the processing of normal programs.

As is oftenthe case, a single feature is both useful and dangerous. In that case, a language designer has to make a value judgement about the relative importance of the feature and the danger in that feature. In designing C, Kernighan and Ritchie clearly felt that address manipulation was vital, and decided that the dangers of dangling pointers would have to be avoided by careful programming, not by imposing general restrictions on pointers. (however, you can have your cake and it it too... Also, careful programming in C is an oximoron, you can either be carefull or program in C).

### Principles for Evaluating a Design

Judging features that a language includes or excludes. These judgments will be based on a small set of principles.

**Principle of Frequency**. The more frequently a language feature will be used, the more convenient its use should be, and the more lucid its syntax should be. An infrequently used feature can be omitted from the core of the language and/or be given a long name and less convenient syntax. That's why Haskell has no symbol for function application (but a space) and function composition is a dot. OO languages use dot as an member access. PHP uses it for string concatenation (!?! weirdo).

**Principle of Locality**. A good language design enables and encourages, perhaps even enforces, *locality of effects*. The further the effects of an action reach in time (elapsed during execution) or in space (measured in
pages of code), the more complex and harder it is to debug a program. The further an action has influence, the harder it is to remember relevant details, and the more subtle errors seem to creep into the code.

To achieve locality, the use of global variables should be minimized or eliminated and all transfers of control should be short-range. A concise restatement of this principle, in practical terms is: *Keep the effects of everything confined to as local an area of the code as possible*.

**Global Variables**. Global variables provide a far more important example of the cost of nonlocality. A global variable can be changed or read anywhere within a program. Specifically, it can be changed accidentally in a part of the program that is far removed from the section in which it is (purposely) used. If the program were rewritten to declare this variable locally within the scope in which it is used, the distant reference would promptly be identified as an error or as a reference to a semantically distinct variable that happens to have the same name.

Among existing languages are those that provide only global variables, provide globals but encourage use of locals and parameters, and provide only parameters.

In modern functional languages there are no global variables. Actually, there are no variables and mutation at all, and parameter binding takes the place of assignment to variables. Assignment was excluded from this class of languages because it can have nonlocal effects. The result is languages with elegant, clean semantics, like Haskell.

**Principle of Lexical Coherence**. Sections of code that logically belong together should be physically adjacent in the program. Sections of code that are not related should not be interleaved. It should be easy to tell where one logical part of the program ends and another starts. A language design is good to the extent that it permits, requires, or encourages lexical coherence.

Good programming style demands that most of the work of the program be done in subroutines, and the part of the program devoted to subroutine definitions is often long. The variable declarations and code for the main program are, therefore, widely separated, producing poor lexical coherence. This is particularly pronounced in languages that require particular ordering of language elements.

**Principle of Distinct Representation**. Each separate semantic object should be represented by a separate syntactic item. Where a single syntactic item in the program is used for multiple semantic purposes, conflicts are bound to occur, and one or both sets of semantics will be compromised.

**Principle of Too Much Flexibility**.
A language feature is bad to the extent that it provides flexibility that is not useful to the programmer, but that is likely to cause syntactic or semantic errors.

**The Principle of Semantic Power**. A programming language is powerful (for some application area) to the extent that it permits the programmer to write a program easily that expresses the model, the whole model, and nothing but
the model.

**The Principle of Portability**.
A portable program is one that can be compiled by many different compilers and run on different hardware, and that will work correctly on all of them.


## Classifying Languages

Classifying Languages is tricky because a language frequently belong to more than one category. Sorting them into disjoint classes disguises real similarities among languages with different surface syntax.

### Language Families

These are not absolute, mutually exclusive categories: categorizations are approximate and families overlap heavily.

An **interactive language** is enmeshed in a system that permits easy
alternation between program entry, translation, and execution of code. We say that it operates using a REW cycle: Reads, Evaluate, Write, then wait for another input. Today, we call this REPL, Reads, Evaluate, Print, Loop. Programs in interactive languages are generally structured as a series of fairly short function and object definitions. Translation happens when the end of a definition is typed in. Programs are usually translated into some intermediate form, not into native machine code. This intermediate form is then interpreted. Today, most languages, compiled or interpreted have a REPL mode.

**Structured Languages** provide control structures that allow writing programs without using GOTO. Procedures with call-by-value parameters are supported.

Strongly Typed Languages have a pervasive type system. Objects are named, and each name has a type. Every object belongs to exactly one type (types are disjoint). The types of actual function arguments are compared to the declared types of the dummy parameters during compilation. A mismatch in types or in number of parameters will produce an error. Many strongly typed languages include an "escape hatch", that is, some mechanism by which the normal type-checking process can be evaded.

**Object-oriented Languages** are basically procedural languages with addition of objects that can easily make the code very coupled (inheritance) thereby diminishing its reuse value.

**Procedural Languages** sport an ordered sequence of statements and procedure calls that get evaluated sequentially. Statements interact and communicate with each other through variables. Storing a value in a variable destroys the value that was previously stored there (destructive assignment). State is all over the place and excessive mutability changes things under you.

**Functional Languages** are structured using pure, beautiful mathematical functions, or more preciselly, equations. There is no implicit state, no mutation, referental transparency at its highest. Composition is used to make more complex structures. The whole thing relies on math, that is on category theory. Functions are objects that can be freely manipulated, passed as parameters, composed, and so on. Permitting functions to be manipulated like other objects gives a language tremendous power and heavenly elegance.

**Pure Functional Languages** are an effort to develop functional languages in which sequences of statements, variables, and destructive assignment do not
exist at all. Values are passed from one part of a program to another by function calls and parameter binding. Often, these languages use lazy evaluation, which stands in stark contrast to most other languages, which use strict evaluation. There makes a fundamental difference.

The LISP-like languages use call-by-value parameters, and these new languages use call-by-need (lazy evaluation). A parameter is not evaluated until it is needed, and its value is then kept for future use. Call-by-need is an important semantic development, permitting the use of infinite datatypes, which are objects that are part data and part program, where the program part is evaluated, as needed, to produce the next item on the list.

The terminology used to talk about these new functional programming languages is sometimes different from traditional programming terminology. A program is an unordered series of static definitions of objects, types, and functions. "Executing a program" is replaced by "evaluating an expression" or "reducing an expression to its normal form". In either case, though, computation happens. As the field progresses, we should find languages that can compete with, still more efficient despite being "hopefully" correct, state-all-over-the-place, languages. PFL programs can be mathematically proven to be correct. Examples of PFL: ML, Miranda, Haskell.

**Parallel Languages** contain multitasking primitives that permit a program to fork into two or more asynchronous, communicating tasks that execute some series of computations in parallel. This class of languages is becoming increasingly important as highly parallel hardware develops. Parallel languages are being developed as extensions of other kinds of languages. The clean semantics of the immutable functional languages are significantly easier to generalize to parallel execution, so new parallel languages will certainly be developed as extensions of functional languages.

**Languages Specialized for Some Application** contain a complete generalpurpose programming language as their basis and, in addition, contain a set of specialized primitives designed to make it convenient to process some particular data structure or problem area.

**Systems programming languages** must contain primitives that let the programmer manipulate the bits and bytes of the underlying machine and should be heavily standardized and widely available so that systems, once implemented, can be easily ported to other machines.

**Business data processing languages** must contain primitives that give fine and easy control over details of input, output, file handling, and precision of numbers.

**Data base languages** contain extensive subsystems for handling internal files, and relationships among files. Note that this is quite independent of a good subsystem for screen and printer I/O.

**List processing languages** contain primitive definitions for a linked list data type and the important basic operations on lists. This structure has proven to be useful for artificial intelligence programming. Implementations must contain powerful operations for direct input and output of lists, routines for allocation of dynamic heap storage, and a garbage collection routine for recovery of dynamically allocated storage that is no longer accessible.

**Logic languages** are interactive languages that use symbolic logic and set theory to model computation. Prolog was the first logic language and is still the best known. Its dominant characteristics define the language class.

**Array processing languages** contain primitives for constructing and manipulating arrays and matrices. Sophisticated control structures are built in for mapping simple operations onto arrays, for composing and decomposing arrays, and for operating on whole arrays.

**String processing languages** contain primitives for input, output, and processing of character strings. Operations include searching for and extracting substrings specified by complex patterns involving string functions. Pattern matching is a powerful higher-level operation that may involve exhaustive search by backtracking. 

**Typesetting languages** were developed because computer typesetting is becoming an economically important task.

**Command languages** are little languages frequently created by extending a system’s user interface. 
