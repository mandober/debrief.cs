# History of Functional programming languages

- 1978: John Backus presents a case for FPLs in his Turing Award lecture: 
        "Can programming be liberated from the von Neumann style?"
- 1960: `LISP` (John McCarthy)
- 196x: modelling PLs by λ-calculus (Peter Landin and Christopher Strachey)
- 1964: *operational semantics* (Landin and Strachey)
- 1964: *abstract machines* (Landin)
- 1964: *denotational semantics* (Strachey)
- 1966: *ISWIM* (Peter Landin)
- 1971: *denotational semantics* further dev (Strachey and Dana Scott)
- 1971: *domain theory* by Strachey and Scott


- 1970s: Rod Burstall and John Darlington were doing program transformation in a first-order FPL with function definition by *pattern matching* (Burstall and Darlington, 1977).
- 1976: *SASL* by David Turner, a pure higher-order FPL with lexically scoped vars, a sugared lambda calculus derived from the applicative subset ISWIM, that incorporated Burstall and Darlington's ideas on *pattern matching*

* In the late 1970s, Gerry Sussman and Guy Steele developed *Scheme*, a dialect of Lisp that adhered more closely to the lambda calculus by implementing *lexical scoping* (Sussman and Steele, 1975; Steele, 1978).

* At more or less the same time, Robin Milner invented *ML* as a meta-language for the theorem prover LCF at Edinburgh (Gordon et al., 1979). Milner's *polymorphic type system* for ML would prove to be particularly influential (Milner, 1978; Damas and Milner, 1982). Both Scheme and ML were *strict* (*call-by-value*) languages and, although they contained imperative features, they did much to promote the FP style, in particular the use of higher-order functions.


Then, in the late 1970s and early 180s, something new happened. A series of seminal publications ignited an explosion of interest in the idea of *lazy* (or *non-strict* or *call-by-need*) FPL as a vehicle for writing serious programs. *Lazy evaluation* appears to have been invented independently three times.

* Dan Friedman and David Wise (both at Indiana) published "Cons should not evaluate its arguments" (Friedman and Wise, 1976), which took on *lazy evaluation* from a Lisp perspective.

* Peter Henderson (at Newcastle) and James H. Morris Jr. (at Xerox PARC) published "A lazy evaluator" (Henderson and Morris, 1976). They cite Vuillemin (Vuillemin, 1974) and Wadsworth (Wadsworth, 1971) as responsible for the origins of the idea, but popularised the idea in POPL and made one other important contribution, the name. They also used a variant of Lisp, and showed soundness of their evaluator with respect to a denotational semantics.

* David Turner (at St. Andrews and Kent) introduced a series of influential languages: *SASL* (St Andrews Static Language) (Turner, 1976), which was initially designed as a strict language in 1972 but became lazy in 1976, and *KRC* (Kent Recursive Calculator) (Turner, 1982). Turner showed the elegance of programming with lazy evaluation, and in particular the use of lazy lists to emulate many kinds of behaviours (Turner, 1981; Turner, 1982).

* In August 1980, the first Lisp conference took place in Stanford, California. Presentations included Rod Burstall, Dave MacQueen, and Don Sannella on Hope, the language that introduced *algebraic data types* (Burstall et al., 1980).

* In July 1981, Peter Henderson, John Darlington, and David Turner ran an Advanced Course on Functional Programming and its Applications, in Newcastle (Darlington et al., 1982). All the big names were there: attendees included Gerry Sussman, Gary Lindstrom, David Park, Manfred Broy, Joe Stoy, and Edsger Dijkstra. (Hughes and Peyton Jones attended as students.) Dijkstra was characteristically unimpressed - he wrote "On the whole I could not avoid some feelings of deep disappointment. I still believe that the topic deserves a much more adequate treatment; quite a lot we were exposed to was definitely not up to par." (Dijkstra, 1981) - but for many attendees it was a watershed.

* In September 1981, the first conference on FPL and Computer Architecture (FPCA) took place in Portsmouth, New Hampshire. Here Turner gave his influential paper on "The semantic elegance of applicative languages" (Turner, 1981). Wadler also presented his first conference paper. FPCA became a key biennial conference in the field.

* In September 1982, the second Lisp conference, now renamed Lisp and Functional Programming (LFP), took place in Pittsburgh, Pennsylvania. Presentations included Peter Henderson on *functional geometry* (Henderson, 1982) and an invited talk by Turner on programming with *infinite data structures*. It also saw the first published papers of Hudak, Hughes, and Peyton Jones. Special guests at this conference included Church and Curry. The after-dinner talk was given by Barkley Rosser, and received two ovations in the middle, once when he presented the proof of Curry's paradox, relating it to the *Y combinator*, and once when he presented a new proof of the Church-Rosser theorem. LFP became the other key biennial conference.

* In 1996, FPCA merged with LFP to become the annual International Conference on Functional Programming, ICFP, which remains the key conference in the field to the present day.

* In August 1987, Ham Richards of the University of Texas and David Turner organised an international school on Declarative Programming in Austin, Texas, as part of the UT "Year of Programming". Speakers included: Samson Abramsky, John Backus, Richard Bird, Peter Buneman, Robert Cartwright, Simon Thompson, David Turner, and Hughes. A major part of the school was a course in lazy functional programming, with practical classes using *Miranda*.

* Fall of **1987 Conception of Haskell**. Peyton Jones stopped at Yale to see Hudak on his way to the 1987 FPCA in Oregon. After discussing the situation, Peyton Jones and Hudak decided to initiate a meeting during FPCA, to garner interest in designing a new, common FPL. Wadler also stopped at Yale on the way to FPCA, and also endorsed the idea of a meeting.
