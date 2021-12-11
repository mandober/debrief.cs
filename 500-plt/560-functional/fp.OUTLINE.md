# FP: OUTLINE

List of functional programming topics
https://en.wikipedia.org/wiki/List_of_functional_programming_topics

Contents
1. Foundational concepts
2. Lambda calculus
3. Combinatory logic
4. Intuitionistic logic
5. Type theory
6. Denotational semantics
7. Category theory
8. Operational issues
9. Programming languages


* Foundational concepts
  Programming paradigm
  Declarative programming
  Programs as mathematical objects
  Function-level programming
  Purely functional programming
  Total functional programming
  Lambda programming
  Static scoping
  Higher-order function
  Referential transparency

* Lambda calculus
  Currying
  Lambda abstraction
  Church-Rosser theorem
  Extensionality
  Church numeral

* Combinatory logic
  Fixed point combinator
  SKI combinator calculus
  B, C, K, W system
  SECD machine
  Graph reduction machine

* Intuitionistic logic
  Sequent, sequent calculus
  Natural deduction
  Intuitionistic type theory
  BHK interpretation
  Curry-Howard correspondence
  Linear logic
  Game semantics

* Type theory
  Typed lambda calculus
  Typed and untyped languages
  Type signature
  Type inference
  Datatype
  Algebraic data type (generalized)
  Type variable
  First-class value
  Polymorphism
  Calculus of constructions

* Denotational semantics
  Domain theory
  Directed complete partial order
  Knaster-Tarski theorem

* Category theory
  Cartesian closed category
  Yoneda lemma
  Operational issues
  Graph reduction
  Combinator graph reduction
  Strict programming language
  Lazy evaluation, eager evaluation
  Speculative evaluation
  Side effect
  Assignment
  Setq
  Closure
  Continuation
  Continuation passing style
  Operational semantics
  State transition system
  Simulation preorder
  Bisimulation
  Monads in functional programming
  Exception handling
  Garbage collection

* Programming languages
  - 1966 ISWIM (If you See What I Mean), Peter Landin
  - 1972 SASL (St Andrews Static Language), David Turner
  - 1981 KRC (Kent Recursive Calculator), David Turner
  - 1983 SISAL (Streams & Iteration in a Single Assignment Language), J.McGraw
  - 1985 Miranda, David Turner
  - FP
  - Pure, predecessor Q
  - Q (from Kx Systems)
  - 1958 Lisp
    - AutoLISP
    - Common Lisp
    - Emacs Lisp
    - Scheme
  - 1973 ML, Robin Milner
    - OCaml
    - 1983 Standard ML
  - 1990 Haskell
    - 1992 GHC
    - 1994 Gofer (Good for equational reasoning)
    - 1998 Hugs
    - Template Haskell
    - 2006 Yhc (York Haskell Compiler), offshoot of nhc98
    - 2007 Ωmega
    - NHC98
    - GHCJS
    - UHC
  - Clean
  - 1977 NPL, Rod Burstall and John Darlington
  - 1980 Hope, Rod Burstall and John Darlington
  - Elixir
  - 1995 JavaScript, Brendan Eich
  - Scala
  - Clojure
  - Erlang
  - F#
  - Mercury
  - 1989 Coq
  - 2004 Epigram by Conor McBride, James McKinna
  - 2007 Agda by Ulf Norell, Catarina Coquand
  - 2007 Idris by Edwin Brady
  - ALF (Another logical framework)
  - 1996 Alfa
  - Cayenne, Lennart Augustsson

* `Alfa` is a successor of the proof editor `ALF`, i.e. an editor for direct manipulation of proof objects in a logical framework based on Per Martin-Löf's Type Theory. It allows you to define theories (axioms and inference rules), formulate theorems and construct proofs of the theorems. All steps in the proof construction are immediately checked by the system and no erroneous proofs can be constructed. Alternatively, you can view Alfa as a syntax-directed editor for a small purely FPL with a type system that provides dependent types. In fact, the language is very similar to the functional language `Cayenne` by Lennart Augustsson. Alfa is being developed by people in The Programming Logic Group at Chalmers. Alfa uses a proof checker developed initially by Thierry Coquand, `V3`, and developed further by Catarina Coquand, `Agda`. The most recent development of Agda has been made by Makoto Takeyama. He has added the new idata construction, to regain some of the power available through the inductive data definitions found in the old ALF system.
https://cth.altocumulus.org/~hallgren/Alfa/

* ALF (Another logical framework) is a structure editor for monomorphic Martin-Löf type theory developed at Chalmers University. It is a predecessor of the Alfa, Agda, Cayenne and Coq proof assistants and dependently typed programming languages. It was the first language to support **inductive type families** and **dependent pattern matching**.
https://cth.altocumulus.org/~hallgren/Alfa/

* Hope is a small FPL developed in the 1970s at the University of Edinburgh. It predates Miranda and Haskell and is contemporaneous with ML, also developed at the University. Hope was derived from NPL, a simple functional language developed by Rod Burstall and John Darlington in their work on program transformation. NPL and Hope are notable for being the first languages with **call-by-pattern evaluation** and **algebraic data types**. In the paper: "Hope: An Experimental Applicative Language" by R.M. Burstall, D.B. MacQueen, D.T. Sannella (1980)
https://en.wikipedia.org/wiki/Hope_(programming_language)
https://en.wikipedia.org/wiki/NPL_(programming_language)

* Grammatical Framework (GF) - a programming language for multilingual grammar applications.
http://www.grammaticalframework.org/


https://en.wikipedia.org/wiki/Glasgow_Haskell_Compiler
https://en.wikipedia.org/wiki/Haskell_(programming_language)
https://en.wikipedia.org/wiki/SISAL
http://yhc06.blogspot.com/
https://www.haskell.org/hugs/pages/users_guide/faq.html
https://www.haskell.org/hugs/
https://wiki.haskell.org/Yhc/Javascript
https://wiki.haskell.org/Yhc/Erlang/Proof_of_concept
https://wiki.haskell.org/STG_in_Javascript
http://www.cse.ogi.edu/~mpj/goferarc/index.html
http://web.cecs.pdx.edu/~mpj/goferarc/index.html
http://web.cecs.pdx.edu/~mpj/goferarc/README
https://www.haskell.org/nhc98/
http://haskell.org/yhc
https://wiki.haskell.org/UHC
https://github.com/UU-ComputerScience/uhc

---

https://kowainik.github.io/posts
https://kowainik.github.io/posts/totality
http://dev.stephendiehl.com/hask/#printf-tracing
https://mmhaskell.com/machine-learning
https://wiki.haskell.org/Numeric_Haskell:_A_Vector_Tutorial
https://boris-marinov.github.io/category-theory-illustrated/01_set/
https://boris-marinov.github.io/time/
https://boris-marinov.github.io/logic-thought/
https://boris-marinov.github.io/fp/
https://en.wikipedia.org/wiki/List_of_functional_programming_topics
https://web.archive.org/web/20130801064002/http://www.hopemachine.co.uk/
https://en.wikipedia.org/wiki/Clean_(programming_language)
https://en.wikipedia.org/wiki/Orwell_(programming_language)
https://en.wikipedia.org/wiki/Haskell_(programming_language)#cite_note-34
https://wiki.haskell.org/UHC
https://web.archive.org/web/20170530011917/http://foswiki.cs.uu.nl/foswiki/UHC/WebHome
https://en.wikipedia.org/wiki/OCaml
https://en.wikipedia.org/wiki/Scheme_(programming_language)
https://en.wikipedia.org/wiki/Scala_(programming_language)
https://en.wikipedia.org/wiki/Dependent_type
https://en.wikipedia.org/wiki/ALF_(proof_assistant)
https://en.wikipedia.org/wiki/Lennart_Augustsson
https://cth.altocumulus.org/~hallgren/Alfa/

https://cth.altocumulus.org/~augustss/cayenne/

---

https://kowainik.github.io/posts
https://kowainik.github.io/posts/totality
http://dev.stephendiehl.com/hask/#printf-tracing
https://mmhaskell.com/machine-learning
https://wiki.haskell.org/Numeric_Haskell:_A_Vector_Tutorial
https://boris-marinov.github.io/category-theory-illustrated/01_set/
https://boris-marinov.github.io/time/
https://boris-marinov.github.io/logic-thought/
https://boris-marinov.github.io/fp/
http://www.grammaticalframework.org/gf-book/
http://www.cse.chalmers.se/research/group/logic/alf/guide.html
http://www.grammaticalframework.org/
http://www.dmoz.org/Science/Math/Logic_and_Foundations/Computational_Logic/Logical_Frameworks/
https://cth.altocumulus.org/~hallgren/
https://cth.altocumulus.org/~hallgren/Alfa/HISTORY.html
https://web.archive.org/web/20060206121612/http://www.cs.chalmers.se/~catarina/agda/
https://cth.altocumulus.org/~hallgren/
http://www.cse.chalmers.se/~aarne/
https://web.archive.org/web/20060206060233/http://www.cs.chalmers.se/~catarina//
http://www.cse.chalmers.se/~coquand/
http://www.cse.chalmers.se/research/group/logic/
https://www.chalmers.se/sv/institutioner/cse/Sidor/default.aspx
https://web.archive.org/web/20061208003742/http://www.cs.chalmers.se/~augustss//
https://cth.altocumulus.org/~hallgren/Alfa/index.html#download

---

chrome-extension://chphlpgkkbolifaimnlloiipkdnihall/onetab.html
https://kowainik.github.io/posts
https://kowainik.github.io/posts/totality
http://dev.stephendiehl.com/hask/#printf-tracing
https://mmhaskell.com/machine-learning
https://wiki.haskell.org/Numeric_Haskell:_A_Vector_Tutorial
https://boris-marinov.github.io/category-theory-illustrated/01_set/
https://boris-marinov.github.io/time/
https://boris-marinov.github.io/logic-thought/
https://boris-marinov.github.io/fp/
http://www.grammaticalframework.org/gf-book/
https://chalmers.instructure.com/courses/7316
http://www.cse.chalmers.se/~aarne/publications.html
http://www.grammaticalframework.org/ipl-book/
https://blackwell-compass.com/subject/linguistics/article_view?parent=section&last_results=section%3Dlnco-computational&sortby=date&section=lnco-computational&browse_id=lnco_articles_bpl155&article_id=lnco_articles_bpl155
http://www.cse.chalmers.se/alumni/bringert/
http://www.cse.chalmers.se/~aarne/articles/gf-jfp.pdf
http://www.cse.chalmers.se/~aarne/articles/cade2011.pdf
http://sunsite.informatik.rwth-aachen.de/Publications/CEUR-WS/Vol-448/
