# Fundamental elements of programming languages

## Names and Variables

https://www.radford.edu/~nokie/classes/380/Chapter_5.html

* Names
  - identifiers, labels
  - alphabetic, symbolic
  - keywords
  - reserved words
  - predefined words
* Memory organization
  - stack
  - heap
  - static
* Binding
* Properties of variables
  - Name
  - Address
    - Alias
  - Value
  - Type
    - Static and dynamic
    - Explicit and implicit declarations
    - Type compatibility
    - Type inference
    - Type checking
  - Lifetime
    - Static
    - Stack dynamic
    - Heap dynamic: explicit and implicit
  - Scope: static and dynamic
* Referencing environments
* Named constants and initialization


## Names

- names are labels for language elements; while names may not be the only way to refer to code elements, they are the most convenient mechanism.
- language elements that can be named include variables, functions, constants, data structures, subroutines, code blocks, modules, classes, packages, etc.
- most PLs have particular naming conventions in the way they encourage or enforce naming things: use of letter casing, punctuations, special chars.
- some PL restrict the length of identifiers, some take only a portion of an identifier as "significant characters", other PLs allow max freedom
* Design issues for names: max length? are spec characters allowed? case sensitivity? are special words reserved words or keywords?
* Name Design Issue: Length. Issues: If too short, they cannot be connotative. Are all characters significant? Language examples: FORTRAN I: maximum 6; COBOL: maximum 30; FORTRAN 90 and ANSI C: maximum 31; Ada and Java: no limit, and all are significant; C++: no limit, but implementors often impose one.
* Name Design Issue: Connectors, "_". Pascal, Modula-2, and FORTRAN 77 don't allow. Others do. Java uses for constants: eg EXIT_ON_CLOSE for javax.swing.JFrame. Ada restricts it's use: must be preceded and followed by letter or digit. Camel notation more common now: eg javax.Swing.JFrame.getContentPane()
* Name Design Issue: Case Sensitivity. Is case significant in a name? C family and many scripting languages: Yes. Algol, Pascal, Ada: No. Disadvantage: readability (names that look alike are different). Advantage: With well defined conventions and good type checking expressiveness is increased (eg Node node = new Node()). In C++ and Java predefined names are mixed case (IndexOutOfBounds) so user can not stick with all one case.
* Name Design Issue: Special Words. Special words: names that have predefined meaning in a program. Examples: function, for, while, end, true, false, Boolean, Character.
* Terminology used in text:
  - Keyword: a word that has special meaning in certain contexts. FORTRAN example: Real Length. Real = 3.4. 
  - Reserved word: a special word that cannot be used as a user-defined name. Examples: for, while
  - Predefined name: have predefined meaning, but can be redefined by user
* Keyword and Reserved Word both refer to names that have special meaning and that cannot be redefined by the user (eg for, while, int)
* Predefined Identifiers are words that have a built in meaning but that can be redefined by the user (eg Ada: true, false, boolean, integer; Java: System??)
* Implementation of special words: Keywords/reserved words are normally built into the compiler (eg int, float). Predefined identifiers are typically defined in standard packages package (eg Boolean). FORTRAN: A Convention Breaker. FORTRAN (pre F90): first compilation step was to remove all blanks (except those in strings). Allowed programmer to write `Sum of Salaries = Sum of Salaries + Current Salary`. Caused more problems then it solved.
* Implicit declarations: Define Integer, Real, While to be variables. Early versions were fixed format

* Memory Organization: Before studying variables, we consider how memory is organized. Memory has three areas (and what they normally hold): *stack*: the following are allocated and deallocated on the stack using a stack protocol (ie push on call, pop on return): return address, parameters, local variables. *heap*: typically accessed via a pointer (eg java/ada p = new Foo()), *static area*: C static variables, ada variables declared in a package (wordpkg wordlength) - exist for life of program - java ???
- Actual organization: static and heap at low addresses, heap at high addresses

* Binding
A binding is an association, such as between an attribute and an entity, or between an operation and a symbol
Example: associate a variable with an address or a value
Example: associate the symbol + with integer addition, float addition, and string concatenation

* Binding Times
Binding time is the time at which a binding takes place.

Possible binding times:
1. *Language design time* e.g., bind operator symbols to operations
    e.g., bind operator symbols to operations
    e.g., bind integer type to a size (ie Java)
2. *Language implementation time*:
    e.g., bind integer type to a size (ie Ada)
    e.g.  bind floating point type to a size and a representation
3. *Compile time* e.g., bind a variable to a name and to a specific type
4. *Link time* e.g. bind routine call to an address
5. *Load time* load time is when an executable file is loaded into memory immediately prior to execution (e.g. bind a C static variable to a memory cell)
6. *Runtime*
    e.g. bind a (nonstatic) local variable to a memory cell
    e.g. Python: bind a value and its type to a variable

* Kinds of Bindings: Bindings can be static and dynamic

* static: if it first occurs before run time, and it remains unchanged throughout program execution.
* dynamic: if it first occurs during runtime or can change during runtime


* Chart of kinds of bindings:

Changeability/ First Occurs          | Before runtime | During runtime
Remains unchanged throughout runtime | Static         | Dynamic
Can change during runtime            | Dynamic        | Dynamic

* Variables: A variable is an abstraction of a memory cell

Variables can be characterized (at any point in time) by 6 attributes:
1. name - a variable is not a name, but a named value container
2. address
3. value
4. type
5. lifetime
6. scope

- Values of these attributes may change during program execution.
- The connection of a value to an attribute is called a *binding*.

## Variable Attribute 1: Name
    Not all variables have a name (ie anonymous variables)
    Where do we see anonymous variables?

## Variable Attribute 2: Address
    Address - the location in memory with which a variable is associated

There is no simple fixed connection between a variable and it's address:
Some variables have different addresses at different times during execution
What variables are these?
Different variables; with the same name defined at different places in a program typically have different addresses (obviously)
Several different variables may all have the  same address
The names of such variables are called aliases


## Aliases

- Aliases are variables represented as containers for the same memory location. For example, if `a = 5` and `b = a` then a and b are *aliased*.

- Aliases are harmful to readability; a code reviewer must be aware of them all.

- Some of the original justifications for aliases are no longer as common: memory is no longer as scarce, dynamic allocation is now part of the language, variant records are somewhat replaced with objects and polymorphism.

Allowed two variables to share memory

## Variable attribute #3: Value

Contents of the variable

Contents may be in one or more physical memory cells

The contents consists of a bit string that is interpreted as implied by the variable's type

Sometimes we distinguish between two kinds of value for a variable:
l-value: the variable's address
r-value: the contents of that address
eg: X = X + 1
the term "value" normally refers to the r-value
eg: an Ada out parameter could be passed by l-value
Can you have an r-value on the left of an assignment?

Variable Attribute 4: Type
The type of a variable
determines the set of values that the variable can hold and the set of operations that are defined for values of that type
provides an interpretation for the bit string held by the variable (ie the variables's value)

What is a type: a set of ... and a set of ...

Type issues:
primitive (ie built-in) or user defined
primitive (ie unstructured) or structured

declaration of new types

binding a type to a variable

type equivalence
type compatibility

type checking

5.4 Static or Dynamic Type Binding
Type binding issues:
static or dynamic
implicit or explicit declarations

Examples

Static binding: First bound before runtime and cannot change
Dynamic binding: First bound during runtime or can change
Explicit declarations
Ada, Java
???
Implicit declarations

Perl, Python, Ruby

Def: An explicit declaration is a program statement used for declaring the types of variables

Def: An implicit declaration is a default mechanism for specifying types of variables (typically the first appearance of the variable in the program determines the type)
 FORTRAN, PL/I, BASIC, and Perl provide implicit declarations
Advantage: writability
Disadvantage: readability

5.4 Dynamic Type Binding
Dynamic Type Binding (Perl, APL, JavaScript, SNOBOL)
Type specified through an assignment statement
 e.g. python: x = [2, 4.33, 6, 8]; ... x = 17.3;

Advantage: flexibility

Disadvantages:
High cost (dynamic type checking and interpretation)
Type error detection by the compiler is difficult

Type Inference
Rather than by assignment statement, types are determined from the context

Examples:
for i in 1 .. 10 loop
inference: i integer
for c in 'a' .. 'z'
inference not possible: c character or wide character

fun circumference(r) = 3.14159 * r * 4;
inference: r real
fun times10(x) = 10 * x;
inference: x int
fun square(x) = x * x;
inference: x int (default numeric)

Most powerfully used in functional Languages (eg ML, Miranda, and Haskell)
What type inferred here: fac(x) = if x = 0 then 1 else x * fac(x-1)
int → int

What inferred here: map(f, L) = f(head(L)) + map(f, tail(L))
((a → b), [a]) → [b]

Type Checking
Ensure that operands of an operation are compatible (ie correct) for the operation

An operand of an operation is correct if the operation takes operands of a specific type, and the operand is either
a value in that type or
a value that can be coerced into the type

Type error: application of an operator to an operand of an incorrect type

Type checking is done to avoid type errors

Static type bindings makes it possible to do static type checking

Dynamic binding requires dynamic type checking

Polymorphism leads to dynamic type checking


5.6 Strong Typing
A language is strongly typed if it catches all type errors
Typically each name has a single type that is known at compile time
This requirement does not handle the case that a given address can be used to store values of different types at the same time (why is this a problem)

Advantage of strong typing: allows the detection of the misuses of variables that result in type errors

Language examples:
FORTRAN 77 is not: parameters, EQUIVALENCE
Pascal is not: variant records
C and C++ are not: parameter type checking can be avoided; unions are not type checked
Java strongly typed, but has lots of implicit conversions
Python strongly typed, but lots of implicit conversions

Coercion rules strongly affect strong typing--they can weaken it considerably since fewer errors are caught
eg int + float is coerced to float + float even though it might be an error (C++ versus Ada)

Although Java has just half the assignment coercions of C++, its strong typing is still far less effective than that of Ada

5.7 Type Compatibility
Our concern is primarily for structured types
Def: Type compatibility by name means the two variables have compatible types if they are in either the same declaration or in declarations that use the same type name
Easy to implement but highly restrictive:
Subranges of integer types are not compatible with integer types
Formal parameters must be the same type as their corresponding actual parameters (Pascal)
Def: Type compatibility by structure means that two variables have compatible types if their types have identical structures
More flexible, but harder to implement

## 5.7 Type Compatibility

Consider the problem of two structured types:
Suppose they are circularly defined
Are two record types compatible if they are structurally the same but use different field names?
Are two array types compatible if they are the same except that the subscripts are different? (e.g. [1..10] and [-5..4])
Are two enumeration types compatible if their components are spelled differently?
With structural type compatibility, you cannot differentiate between types of the same structure (e.g. different units of speed, both float)
Language examples:
Pascal: usually structure, but in some cases name is used (formal parameters)
C: structure, except for records
Ada: restricted form of name
Derived types allow types with the same structure to be different
Anonymous types are all unique, even in: A, B : array (1..10) of INTEGER:

Variable Attribute 5: Lifetime
Storage Bindings & Lifetime
Allocation - getting a cell from some pool of available cells
Deallocation - putting a cell back into the pool
Def: The lifetime of a variable is the time during which it is bound to a particular memory cell

5.4 Categories of lifetimes
Categories of variables by lifetimes
Static
Stack-dynamic
Explicit heap dynamic
Implicit heap dynamic
Static--bound to memory cells before execution begins and remains bound to the same memory cell throughout execution. e.g. all FORTRAN 77 variables, C static local variables, C global variables
Allocated in static area
Advantages: efficiency (direct addressing), history-sensitive subprogram support
Disadvantage: lack of flexibility (no recursion)

Stack-dynamic--Storage bindings are created for variables when their declaration statements are elaborated.
Allocated on stack using a stack protocol that reflects the sequence of calls
If scalar (ie not an array), all attributes except address are statically bound e.g. local variables in C subprograms and Java methods
Advantages:
allows recursion;
conserves storage
Disadvantages:
Overhead of allocation and deallocation
Subprograms cannot be history sensitive
Inefficient references (indirect addressing)

Explicit heap-dynamic--Allocated and deallocated by explicit directives, specified by the programmer, which take effect during execution
Allocated, of course, on the heap
Java example: Foo f  = new Foo(1, 2);
Ada example: f: FooPtr = new FooPtr'(1, 2);

Object on the heap is accessed only via pointers or references e.g. dynamic objects in C++ (via new and delete) all objects in Java
Advantage: provides for dynamic storage management
Disadvantage: inefficient and unreliable

Implicit heap-dynamic--Allocation and deallocation caused by assignment statements e.g. all variables in APL; all strings and arrays in Perl and JavaScript
Advantage: flexibility
Disadvantages:
Inefficient, because all attributes are dynamic
Loss of error detection

Lifetimes and Deallocation
Static:
Stack dynamic
Heap: implicit
Heap explicit: user disposes, garbage, memory leak, garbage collection


Variable Attribute 6: Scope
Def: The scope of a variable is the range of statements over which it is visible

The scope rules of a language determine how a specific reference to a name is associated with a specific variable (typically to a specific variable declaration)

Blocks
Scopes are controlled using blocks

A block is a means of creating a nested scope inside another program unit

Blocks were first used in ALGOL 60

Examples:
C, C++, Java:
for (...) 
{ 
   int index; 
   ... 
} 
Ada:
for i in ... loop 
   ...
end loop;

declare
   X: Integer; 
begin 
   ... 
end; 

Key issue: dealing with nonlocal variables

Local and Nonlocal Variables
Def: The local variables of a program unit (ie routine or method or Ada package or java class) are those that are declared there

Def: The nonlocal variables of a program unit are those that are visible but not declared there

Nonlocal variables for block X can be one of the following:
Declared in X's outer blocks

Declared in units used by X (eg Ada packages, java classes and packages, C++ classes etc)

Declared in a parent class of X's class

Look at each in turn

Nonlocals in outer blocks
Two possible scoping mechanisms:
Static scope
Dynamic scope

Outer Blocks and Static Scope Rules
Static scope: names are related to variables based on program text (what else would it be?  See later)

To connect use of a name to a particular variable, you (or the compiler) must find the appropriate declaration

Search process: search nested declarations, first locally, then in increasingly larger enclosing scopes, until one is found for the given name

The enclosing static scopes (to a specific scope) are called its static ancestors; the nearest static ancestor is called astatic parent

5.9 Referencing Environments
Def: The referencing environment of a statement is the collection of all variables that are visible in the statement

In a static scoped language, that is the local variables plus all of the visible variables in all of the enclosing scopes (See book example p. 208)
Reference environment is used at compile time to generate code to access locals and nonlocals

In a dynamic-scoped language, the referencing environment is the local variables plus all visible variables in all active subprograms (See p. 209)
A subprogram is active if its execution has begun but has not yet terminated

Nonlocals and Hiding
Nonlocal variables inside a unit are hidden when there is a "closer" variable with the same name
Many languages allow access to these "hidden" variables
In Ada: unit.name
Example:
    procedure outer
        a: integer;
    begin
        inner: declare
            a: integer;
        begin
            put(outer.a + inner.a);
        end inner;
    end outer;
    
In C++: class_name::name

Referencing environments and active routines
Example p235
    procedure Example
        a, b: integer;

        procedure sub1 is
            x, y: integer;
        begin -- sub1
            ...  --   point 1: x, y of sub1; a, b of example
        end sub1;

        procedure sub2 is
            x: integer;

            procedure sub3 is
                x: integer;
            begin  -- sub3
                ...   -- point 2: x of sub3(sub2 x hidden), a, b of example
            end sub3;

        begin -- sub2
            ...  -- point 3 
        end sub2;

    begin -- example
        ... -- point 4: ???
    end example;
    

Referencing Envts and Dynamic Scope
    proc main is
        c, d: integer

        proc sub1 is
            a, b: integer
        begin  -- sub1
            ... -- point 1: a, b of sub1, c of sub2, d of main ( c of main and b of sub2 hiddent)
        end sub1;

        proc sub2 is
            b, c: integer
        begin  -- sub2 
            ... -- point 2: b and c of sub2, d of main, (c of main hidden)
            sub1;
        end sub2;

        ... -- point 3  c and d of main
        sub2;
    end main;

        
    
5.8 Nonlocal Scope and Variables Declared in Other Units
Typically libraries of constants

All instance variables should be private


Dynamic Scope
Based on calling sequences of program units, not their textual layout (temporal versus spatial)

References to variables are connected to declarations by searching back through the chain of subprogram calls that forced execution to this point

Dynamic Scope Example
Example:
       
    procedure main is
        x: integer;
        procedure sub2 is
        begin
            put(x);
        end sub1;

        procedure sub1 is
            x: integer;
        begin
            sub2;
        end sub1;
    begin -- main
       sub1; 
    end main;
Static scoping - reference to x is to main's x

Dynamic scoping - reference to x is to sub1's x
Evaluation of Dynamic Scoping:
Advantage: convenience
Disadvantage: poor readability
Languages that use static scope: APL, early lisps.  JavaScript and Common Lisp can use static or dynamic scope.  Perl uses static and a form of dynamic.

5.9 Scope and Lifetime
Scope and lifetime are sometimes closely related, but are different concepts!!
Consider a static variable in a C or C++ function

5.11 Named Constants
Def: A named constant is a variable that is bound to a value only once, typically when it is bound to storage
Advantages: readability and modifiability
One use is to parameterize a program or a program unit
Languages:
Pascal: literals only
FORTRAN 90: constant-valued expressions
Ada, C++, and Java: expressions of any kind

Issues:
The binding of values to named constants can be either static (called manifest constants) or dynamic
Must a value be bound to a constant when it is bound to storage (eg Ada vs Java)

5.12 Variable Initialization
Def: The binding of a variable to a value at the time it is bound to storage is called initialization
Initialization is usually done on the declaration statement e.g., Ada SUM : FLOAT := 0.0;

Static initialization:
compile time
Only allows use of values known at CT
Dynamic initialization
Run time
Allows use of values determined at RT
Example: swap routine
