# Range of binary numbers

Mathematical integers are represented in binary in several classes each of which is assigned a certain number of bits `n`, where `n` is 8, 16, 32, 64,...

All these classes of numbers come in two flavors: signed and unsigned. 
*Signed numbers* are distributed with 0 at the center, while *unsigned numbers* only represent non-negative intergers.

The range of *unsigned numbers* that can be represented with `n` bits: from `0 .. 2ⁿ-1`.

The unsigned range is easy: we have `2ⁿ` different patterns, which we can distribute the most sensibly as starting with 0 and then accomodating as many successors as allowed, which is one less then `2ⁿ`. So the range of unsigned integers a number of bits `n` is `0 .. 2ⁿ-1`.

The range of *signed numbers* that can be represented with `n` bits: from `-2ⁿ⁻¹ .. 2ⁿ⁻¹-1`.

For the signed range, we split the distribution of numbers down the (almost) middle, so we get 2 times `2ⁿ⁻¹`, i.e. `2ⁿ = 2¹ × 2ⁿ⁻¹ = 2¹ ᐩ ⁿ⁻¹`.

We have a slider (aliding window) that is `n` bits wide, so we can set its origin anywhere, but the only reasonable place is to set it at 0 for maximizing the number of non-negative integers. To represent both negative and positive numbers, we'd set the center of this slider at 0. However, since `n` is usually an even number (we can represent an even number of integers), the implication is that we have an imbalance when we eant to represent both negative and positive number in the equal measure. This is because of `2ⁿ` possibilities, 1 possibility covers the zero, so we are left with odd number of remaining possibilities to distribute on the representation of negative and positive integers. The decision to have one more negative number then the positives has to do with the ease of doing arithemtic in binary, in the corresponding two's compliment representation.


The number of bits `n` (also called the *width*, so a number is n-bit wide) is usually set to a power of two as `2ᵐ`, so `n = 2ᵐ`, where `m = 3, 4, 5, 6, …`.

8-bit numbers:
- `n` = 8
- `m` = 3 (2³ = 8)
- signed range: `-2⁷ .. 2⁷-1`
- unsigned range: `0 .. 2⁸-1`
- `char`, `signed char`, `unsigned char` in C
- `i8` (signed) and `u8` (unsigned) in Rust

16-bit numbers:
- `n` = 16
- `m` = 4 (2⁴ = 16)
- signed range: `-2¹⁵ .. 2¹⁵-1`
- unsigned range: `0 .. 2¹⁶-1`
- `short` (`signed short`), `unsigned short` in C
- `i16` (signed) and `u16` (unsigned) in Rust

32-bit numbers:
- `n` = 32
- `m` = 5 (2⁵ = 32)
- signed range: `-2³¹ .. 2³¹-1`
- unsigned range: `0 .. 2³²-1`
- `int` (`signed int`), `unsigned int` in C
- `i32` (signed) and `u32` (unsigned) in Rust

64-bit numbers:
- `n` = 64
- `m` = 6 (2⁶ = 64)
- signed range: `-2⁶³ .. 2⁶³-1`
- unsigned range: `0 .. 2⁶⁴-1`
- `long` (`signed long`), `unsigned long` in C
- `i64` (signed) and `u64` (unsigned) in Rust
