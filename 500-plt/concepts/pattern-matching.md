# Pattern matching

https://en.wikipedia.org/wiki/Pattern_matching

- conditional branching on type and value
- guards
- data structure destructuring
- binding parts of a data structure
- patterns are given in functional equations
- processed top down, first match wins, bottom if no match
- scrutinizing, scrutinee
- binding patterns
- irrefutable patterns
- refutable patterns


**Pattern matching** is a form of conditional branching which allows you to concisely match a value (usually, a compound value in the form of a data structure) against a pattern, at the same time binding the matched value entirely and/or partially.

Pattern matching has originated in functional programming languages with algebraic data types. ADTs are data types defined through their data constructors; sum ADTs are tagged, disjoint, unions of several types defined as alternatives (variants, enumerations), where only one alternative is active (has a value) at a time; in their simplest form, they are similar to enums (enumeration types) found in some primitive PLs, but sum types can also hold a payload (data fields i.e. a record). Product types are compound data types and they consist of a grouping of types like sum types. However, unlike sum types, all the defined (sub)types must be initialized with a value; while in a sum type, only one variant can be initialized with a value. ADTs, in their canonical form, are possibly recursive sum of products (because each variant in a sum type is a more or less complex product type).

Taking Haskell as an example PLs to discuss pattern matching, it can be noted that values in Haskell are, generally, either primitive (Int, Char, String, Double, Float, etc.) or they are ADTs. Pattern matching is intended to work with ADTs, not so much with primitive types since these can be scrutinized through other means.

```hs
-- Pattern matching on primitive values

-- literal patterns will match on primitive values
matchPrimitive :: Int -> Char -> Double -> () -> String
matchPrimitive 0 'a' 3.12 () = "primitive obsession"


```





ADT values are scrutinized by matching them against patterns - the first pattern that matches may possibly bind the value as a whole, or bind several parts of it. These internal parts (of compound types) are revealed through patterns of appropriate complexity.

thereby revealing the data constructor used to make that value.

Pattern matching analyses and deconstructs a data structure by scrutinizing the present data constructor - the one used to make a value of that data type.

In Haskell, for example, pattern matching almost always occurs on the left-hand side of equations that define a function (a function may have multi-part definition, as a collection of equations).

In Haskell, patterns appear in case expressions, function definitions, lambda abstractions, list comprehensions, do expressions (slurp), let expressions... in fact, patterns appear whenever there is a binding opportunity.

Many of these constructs ultimately translate into a case expression, so the semantics of pattern matching may be defined in terms of case expressions.

Tree patterns are used in some programming languages as a general tool to process data based on its structure.

Mnay PLs (Haskell, ML, Rust, C#, F#, Python, Ruby, Scala, Swift, Mathematica) have special syntax for expressing tree patterns and a language construct for conditional execution and value retrieval based on it.

Pattern matching sometimes includes support for guards.



## The view from the left

The key feature of pattern matching in is that the structure of an arbitrary value in a datatype is explained. Classically, pattern matching analyses constructor patterns on the left-hand sides of functional equations, and is defined by a subsystem of the operational semantics with hard-wired rules for computing substitutions from the pattern variables to values.

For example, in Standard ML (Milner et al., 1997), one might test list membership as follows:

```sml
fun elem k [] = false
  | elem k (l :: ls) = if (k = l) then true else elem k ls
```

The clarity of the code does not hinder its efficient compilation.

A key technique here is Augustsson's (1985) analysis in terms of *hierarchical switching on the outermost constructor symbol, coupled with the exposure of subexpressions*.

This yields, for `elem` above, the following cascade of case expressions:

```ml
fun elem k ls = case ls
                  of [] => false
                   | l :: ls' => case (k = l)
                  of true => true
                   | false => elem k ls'
```
