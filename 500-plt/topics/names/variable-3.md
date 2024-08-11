# Variable, name, scope
From: `Concepts of Programming Languages - 12th edition, Robert Sebesta, 2019`

A variable can be characterized as a collection of attributes, the most important of which is type, but also name, scope, lifetime.

## Names

*Names* are one of the fundamental attributes of variables. Names are also associated with subprograms, formal parameters, and other program constructs. The term *identifier* is often used interchangeably.

The following are the primary design issues for names:
- case sensitivity of names
- special words: reserved words vs keywords

FPLs allow expressions to be named. These named expressions appear like assignments to variable names in imperative languages, but are fundamentally different in that they cannot be changed. They are like the named constants of the imperative languages. Pure FPLs do not have variables that are like those of the imperative languages; however, many FPLs do include such variables.


### Name forms

A **name** is a string of characters used to identify a program's entity.

The earliest PLs used single-character names following the mathematical notation. Fortran was the first PL to brake with this tradition, allowing up to 6 characters in a name. Some PLs do not put limit on the length of names, while others do. Some PLs allow lengthtier names but only consider a fixed number of characters as the significant part (that must be different for each name).

Names (identifiers) in most programming languages have the same form: a letter followed by a string consisting of letters, digits, and underscore.

Numerous programming style have given rise to the various conventions regarding the casing of identifiers: PascalCase, camelCase, snake_case are the most popular choices, cebab-case (where dash is allowed), SCREAMING_SNAKE_CASE, etc.

Most PL are case-sensitive, while some are case-insensitive, or they allow certai nentities' names to be case-insensitive (partial case-insensitivity).

Also, most PLs allow any casing format for any entity, while some PLs require that certain entities' names start with lowercase and others with uppercase.

The most progressive language is `Agda` which allows you to use even numeric and symbolic names at the cost of disallowing arbitrary white spacing; e.g. `1+1=2` and `A→B` are valid identifiers, so expresions like `1 + 1 = 2` or `A → B` must be written with appropriate spacing.

Some languages use *sigils* that prefix a name to convey different meanings. Perl is the most famous for this where different sigils specify types (`$`, `%`, `@`). In Ruby, sigil `@` is used to indicates that the variable is an instance of a class, and `@@` that it is a class variable. In PHP, all variable names always begin with the dollar sign. In bash, the dollar sign is used only when we want to dereference a variable, otherwise a variable is declared or deleted without it. In JS, inside a class, when the sigil `#` prefixes a name it indicates a private property. In Unix, names starting with a dot are hidden by default from `ls` command.

### Special words

**Special words** are used to make programs more readable by naming actions, and they are also used to separate the syntactic parts of statements.

In most languages, special words are classified as reserved words, which means they cannot be redefined by programmers. But in some PLs (Fortran), they are **keywords**, meaning they can be redefined.

A **reserved word** is a special word of a PL that cannot be used as a name. Some PL reserve a humble set of words, while COBOL reserves 300 words!

In some PLs, names that are defined in other program units (Java packages, C++ libraries) can be made visible to a program. These names are predefined, but visible only if explicitly imported. Once imported, they cannot be redefined.

Also some PL reserve words only in specific contexts - **contextual reserved words**; outside them, the programer is free to redefine them.

## Variables

**Variables** are abstractions of the underlying memory cells.

In some cases, the characteristics of the abstractions are very close to the characteristics of the cells; e.g. an integer variable, which is usually represented directly in one or more bytes of memory. In other cases, the abstractions are far removed from the hardware, as with 3D arrays, which require a software mapping function to support the abstraction.

A variable can be characterized as a collection of attributes, the most important of which is type (the fundamental concept in programming languages), but also name, scope and lifetime.

Attributes of variables:
- name
- address
- value
- type
- lifetime
- scope
- scoping rules
- aliasing
- binding
- declaration
- binding time
- referencing environment


A program variable is an abstraction of a computer memory cell or collection of cells. Programmers often think of variables as names for memory locations, but there is much more to a variable than just a name.

A **variable** can be characterized as a 6-tuple of attributes, *(name, address, value, type, lifetime, scope)*, since this provides the clearest way to explain its various aspects.

### Names

Variable names are the most common names in programs. They were discussed above, in the general context of entity names in programs. Most variables have names. The ones that do not are discussed later.

### Address

The **address** of a variable is the machine memory address with which it is associated.

This association is not as simple as it may appear. In many languages, it is possible for the same variable to be associated with different addresses at different times during the execution of the program. For example, if a subprogram has a local variable that is allocated from the runtime stack when the subprogram is called, different calls may result in that variable having different addresses. These are in a sense different instantiations of the same variable.

(The process of *associating variables with addresses* is further discussed in Section 5.4.3. An *implementation model for subprograms and their activations* is discussed in Chapter 10)

The address of a variable is sometimes called its **l-value**, because the address is what is required when the name of a variable appears in the left side of an assignment.

It is possible to have multiple variables that have the same address. When more than one variable name can be used to access the same memory location, the variables are called **aliases**. Because there can be any number of aliases in a program, it can be very difficult to track them. Aliasing also makes program verification more difficult and parallelism practically impossible (risky to mutate aliased variables). Aliases can be created in programs in several different ways. One common way in C and C++ is with their union types.

Two *pointer variables* are aliases when they point to the same memory location. The same is true for reference variables. This kind of aliasing is a side effect of the nature of pointers and references. When a C++ pointer is set to point at a named variable, the pointer, when dereferenced, and the variable's name are aliases.

Aliasing can be created in many languages through subprogram parameters (discussed in Chapter 9). The time when a variable becomes associated with an address is important to understanding of PL (discussed in Section 5.4.3).

### Type

The **type** of a variable determines the size of any of its value. And the size determines the range of values the variable can store. Type also determines a set of operations that can be performed on its values.

### Value
