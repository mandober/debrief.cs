# Language

<!-- TOC -->

- [Communication](#communication)
- [Syntax and Semantics](#syntax-and-semantics)
- [Natural Languages and Programming Languages](#natural-languages-and-programming-languages)
    - [Structure](#structure)
    - [Redundancy](#redundancy)
    - [Using Partial Information: Ambiguity and Abstraction](#using-partial-information-ambiguity-and-abstraction)
    - [Implicit Communication](#implicit-communication)
    - [Flexibility and Nuance](#flexibility-and-nuance)
    - [Ability to Change and Evolve](#ability-to-change-and-evolve)
- [The Standardization Process](#the-standardization-process)
    - [Language Growth and Divergence](#language-growth-and-divergence)
- [Nonstandard Compilers](#nonstandard-compilers)

<!-- /TOC -->

The purpose of language is communication. A set of symbols, understood by both sender and receiver, is combined according to a set of rules, its grammar or syntax. The semantics of the language defines how each grammatically correct sentence is to be interpreted.

This is a book (The Anatomy Of Programming Languages. Alice E. Fischer, Frances S. Grodzinsky. Prentice Hall. 1993) about the structure of programming languages. For simplicity, we shall use the term "language" to mean "programming language". We will try to look beneath the individual quirks of familiar languages and examine the essential properties of language itself. Several aspects of language will be considered, including vocabulary, syntax rules, semantics, implementation problems, and extensibility.

Different languages are like tools in a toolbox: although each language is capable of expressing most algorithms, some are obviously more appropriate for certain applications than others.

Rather than accept languages as whole packages, we will be asking:
- What design decisions make each language different from the others
- Are the differences a result of minor syntactic rules, or is there an important underlying semantic issue
- Is a controversial design decision necessary to make the language appropriate for its intended use, or was the decision an accident of history
- Could different design decisions result in a language with more strengths and fewer weaknesses
- Are the good parts of different languages mutually exclusive, or could they be effectively combined
- Can a language be extended to compensate for its weaknesses

## Communication

A natural language is a symbolic communication system that is commonly understood among a group of people.

Each language has a set of symbols that stand for objects, properties, actions, abstractions, relations, and the like. A language must also have rules for combining these symbols. A speaker can communicate an idea to a listener only if they have a common understanding of enough symbols and rules. Communication is impaired when speaker and listener interpret a symbol differently. In this case, either speaker and/or listener must use feedback to modify their understanding of the symbols until commonality is achieved. This happens when we learn a new word or a new meaning for an old word, or correct an error in our idea of the meaning of a word.

English is for communication among people. Programs are written for both computers and people to understand. Using a programming language requires a mutual understanding between a person and a machine. This can be more difficult to achieve than understanding between people because machines are so much more literal than human beings.

The meaning of symbols in natural language is usually defined by custom and learned by experience and feedback. In contrast, programming languages are generally defined by an authority. For a computer to "understand" a human language, we must devise a method for translating both the syntax and semantics of the language into machine code. Language designers build languages that they know how to translate.

On the other hand, if computers were the only audience for our programs we might be writing code in a language that was trivially easy to transform into machine code. But a programmer must be able to understand what he is writing, and a human cannot easily work at the level of detail that machine language represents. So we use computer languages that are a compromise between the needs of the speaker (programmer) and listener (computer).

Declarations, types, symbolic names, and the like are all concessions to a human's need to understand what someone has written. The concession we make for computers is that we write programs in languages that can be translated with relative ease into machine language. These languages have limited vocabulary and limited syntax. Most belong to a class called *context-free languages*, which can be parsed easily using a stack. Happily, as our skill at translation has increased, the variety and power of symbols in our programming languages have also increased.

The language designer must define sets of rules and symbols that will be commonly understood among both human and electronic users of the language. The meaning of these symbols is generally conveyed to people by the combination of a formal semantic description, analogy with other languages, and examples. The meaning of symbols is conveyed to a computer by writing small modules of machine code that define the action to be taken for each symbol. The rules of syntax are conveyed to a computer by writing a compiler or interpreter.

To learn to use a new computer language effectively, a user must learn exactly what combinations of symbols will be accepted by a compiler and what actions will be invoked for each symbol in the language. This knowledge is the required common understanding. When a human communicates with a machine, he must modify his own understanding until it matches the understanding of the machine, which is embodied in the language translator. Occasionally the translator fails to "understand" a phrase correctly, as specified by the official language definition. This happens when there is an error in the translator. In this case the "understanding" of the translator must be corrected by the language implementor.


## Syntax and Semantics

All languages have syntax and semantics. The **syntax** of a language is a set of rules stating how language elements may be grammatically combined. Syntax specifies how individual words may be written and the order in which words may be placed within a sentence.

The **semantics** of a language define how each grammatically correct sentence is to be interpreted. In a given language, the meaning of a sentence in a compiled language is the object code compiled for that sentence. In an interpreted language, it is the internal representation of the program, which is then evaluated.

*Semantic rules* specify the meaning attached to each placement of a word in a sentence, the meaning of omitting a sentence element, and the meaning of each individual word. A programmer has an idea that he wishes to communicate. This idea is the programmer's *semantic intent*. The programmer must choose words that have the correct semantics so that the computer can correctly interpret the programmer's semantic intent.

## Natural Languages and Programming Languages

The *objects* and *functions* of a program correspond to the nouns and verbs of natural language. We use the term "functions" to mean functions, procedures, operators, routines, commands and similar; objects include variables, constants, records, etc.

There are a number of language traits that determine the character of a language. There is a certainly a difference between English and programming languages, but not as great as it might seem at first, and not as great as it was in the beginning of computing. With time, this difference decrease as programming languages continue to evolve.

Current programming language research is directed toward:
- Easing the constraints on the order in which statements must be given
- Increasing the uses of symbols with multiple definitions (overloading)
- Permitting the programmer to talk about and use an object without knowing details of its representation (abstraction)
- Facilitating the construction of libraries, thus increasing the number of words that can be understood "implicitly"
- Increasing the ability of the language to express varied properties of the problem situation, especially relationships among classes of objects.

### Structure

Programs must conform to very strict structural rules. These govern the order of statements and sections of code, and particular ways to begin, punctuate, and end every program. No deviation from these rules is permitted by the language definition, and this is enforced by a compiler.

The structure of English is more flexible and more varied, but rules about the structure of sentences and of larger units do exist. Deviation from the rules of structure is permitted in informal speech, and understanding can usually still be achieved. A human listener usually attempts to correct a speaker's obvious errors. A human uses common sense, context, and poorly defined heuristics to identify and correct such errors.

Most programming language translators are notable for their intolerance of a programmer's omissions and errors. A compiler will identify an error when the input text fails to correspond to the syntactic rules of the language (a "syntax error") or when an object is used in the wrong context (a "type error").However, compilers can rarely correct anything complex. (Nor they should; they should only point to it. Implicitly correcting programmer's mistake yields nothing but pain).

However, there are compilers that actually do attempt to correct the programmer's errors by adding, changing, respelling, or ignoring symbols so that the erroneous statement is made syntactically legal. If the attempted correction causes trouble later, the compiler may return to the line with the error and try a different correction. This effort has had some success; errors such as misspellings and errors close to the end of the code can often be corrected and enable a successful translation. Techniques have been developed since the mid-1970s and are still being improved. Such error-correcting compilers are uncommon because of the relatively great cost for added time and extra memory needed.

### Redundancy

The syntactic structure of English is highly redundant. A human uses the redundancy in the larger context to correct errors.

Programming languages are also partly redundant, and the required redundancy serves as a way to identify errors. For example:

```c
int array[3] = {11, 12, 13, 14};
```


### Using Partial Information: Ambiguity and Abstraction

English permits ambiguity, that is, words and phrases that have dual meanings. The listener must disambiguate the sentence, using context, and determine the actual meaning of the speaker. Ambiguity is sometimes used deliberately - the pun is a statement with two meanings, both intended by the speaker, where one meaning is usually funny.

To a very limited extent, programming languages also permit ambiguity. The operator plus is ambigous considering only the syntactic surface, and the compiler needs to examine involved types to resolve the ambiguity. OO languages permit programmer-defined procedure names with more than one meaning (polymorphism). Many languages are block-structured. They permit the user to define contexts of limited scope, called blocks. The same symbol can be given different meanings in different blocks. Context is used, as it is in English, to disambiguate the meaning of the name.

The primary differences here are that "context" is defined very exactly in each programming language and quite loosely in English. Also most programming languages permit only limited ambiguity.

English supports *abstraction*, that is, the description of a quality apart from an instance (universals?). Older programming languages do not support this kind of abstraction. They require that all an object's properties be specified when the name for that object is defined.

Some languages support very limited forms of abstraction by allowing names to be defined for generic objects, some of whose properties are left temporarily undefined. Later, the generic definition must be instantiated by supplying actual definitions for those properties. The instantiation process produces fully specified code with no remaining abstractions which can then be compiled in the normal way.

Most OO languages have as their primary design goal support for abstraction in the Platonic sense, with ideal forms as classes and real instances as objects instantiated form those classes, possibly further augmented and specialized.

### Implicit Communication

English permits some things to be understood even if they are left unsaid. When we "read between the lines" in an English paragraph, we are interpreting both explicit and implicit messages. Understanding of the explicit message is derived from the words of the sentence. The implicit message is understood from the common experience of speaker and listener. People from different cultures have trouble with implicit communication because they have inadequate common understanding.

Some things may also be left implicit in programming languages (e.g. type information). A programmer learning a new language must learn its implicit assumptions, more commonly called *defaults*. Unfortunately, when a programmer relies on defaults to convey meaning, the compiler cannot tell the difference between the purposeful use of a default and an accidental omission of an important declaration. Many experienced programmers use explicit declarations rather than rely on defaults. Stating information explicitly is less error prone and enables a compiler to give more helpful error comments.

### Flexibility and Nuance

English is very flexible: there are often many ways to say something. On the other hand, PL, while they do have same flexibility, it is not as wide as in natural languages. Alternate ways of saying something in English usually have slightly different meanings, and subtlety and nuance are important. When different statement sequences in a programming language express the same algorithm, we can say that they have the same meaning. However, they might still differ in subtle ways, such as in the time and amount of memory required to execute the algorithm. We can call such differences *nuances*.

The nuances of meaning in a program are of both theoretical and practical importance. We are content when the work of a beginning programmer has the correct result (a way of measuring its meaning). As programmers become more experienced, however, they become aware of the subtle implications of alternative ways of saying the same thing. They will be able to produce a program with the same meaning as the beginner's program, but with superior clarity, efficiency, and compactness.

### Ability to Change and Evolve

Expressing an idea in any language, natural or artificial, can sometimes be difficult and awkward. A person can become "speechless" when speaking English. Words can fail to express the strength or complexity of the speaker's feelings. Sometimes a large number of English words are required to explain a new concept. Later, when the concept becomes well understood, a word or a few words suffice. English is constantly evolving; old words become obsolete and new words and phrases are added.

Programming languages also evolve. A PL might start small and expand through time with demand for new features. Old constructs may become obsolete or completely dropped. As applications of computers change, languages are extended to include words and concepts appropriate for the new applications. Many dialects of the original language emerge because implementors are inspired to add or redesign language features.

Programs written in one dialect must be modified to be used by people whose computer "understands" a different dialect. When this happens we say that a program is **nonportable**. The cost of rewriting programs makes non-standardized programming languages unattractive to commercial users. Lack of standardization can also cause severe difficulties for programmers and publishers: the language specifications and reference material must be learned again and rewritten for each new dialect.

## The Standardization Process

Once a language is in widespread use, it becomes very important to have a complete and precise definition of the language so that compatible implementations may be produced for a variety of hardware and system environments. The standardization process was developed in response to this need.

A **language standard** is a formal definition of the syntax and semantics of a language. It must be a complete, unambiguous statement of both.

Language aspects that are defined must be defined clearly, while aspects that go beyond the limits of the standard must be designated clearly as "undefined". A language translator that implements the standard must produce code that conforms to all defined aspects of the standard, but it is permitted to produce any convenient translation for an undefined aspect.

The authority to define an unstandardized language or to change a language definition may belong to the individual language designer, to the agency that sponsored the language design, or to a committee.

When a standards organization decides to sponsor a new standard for a language, it convenes a committee of people from industry and academia who have a strong interest in and extensive experience with that language. The standardization process is not easy or smooth. The committee must decide which dialect, or combination of ideas from different dialects, will become the standard. Committee members come to this task with different notions of what is good or bad and different priorities. Agreement at the outset is rare. The process may drag on for years.

After a standard is adopted by one standards organization (ISO or ANSI), the definition is considered by the other. In the best scenario, the new standard is accepted by the second organization; in the worst scenario, it is modified before acceptance, which may cause the split in the language. The first standard for a language often clears up ambiguities, fixes some obvious defects, and defines a better and more portable language (ANSI C, ANSI LISP).

Programmers writing new translators for this language must then conform to the common standard, as far as it goes. Implementations may also include words and structures, called *extensions*, that go beyond anything specified in the standard.

### Language Growth and Divergence

After a number of years, language extensions accumulate and actual implementations diverge so much that programs again become nonportable. These extensions are similar in intent and function but differ in detail. A program
that uses the extensions is nonportable and the one that doesn't use extensions is severely limited.

When a standardized language has several divergent extensions in common use, the sponsoring standards agency may convene a new committee to reexamine and restandardize the language. The committee will consider the collection of extensions from various implementations and decide upon a new standard, which usually includes all of the old standard as a subset.

Thus there is a constant tension between standardization and diversification. As our range of applications and our knowledge of language and translation techniques increase, there is pressure to extend our languages. Then the dialects in common use become diversified. When the diversity becomes too costly, the language will be restandardized.

## Nonstandard Compilers

It is common for compilers to deviate from the language standard. There are 3 major kinds of deviations: extensions, intentional changes and compiler bugs.

An **extension** is a feature added to the standard. *True extensions* provide new capabilities for things that are not covered by the standard but do not change the basic nature of the language.

Sometimes compiler writers believe that a language, as it is officially defined, is defective; that is, some part of the design is too restrictive or too clumsy to use in a practical application environment. In these cases the implementor often redefines the language, making it nonstandard and incompatible with other translators. This is an **intentional change**.

A **compiler bug** occurs where, unknown to the compiler writer, the compiler implements different semantics than those prescribed by the language standard. This ddeviation also includes deliberate "bugs" such as incorrect implementation of the mod operator, a practice that is spread across various languages. Mathematically, mod operator yields a remainder after the integer division in such way that it is never negative: n = dq + r with 0 <= r < q. Many compilers sidestep this complexity by ignoring the sign of the remainder.

Whether or not we agree with the requirements of a language standard, we must think carefully before using nonstandard features. Every time we use a nonstandard feature or one that depends on the particular bit-level implementation of the language, it makes a program harder to port from one system to another and decreases its potential usefulness and potential lifetime. Programmers who use nonstandard features in their code should segregate the nonstandard segments and thoroughly document them.
