# Data Structures

(following the book: *Purely Functional Data Structures* by Chris Okasaki)

Efficient data structures have been studied extensively resulting in a vast choice of efficient data structures, with implementations available for any programming language.


## Functional vs Imperative

With the obvious preference for efficiency over correctness, imperative languages (IL) are still more popular then functional languages (FL). However, recent advances in compiler desing keep narrowing this gap, and with other benefits that FL bring to the table, the situation is slowly changing.

However, one of the crucial pain points of FP are data structures, which seem far inferior then their imperative counterpairs. The main reason imperative data structures (IDS) have are destructive updates. While destructive updates can be dangerous when misused, they can be tremendously effective when used properly (especially in single-threaded contexts).

Another difficulty is that functional data structures (FDS) are expected to be persistent, unlike IDS. When we update an FDS, we expect that both the old and new versions of the data structure will be available for further processing.

**Persistent data structure** (PDS) supports multi-versioning, that is, all the snapshots (states, copies) of a particular DS are always available; from the version of the DS as it was at the time of creation, to the most recent version with the latest updates incorporated, including all the versions in between. Every change to a DS is encapsulated in a separate snapshot. Data structures are automatically persistent in functional programming languages.

**Ephemeral data structure** (EDS), unlike persistent, allow only a single version at a time; that is, only the most recent version of some DS is available (although frequently, there are no versions at all with the changes being destructive; they keep modifying the same DS so there's no going back).

IDS are typically ephemeral and when a PDS is required, no one is surprised that it is more complicated and less asymptotically efficient than its ephemeral counterpart. Despite these concerns, it has been shown that it is often possible to devise FDS that are asymptotically as efficient as the best IDS.


## Strict vs Lazy Evaluation

FPL can be classified as strict or lazy, according to the evaluation strategy. This difference is most apparent in the treatment of function's arguments.

**Strict evaluation strategy** demands that arguments are fully evaluated before a function call.

**Lazy evaluation strategy** drives the evaluation of expressions according to the demand. The arguments to a function are always passed in unevaluated; whether they get evaluated at all depends on a computation demanding it. In pattern matching, an expression (a value) is initially evaluated just enough so as to determine its data constructor. Furthermore, lazy evaluation strategy also performs *memoization*. That is, once an expression is evaluated it is cached (in order to speed up future lookups).

An important aspect in which the strict evaluation strategy has advantage is in the analysis of a computation's asymptotic complexity. Predicting when (or even if) an expression will be evaluated in a lazy language is next to impossible.

Both evaluation strategies affect the way data structures are designed and analysed.

Strict languages can describe worst-case data structures, but not amortized ones; lazy languages can describe amortized data structures, but not worst-case ones. To be able to describe both kinds of data structures, a programming language needs to support both evaluation orders, which many FPL do. Haskell has the special syntax for enforcing strict (`!`) and super-strict evaluation (`!!`).


## Meanings of the term

The term "data structure" has several distinct, but related, meanings:

1. Abstract Data Type
  - ADT is a type and a set of functions on that type
  - we'll refer to it as abstraction
  - in SML *abstractions* correspond to *signatures*

2. Concrete realization of an ADT
  - we'll refer to it as an *implementation*
  - possibly not realized in the code but as a concrete design
  - in SML *implementations* correspond to structures or functors

3. An instance of a data type
  - such as an instance of a particular list or tree
  - we'll refer to such an instance generically as a *version or object*
  - in SML *objects or versions* correspond to values

4. A unique identity that is invariant under updates
  - For example, in a stack-based interpreter, we often speak informally about "the stack" as if there were only one stack, rather than different versions at different times.
  - We'll refer to this identity as a *persistent identity*.
  - This issue mainly arises in the context of persistent data structures; when we speak of different versions of the same data structure, we mean that the different versions share a common persistent identity.
  - *persistent identities* have no good analogue in SML


The rough correspondence in Standard ML (SML):
- *abstractions* correspond to signatures
- *implementations* to structures or functors
- *objects or versions* to values
- *persistent identities* have no good analogue

The *persistent identity* of an ephemeral data structure can be reified as a *reference cell*, but this is insufficient for modelling the persistent identity of a persistent data structure. The term *operation* is similarly overloaded, meaning both the functions supplied by an abstract data type and applications of those functions.
