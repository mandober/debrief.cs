# Computably enumerable set

https://en.wikipedia.org/wiki/Computably_enumerable_set

Synonyms:
- computably enumerable (c.e.)
- recursively enumerable (r.e.)
- semidecidable
- partially decidable
- listable
- provable
- Turing-recognizable 

(abbreviations "c.e." and "r.e." are often used, even in print)


In computability theory, 
a set `S` of natural numbers is **computably enumerable** if 
>there is an algorithm such that 
>the set of input numbers 
>for which the algorithm halts 
>is exactly `S`.

Or, equivalently, if 
>there is an algorithm that enumerates the members of `S`.

That means that its output is 
a list of all the members of `S`: 
`s1, s2, s3, …` 
If `S` is infinite, this algorithm runs forever.

The first condition suggests why the term "semidecidable" is sometimes used. More precisely, if a number is in the set, one can decide this by running the algorithm, but if the number is not in the set, the algorithm diverges, and no information is returned.

A set that is "completely decidable" is a *computable set*.

The second condition suggests why the phrase "computably enumerable" is used.

In computational complexity theory, the complexity class containing all computably enumerable sets is `RE`.

In recursion theory, the lattice of c.e. sets under inclusion is denoted `𝓔`.

## Formal definition

A set `S` of natural numbers is called **computably enumerable** 
if there is a *partial computable function* 
whose domain is exactly `S`, 
meaning that the function is defined 
iff its input is a member of `S`.



* Computably enumerable sets and undecidability - YouTube
https://www.youtube.com/watch?v=Ox0tD58DTG0&list=PL_vIhjXh1UTqFBz-WaxE91L4QiD5jGaYG

* A Turing machine abstraction for motivating the notion of a semi-decidable set.
https://gist.github.com/Nikolaj-K/808149debf7c3b09705127f9205f6c3f

* Dovetailing (computer science) - Wikipedia
https://en.wikipedia.org/wiki/Dovetailing_(computer_science)

* Computably enumerable set - Wikipedia
https://en.wikipedia.org/w/index.php?title=Computably_enumerable_set

* Computably enumerable set - Wikipedia
https://en.wikipedia.org/wiki/Computably_enumerable_set

* Pairing function - Wikipedia
https://en.wikipedia.org/wiki/Pairing_function#Cantor_pairing_function

* Gödel numbering - Wikipedia
https://en.wikipedia.org/wiki/G%C3%B6del_numbering

* Creative and productive sets - Wikipedia
https://en.wikipedia.org/wiki/Creative_and_productive_sets

* Alpha recursion theory
https://en.wikipedia.org/wiki/Alpha_recursion_theory

https://en.wikipedia.org/wiki/Second-order_arithmetic
