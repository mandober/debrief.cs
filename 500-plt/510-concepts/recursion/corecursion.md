# Corecursion

https://en.wikipedia.org/wiki/Corecursion

In CS, *corecursion* is a type of operation that is dual to recursion.

*Recursion works analytically*; it starts with a data structure further from the base case, and proceeds to decompose it into the smaller substructures, repeating this process until it reaches the base case.

On the other hand, *corecursion works synthetically*; it starts from the base case and builds upon it, iteratively producing more structure that is further and further removed from the base case.

In bbrief, corecursive algorithms use the data that they themselves produce, bit by bit, as it becomes available and needed, to produce further bits of data.

A similar but distinct concept is *generative recursion* which may lack a definite "direction" inherent in corecursion and recursion.

Where recursion allows programs to operate on arbitrarily complex data, so long as they can be reduced to simple data (base cases), corecursion allows programs to produce arbitrarily complex and potentially infinite data structures, such as streams, so long as it can be produced from simple data (base cases) in a sequence of finite steps. Where recursion may not terminate, never reaching a base state, corecursion starts from a base state, and thus produces subsequent steps deterministically, though it may proceed indefinitely (and thus not terminate under strict evaluation), or it may consume more than it produces and thus become non-productive. Many functions that are traditionally analyzed as recursive can alternatively, and arguably more naturally, be interpreted as corecursive functions that are terminated at a given stage, for example recurrence relations such as the factorial.

Corecursion can produce both finite and infinite data structures as results, and may employ self-referential data structures. Corecursion is often used in conjunction with lazy evaluation, to produce only a finite subset of a potentially infinite structure (rather than trying to produce an entire infinite structure at once). Corecursion is a particularly important concept in functional programming, where corecursion and codata allow total languages to work with infinite data structures.
