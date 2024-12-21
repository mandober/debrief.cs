# Compilers and interpreters


## Compiler phases
- Syntactic analysis
  - Lexical analysis
  - Scanning
  - Parsing
- Semantic Analysis (types, scopes, etc.)
- Optimization (inlining, constant folding, etc.)
- Code Generation (translation, transpilation, etc.)



## Regular language definition

The collection of regular languages over an alphabet Σ is defined recursively:
- The empty language `Ø` is a regular language
- The empty string language `{ε}` = `{""}` is a regular language
- For each `c ∈ Σ`, the singleton language `{c}` is a regular language
- If A and B are regular languages, then so are:
  - `A ∪ B` (union)
  - `AB` or `A • B` (concatenation)
  - `A*` (iteration, Kleene star)
- No other languages over Σ are regular (i.e. it is the smallest set)


*Lexical structure* of a PL is a set of *token classes*. We use **regular languages** to specify what set of strings is in a token class. 

We define a regular language using **regular expressions**. Each RE denotes a set. There are 2 basic regular expressions:
1. Single character
2. The empty string

The single character, e.g., `'c'` (character "c") is an expression denoting regular language `{'c'}`, which contains one string - a single char "c". For any single character, we get a one string language, where the string is just that character.

The empty string, denoted by ε (epsilon), is an RE that makes a language `{ε}` i.e. a language that contains one string - the empty string. (so that language is not an empty language since it does contain something).

Besides the two basic RE, there are 3 compound expressions:
- Union
- Concatenation
- Iteration

Union of the languages A and B: `A+B = A ∪ B`, `{a|a ∈ A} ∪ {b|b ∈ B}`. It is a union of 2 sets of strings.

Concatenation of the languages A and B: `AB`, `{ab|a ∈ A, b ∈ B}`. It is a cross-product operation: choose a string `a ∈ A` and a string `b ∈ B`, then put them together in all possible ways, but with `a` always first and `b` second.

Iteration, denoted by a star called Kleene operator or closure, `A*`. This is equal to the (big) union of `A^i (i>=0)` i.e. `A` concatenated with itself `i`-times. Since `i` can be zero, `A^0` is `A` concatenated with itself 0 times, which is the empty string. The empty string is always an element of `A*`.

**DEF.** The regular expressions over an alphabet Σ are the smallest set of expressions:

```
R = ε
  | 'c'  (c ∈ Σ)
  | R+R
  | RR
  | R*
```
These 5 cases are a set of RE over a given alphabet. The syntax used (here BNF) to describe this language is called *grammar*.


Examples: languages over the alphabet `Σ={0,1}`

`1*` is a language consisting of the union of the empty string and strings made up from 1 concatenated with itself any number of times: `"" + 1 + 11 +...+ 1^i`. That is, ε and all possible strings of 1's.

---

Reference
From online lectures:
https://www.youtube.com/watch?v=wCNSvnXIX84&list=PLDcmCgguL9rxPoVn2ykUFc8TOpLyDU5gx&index=9


Resources
https://en.wikipedia.org/wiki/Compiler


---

## Formal language

**DEF.** If Σ is an alphabet (i.e. a set of characters), then a language over Σ is a set of strings made out of characters from Σ.

For example, if _Σ = ASCII character set_, then a language over this alphabet is the _C programming language_.

