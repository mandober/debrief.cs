# Binary Number System

The binary number system is apositional system of numbers similar to the usual decimal number system except that the base (radix) is 2 instead of 10.

In decimal number system, the base (radix) is 10, `B = 10`, which means

```
4321
= 4×10³ + 3×10² + 2×10¹ + 1×10⁰
= 4×1000 + 3×100 + 2×10 + 1×1
= 4000 + 300 + 20 + 1
= 4321
```

Generalizing this to any number system with positive integer radix `B`:

… + d₃×B³ + d₂×B² + d₁×B¹ + d₀×B⁰

>Σ {i=0} dᵢBⁱ

Each digit, `d`, ha a values in range `0 .. B-1`. Noramally, the digits are ordered by value with the lowest being `0`, then 1, ..., and finally `B-1`. For example, with B=10, the face value of digits when ordered are: 0, 1, 2, …, 10-1. 

In binary system, B = 2, so there are only 2 digits: one to represent 0 and another to representat B - 1 = 2 - 1 = 1. 
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






## Unsigned Binary

Unsigned binary is binary that does not have a **sign bit**, therefore it cannot represent a negative number. Unsigned binary numbers are also integers, so they can be easily understood by humans.

Due to this format not using the sign bit, the total number of numbers this format can represent is `2ⁿ`, where `n` is the number of bits used. Due to the range strating with 0 (min), the max is `2ⁿ-1`.


## Unsigned Binary arithmetic

Addition and subtraction of unsigned binary is documented in the Logic Gates page.

## Signed binary using two's complement

Integers that can be positive or negative can be represented in binary as signed numbers. Using 8 bits, the following can be shown:
\`
{:
(0\ 0001001 = 9),
(1\ 1110110 = -10),
(1\ 1110111 = -9)
:}
\`

The first bit denotes the sign of the number, and the rest of the bits denote the magnitude of the number, in this case 9. Negative numbers are represented using two's complement, where the digits are inverted, and 1 is added.

## Underflow and overflow

Overflow errors happen when there are not enough bits in the register or memory to store a value. This is due to the maximum value a register can hold being exceeded, so there are not enough bits to store them. When this happens, data is lost, causing problems for many applications.


## Bit patterns

There are many ways in which bit patterns are used to store and represent other forms of data. One example of this is Pulse Code Modulation, a way of storing analogue sound waves as digital bit patterns.

These values sampled from the analogue wave would be stored as the binary representation of each value.
