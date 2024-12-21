# Positional Number System

There are different kinds of number systems but positional are what are we interested in here. There are also *positional number system* (PNS) with weird radices, but radices which are natural numbers bigger then 1 are what are we interested in here. There is no sensible PNS with radix equal to 1, although there are unary number system (but not positional), like the tally marks system or Peano numbers.

A **number** is an abstract quantity that is apart from any numeral used to represent it. We are used to representing nunmbers with PNS that uses *Hindu-Arabic numerals*, but the number six is not identical to the numeral 6. In fact, any number can be represented in many different ways.

A **numeral** is a symbol used to denote a number. In a more narrow sense and taking the decimal PNS as example, each of the 10 digits has a unique representation - it is denoted with a unique Hindu-Arabic numeral, so the numeral `0` denotes the number zero, numeral `1` denotes one, etc., and finaly, numeral `9`represents the number nine. Bigger numbers are denoted by combining numerals in a particular manner, which works thanks to the "positional" adjective of a PNS. Numeral is often used interchangibly with "number". It is also used synonymously with "digit", although the two terms may have slighty different conotations. "Numeral" can be considered to mean only one of the unique digits, e.g. in decimal system, the digits 0-9, or it could mean a decimal representation of any number; e.g. the number 15 is representated by the numeral 15. In the case of decimal PNS, this doesn't seem right as "15" is evidently a compound construction, while in the hex PNS, the number 15 is represented with a single numeral, `f`. Usually, "numeral" is used to denote each of the unique *units* digit.

A **digit**, usully means any numeral in a compond construction, regardless of its position (e.g. "6 digit number"). So, e.g. we say a 4-digit number for 1234 and 2 in there is a numeral (2) and also a digit despite this actually being 200, which is what 2 in that position represents. Anyway, the distinction between *number*, *numeral*, *digit*, *figure*, ... can get complicated.

Importantly, there are *properties pertaining to a number*, as opposed to there being *properties that pertain to a numeral* (see? in this case a numeral is multi-digit "figure").

## Value of a numeral

Each number is denoted in such a way that its value can be calculated using the formula:

    Σ {i=0} dᵢBⁱ

where
- `i` is the position (index) of the digit, `dᵢ`
- `B` is the radix of the PNS (so B = 10 in decimal PNS)

In decimal number system with base 10, `B = 10`, an example is

```
4321
= 4 × 10³ + 3 × 10² + 2 × 10¹ + 1 × 10⁰
= 4 × 1000 + 3 × 100 + 2 × 10 + 1 × 1
= 4000 + 300 + 20 + 1
= 4321
```

Generalizing this derivation to any PNS with positive integer radix `B > 1`:

    … + d₃×B³ + d₂×B² + d₁×B¹ + d₀×B⁰

summarizes to

    Σ {i=0} dᵢBⁱ

```
  d₃×B³ + d₂×B² + d₁×B¹ + d₀×B⁰
= d₃×B³ + d₂×B² + d₁×B¹ + d₀×B⁰
= d₃×B³ + d₂×B² + d₁×B  + d₀×1
```

>For any radix, the units value is always equal to the face value of the corresponding digit since `d₀ × B⁰ = d₀ × 1 = d₀`.

>For any radix, the "tens" value is always equal to the face value of the corresponding digit times the radix: `d₀ × B¹ = d₀ × B = d₀×B`.

>For any radix, `B`, the unique numerals range from `0..B-1`. This means that the number `B` is always represented as `(10)ʙ`; e.g. for B=16, number `(10)₁₆` is `1×16 + 0 = 16`, which is just `B`.


For example, with `B=4` and the number

    (2301)₅

Note: numbers in base other then 10 (in mixed PNS also these) are usually denoted in parens that is subscripted with the base.

In `(2301)₅`, the units place numeral is `1`, so its value is calculated by: its *face value* times the *radix raised to the position's index*. Here, the face value is `1` and the index of this position is 0, so we get: `1 × 5⁰ = 1`. This is the value of the "units" position only. We calculate the value of the "tens" position thus: `0 × 5¹ = 0`. This shows that whenever the face value of a digit is 0, we need not calculate further. The value of the next position is `3×5² = 3×25 = 75`. The value of the final position is: `2×5³=2×5×5×5 = 10×25 = 250`. Now, we need to sum up all the position values, `250+75+0+1`, to get the value of this number, `326`.

```
(2301)₅
= 2×5³  + 3×5² + 0×5¹ + 1×5⁰
= 2×125 + 3×25 + 0×5  + 1×1
= 250   + 75   + 0    + 1
= 326
```


This means that the value of the units digit, `d₀`, is always its *face value*.

Each digit, `d`, has a value in range `0..B-1`. Noramally, the digits are ordered by value with the lowest being `0`, then 1, etc., with the last as `B-1`. For example, with B=6, the face value of digits when ordered are: 0-5.

In the binary system, `B` is 2, so there are only 2 digits: one to represent 0 and another to represent B-1 = 2-1 = 1
- number `0` is represented by the numeral `0`
- number `1` is represented by the numeral `1`

For number systems with B < 11, the numerals are not very interesting since they correspond to Hindu-Aribic numerals of the decimal system. When B >= 11, the convention is to associate (lowercase) letters of the English alphabet.

So, in the number system with 
- B = 11, number 10 is denoted by numeral `a`
- B = 12, number 10 is `a`, 11 is `b`
- B = 13, 10 is `a`, 11 is `b`, 12 is `c`
- B = 14, 10 is `a`, 11 is `b`, 12 is `c`, 13 is `d`
- B = 15, 10 is `a`, 11 is `b`, 12 is `c`, 13 is `d`, 14 is `e`
- B = 16, 10 is `a`, 11 is `b`, 12 is `c`, 13 is `d`, 14 is `e`, 15 is `f`

The number system with base 16 is called hexadecimal; hex numerals, ordered in ascending ordered, are {0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f}.

The binary number system is also a PNS with the smallest possible radix (as per our constraints) of 2.
