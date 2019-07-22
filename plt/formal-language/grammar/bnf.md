# Backus-Naur Form (BNF)

- Backus–Naur form (BNF) or Backus normal form (BNF)
- BNF is a notation technique for context-free grammars
- used to concisely describe the syntax of (programming) languages, etc.
- variants: extended BNF (EBNF), augmented BNF (ABNF)
- based on the description of a language structure using rewriting rules.


In 1959, John Backus, programming language designer at IBM, proposed a metalanguage of to describe the syntax of the new programming language that came to be known as ALGOL 58. His notation was first used in the ALGOL 60 report.

As proposed by Backus, the formula defines a *class* whose name is enclosed in angle brackets, e.g. `<args>`. Each of these names denotes a class of basic symbols.

BNF as described by Peter Naur is a metalinguistic formula:
- (metalinguistic) variables: sequences of chars in angle brackets
- their values are sequences of symbols
- (metalinguistic) connectives: marks `|` ("or") and `::=` ("is defined as")
- literal: any mark in a formula which is not a variable or connective
- Juxtaposition of marks/vars in a formula signifies juxtaposition of the sequence denoted.

The big difference between BNF and a Chomsky context-free grammar is that metalingustic variables do not require a rule defining their formation; their formation may be described using a natural language within the angle brackets.


## Principle

* BNF consists of symbols and production rules.
* **Production rules** dictate possible ways to rewrite a symbol.
* **Production process** starts with the **initial symbol**.
* The lang defined by a BNF is the set of all possible (generatable) strings.
* Production rule example: `S := alt1 | alt2`
  - states that LHS symbol must be replaced by one of the RHS alts.
* The mark `::=` or `:=` means *is defined as*
* Alternatives are separated by `|`, meaning *or*
  - they consist of *symbols* (non-terminals) and *terminals*.
* **Terminals** are parts of the final string that are not symbols.
  - rules don't apply to them, they terminate the production process.


## Example

```ebnf
S := '-' FN | FN
  FN := DL | DL '.' DL
  DL := D | D DL
  D  := '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9'
```

- S is the start symbol
- FN produces a fractional number
- DL is a digit list
- D is a digit

Valid sentences in the language described by this grammar are all numbers, possibly fractional, possibly negative.

To produce a number, start with the start symbol `S`:
Then replace the S symbol with one of its productions.
In this case we choose not to put a '-' in front of the number, 
so we use the plain FN production and replace S by FN: `FN`

The next step is then to replace the `FN` symbol with one of its productions.
We want a fractional number, so we choose the production that creates two decimal lists with a '.' between them. Then we keep replacing the symbol with one of its productions, once per line. Production of number 3.14:

```
0: S
1: FN        S  -> FN
2: DL.DL     FN -> DL.DL
3: D.DL      DL -> D
4: 3.DL      D  -> 3
5: 3.D DL    DL -> D DL
6: 3.D D     DL -> D
7: 3.1 D     D  -> 1
8: 3.1 4     D  -> 4
```

---

https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_form
https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form
http://www.garshol.priv.no/download/text/bnf.html
