# Pattern matching

*Pattern Matching* is the act of checking a given sequence of tokens ('haystack') for the occurence of the specified pattern ('needle').

Pattern Matching (PM) is similar but distinct from Pattern Recognition (PR) which is automated recognition of patterns and regularities in data. Unlike PR, the match with PM usually has to be exact (either the match is found or not). The primary function of PM is to distinguish and create *emergent pattern*. Both PM and PR have similarities with the general text-searching algorithms, such as search-and-replace algorithms, that try to find the 'needle' (also often called pattern) in a 'haystack' (disignated text), but almost exculsively use regular expressions to describe the patterns.

Pattern Matching may also use *regular expressions*- in fact, regexes may be considered a part of the PM toolset (but PM provide much more). A regex may be used as a subpattern (in the overall pattern) to decompose the string further, but that can only happen once the overall pattern has successfully matched the target (expression or variable) and revealed it to be a string (usually, the target of pattern matching are variables with contents that may not be entirely known).

In pattern matching, patterns may be simple, like constants or variable names, or they may be compound consisting of deeply nested subpatterns. However, the most important capability of pattern matching is that it can use fresh variable names to *bind parts* of the matched expression, which is particularly useful when the matched target is a data structure.

The patterns generally have the form of sequences or tree structures.

**Sequence patterns** (e.g. a text string) are often described using regular expressions and matched using techniques such as backtracking.

**Tree patterns** are used in some programming languages as a general tool to process data based on its structure (Haskell, ML, Rust, C#, F#, Python, Ruby, Scala, Swift, Mathematica). Some PLs have special syntax for expressing tree patterns and a language construct for conditional execution and value retrieval based on it.

It is often also possible to specify a series of alternative patterns that are tried one by one, one after the other, that may yield powerful conditional constructs.

Pattern matching sometimes includes support for **guards**, which are denoted as predicates that also need to hold for the overall match to succeed; i.e. the taget expression needs both, to match the pattern, as well as to hold when the predicate is applied to it. Also, the same pattern may be associated with different guards, further enhancing expressivity.

Parsing algorithms often rely on pattern matching to transform strings into syntax trees.

Early programming languages with pattern matching constructs include COMIT (1957), SNOBOL (1962), Refal (1968) with tree-based pattern matching, Prolog (1972), SASL (1976), NPL (1977), and KRC (1981).
