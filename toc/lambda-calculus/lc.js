// Lambda Calculus with JS

// import mp from './projection.mjs';

// BOOLEANS
// ========

// Boolean values/functions
const T = t => () => t;    // T ≡ λab.a
const F = () => f => f;    // F ≡ λab.b
// Functions true() and false() also pose as constants T (top) and ⊥ (bottom).
// F degrades to I (id) fn having received any arg.
// F ≡ Z ≡ ZERO ≡ zero().

// Boolean unary operators
const NOT   = selector => selector(F)(T);             // ¬

// Boolean binary operators
const AND   = selector => bool => selector(bool)(F);  // ∧
const IMPLY = selector => bool => selector(bool)(T);  // →
const OR    = selector => bool => selector(T)(bool);  // ∨ 
const XOR   = selector => bool => selector(F)(bool);  // ⊕

// Boolean conditionals
const isZero = n => n(F)(NOT(F)); // λx.xF¬F


// ∧ ↔ ∅ ∪ ∩ ↑ ⇒ ∉ ⊂ ⊗ ⟹ ⟼ ⇔ ℕ
// f:A↦B, n∈ℕ, B⊆A

// Basic PRC: zero, successor, projection
const S = w => f => suc => f(w(f)(suc));    // S ≡ λwyx.y(wyx)   S(n) = n ∪ {n}
const Z = s => z => z;    // Z ≡ λsz.s

// Combinators
const I = id => id;               // λf.f
const M = f => f(f);              // λf.ff

//


/*
Arithmetic with LC
==================
S≡ λwyx.y(wyx)
0≡ λsz.z
S0: (λwyx.y(wyx))(λsz.z)
1≡ λsz.s(z) ≡ λyx.y(wy)x
2≡ λsz.s(s(z))
3≡ λsz.s(s(s(z)))

1 ≡ SZ ≡
(λwyx.y(wyx))(λsz.z)        [(λsz.z)/w]y(wyx)
= λyx.y((λsz.z)yx)          [y/s]z
= λyx.y((λz.z)x)            [x/z]z
= λyx.yx = λsz.sz

2 ≡ S1 ≡
(λwyx.y(wyx))(λsz.s(z))     [(λsz.s(z))/w]y(wyx)
=λyx.y((λsz.s(z))yx)        [y/s]s(z), [x/z]s(z)
=λyx.y(y(x))                [x/z]z
= λsz.s(s(z))
*/

// const x1 = s => z => s(z);
const _0 = Z;
const _1 = S(Z);
const _2 = S(S(Z));
const _3 = S(S(S(Z)));
