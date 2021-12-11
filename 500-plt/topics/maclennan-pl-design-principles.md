# MacLennan's Principles of Language Design

Principles of Programming Languages - by MacLennan, 1987


Abstraction
: Avoid requiring something to be stated more than once, factor out the recurring pattern.

Automation
: Automate mechanical, tedious, error-prone activities.

Localized Cost
: Users should only pay for what they use, avoid distributed costs.

Manifest interface
: All interfaces should be apparent (manifest) in the syntax.

Orthogonality
: Independent functions should be controlled by independent mechanisms.

Preservation of Information
: The language should allow the representation of information that the user might know and that the compiler might need.

Syntactic Consistency
: Similar things should look similar, different things should look different.

Labeling
: Avoid arbitrary sequences more than a few items long; do not require the user to know the absolute position of an item in a list. Instead, associate a meaningful label with each item and allow the items to occur in any order.

Information Hiding
: The language should permit modules designed so that 1. the user has all of the information needed to use the module correctly, and nothing more; 2. the implementor has all of the information needed to implement the module correctly, and nothing more.

Structure
: The static structure of the program should correspond in a simple way with the dynamic structure of the corresponding computations.

Zero-One-Infinity
: The only reasonable numbers are zero, one, and infinity.

Security
: No program that violates the definition of the language, or its own intended structure, shoud escape detection.

Defense in Depth
: Have a series of defenses so that if an error isn't caught by one, it will probably be caught by another.

Portability
: Avoid features or facilities that are dependent on a particular machine or a small class of machines.

Simplicity
: A language shoud be as simple as possible. There should be a minimum number of concepts with simple rules for their composition.

Regularity
: Regular rules, without exceptions are easier to learn, use, describe, and implement.
