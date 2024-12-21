# Bar recursion

https://en.wikipedia.org/wiki/Bar_recursion

Bar recursion is a generalized form of recursion developed by Clifford Spector in:

"Provably recursive functionals of analysis: a consistency proof of analysis by an extension of principles in current intuitionistic mathematics", Clifford Spector. 1962.

Bar recursion is related to bar induction in the same way that 
primitive recursion is related to ordinary induction, or 
transfinite recursion is related to transfinite induction.

```
  primitive recursion :    ordinary induction
        bar recursion :         bar induction
transfinite recursion : transfinite induction
```

## Technical definition

Let V, R, and O be types, and i be any natural number, representing a sequence of parameters taken from V. Then the function sequence f of functions fn from Vi+n → R to O is defined by bar recursion from the functions Ln : R → O and B with Bn : ((Vi+n → R) x (Vn → R)) → O if:

fn((λα:Vi+n)r) = Ln(r) for any r long enough that Ln+k on any extension of r equals Ln. Assuming L is a continuous sequence, there must be such r, because a continuous function can use only finitely much data.
fn(p) = Bn(p, (λx:V)fn+1(cat(p, x))) for any p in Vi+n → R.
Here "cat" is the concatenation function, sending p, x to the sequence which starts with p, and has x as its last term.

(This definition is based on the one by Escardó and Oliva.[2])

Provided that for every sufficiently long function (λα)r of type Vi → R, there is some n with Ln(r) = Bn((λα)r, (λx:V)Ln+1(r)), the bar induction rule ensures that f is well-defined.

The idea is that one extends the sequence arbitrarily, using the recursion term B to determine the effect, until a sufficiently long node of the tree of sequences over V is reached; then the base term L determines the final value of f. The well-definedness condition corresponds to the requirement that every infinite path must eventually pass through a sufficiently long node: the same requirement that is needed to invoke a bar induction.

The principles of bar induction and bar recursion are the intuitionistic equivalents of the axiom of dependent choices.[3]


## References

[1]: C. Spector (1962). "Provably recursive functionals of analysis: a consistency proof of analysis by an extension of principles in current intuitionistic mathematics".

[2]: Martín Escardó, Paulo Oliva. "Selection functions, Bar recursion, and Backwards Induction". http://www.cs.bham.ac.uk/~mhe/papers/selection-escardo-oliva.pdf

[3]: Jeremy Avigad, Solomon Feferman. 1999. "VI: Gödel's functional ("Dialectica") interpretation". http://math.stanford.edu/~feferman/papers/dialectica.pdf


## Refs

https://en.wikipedia.org/wiki/Mathematical_induction
https://en.wikipedia.org/wiki/Bar_induction
https://en.wikipedia.org/wiki/Transfinite_induction
https://en.wikipedia.org/wiki/Transfinite_recursion
https://en.wikipedia.org/wiki/Epsilon-induction
https://en.wikipedia.org/wiki/Well-founded_relation#Induction_and_recursion
https://en.wikipedia.org/wiki/Zorn%27s_lemma
