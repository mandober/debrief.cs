# Estimating a powers of two 

Integers that are a power of two have the form `2ⁿ`, where `n ∈ ℕ`.

Knowing the powers of two for `n = 0..9` is enough to be able to derive a ballpark value for any number that is a power of two.

n  | pow| val |
---|----|-----|
 0 | 2⁰ |   1 |
 1 | 2¹ |   2 |
 2 | 2² |   4 |
 3 | 2³ |   8 |
 4 | 2⁴ |  16 |
 5 | 2⁵ |  32 |
 6 | 2⁶ |  64 |
 7 | 2⁷ | 128 |
 8 | 2⁸ | 256 |
 9 | 2⁹ | 512 |


We can represent a power of two number by `2ᴳˣ`, where
- `x` is a 1-digit unit number in decimal from 0 to 9
- `G` is a 1-digit (or 2-digit or even multi-digit) integer in decimal

We can estimate a ballpark value for a power of two number:
- __x__ tells us the *head value*
- __G__ tells us the number of 3-digit groups following the head value

For a ball park value estimate, we consider all these digits following the head value to be zero; then `G × 3` = number of 0's following the head value.

For example:

A ball park estimate value of `2³⁰`:
- 0 means 2⁰ = 1, so 1 is the head value
- 3 means there are 3 groups of 3-digits following (3×3 = 9 zeros)
- we get: `1,000,000,000` which is `1e9`
- actual: `1,073,741,824` value is higher

A ball park estimate value of `2⁶⁴`:
- 4 means 2⁴ = 16, so 16 is the head value
- 6 means there are 6 groups of 3-digits following (6×3 = 18 zeros)
- we get `16,000,000,000,000,000,000` which is `16e18`
- actual `18,446,744,073,709,551,616` value is higher

A ball park estimate value of `2¹⁰⁶`:
- 6 means 2⁶ = 64, so 64 is the head value
- 10 means there are 10 groups of 3-digits following (10×3 = 30 zeros)
- we get `64,000,000,000,000,000,000,000,000,000,000` which is `64e30`
- actual `81,129,638,414,606,681,695,789,005,144,064` value is higher


The estimate is calculated by taking 2¹⁰ which is 1024 to be 10³ (just like in the nominal vs SI units confusion, e.g. 1 MB vs 1 MiB). Then, for example, to estimate `2⁶⁴`, we express this as `2⁴ × 2⁶⁰`, where 2⁴ = 16 will be the *head number*. The follow up number (of zeros) is then 2⁶⁰ = (2¹⁰)⁶ ≈ (10³)⁶ ≈ 10¹⁸, where the exponent (18) tells us the number of 0's.

```
2⁶⁴
= 2⁴ × 2⁶⁰
= 16 × (2¹⁰)⁶
≈ 16 × (10³)⁶
≈ 16 × 10¹⁸
≈ 16e18


2⁶⁴
= 2⁴ × 2⁶⁰
= 16 × (2¹⁰)⁶
= 16 × 1024⁶
≈ 16 × 1000⁶
≈ 16 × 1,000,000,000,000,000,000
≈ 16,000,000,000,000,000,000


10⁶  = (10³)² = 1,000² =                 1,000,000 = e6
10⁹  = (10³)³ = 1,000³ =             1,000,000,000 = e9
10¹² = (10³)⁴ = 1,000⁴ =         1,000,000,000,000 = e12
10¹⁵ = (10³)⁵ = 1,000⁵ =     1,000,000,000,000,000 = e15
10¹⁸ = (10³)⁶ = 1,000⁶ = 1,000,000,000,000,000,000 = e18

                                                                            Δ
2²⁰  = (2¹⁰)² = 1024²  =                 1,048,576                  (-48,576)
2³⁰  = (2¹⁰)³ = 1024³  =             1,073,741,824              (-73,741,824)
2⁴⁰  = (2¹⁰)⁴ = 1024⁴  =         1,099,511,627,776          (-99,511,627,776)
2⁵⁰  = (2¹⁰)⁵ = 1024⁵  =     1,125,899,906,842,624     (-125,899,906,842,624)
2⁶⁰  = (2¹⁰)⁶ = 1024⁶  = 1,152,921,504,606,846,976 (-152,921,504,606,846,976)

2²⁰ = (2¹⁰)² = 1000² = (10³)² = 10⁶  + Δ
2³⁰ = (2¹⁰)³ = 1000³ = (10³)³ = 10⁹  + Δ
2⁴⁰ = (2¹⁰)⁴ = 1000⁴ = (10³)⁴ = 10¹² + Δ
2⁵⁰ = (2¹⁰)⁵ = 1000⁵ = (10³)⁵ = 10¹⁵ + Δ
2⁶⁰ = (2¹⁰)⁶ = 1000⁶ = (10³)⁶ = 10¹⁸ + Δ
2⁷⁰ = (2¹⁰)⁷ = 1000⁷ = (10³)⁷ = 10²¹ + Δ
2⁸⁰ = (2¹⁰)⁸ = 1000⁸ = (10³)⁸ = 10²⁴ + Δ
2⁹⁰ = (2¹⁰)⁹ = 1000⁹ = (10³)⁹ = 10²⁷ + Δ
2¹⁰⁰ = (2¹⁰)¹⁰ = 1000¹⁰ = (10³)¹⁰ = 10³⁰ + Δ
2¹¹⁰ = (2¹⁰)¹¹ = 1000¹¹ = (10³)¹¹ = 10³³ + Δ
...
```
