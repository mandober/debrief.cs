# Representing integers

Representation of whole numbers specifies a way of encoding a number as a sequence of binary digits.

Sets of numbers:
- B, Booleans: true (1), false (0)
- N, natural numbers: zero and positive numbers
- Z, integers: naturals + negative numbers
- Q, rational numbers: Z + ratios (fractions)
- R, real numbers: rationals + irrationals

## Booleans
Representing Boolean values requires having 2 distinct states, which is condition met by a single bit; however, because a byte is the smallest accessible data unit, Booleans are usually represented using the whole byte, with the LSB bit encoding the value, with the other 7 bits (potentially) wasted. When encoded this way, a Boolean value is interpreted as unsigned 8-bit integer, with 1, generally standing for `true` and 0 for `false`.

An optimization could be employed, if there is a need to keep multiple Boolean values (e.g. used in a program), by creating a bit-field struct. Some programming languages (C) support it directly, but if there's no in-build support, it is easily replaced with an 8-bit unsigned integer.


## Natural numbers
Representing natural numbers (including zero) on a computer maps to the grouping of bits in a straightforward manner.

A single bit is already sufficient to represent Booleans, 


Representation strategies
- sign and magnitude
- one's complement
- two's complement


In mathematical notation, a sequence of digits can be of any length, and the location of the radix point is indicated explicitly. **Radix point** is a symbol used to separate the integer part from the fractional part of a number (dot or comma). In the decimal system the radix point is called the **decimal point**, in the binary system, it is the **binary point**.

If the radix point is not specified, then the sequence implicitly represents an integer and the unstated radix point would be off the right-hand end of the sequence, next to the least significant digit (LSD).
