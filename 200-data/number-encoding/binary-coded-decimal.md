# Binary Coded Decimal

https://en.wikipedia.org/wiki/Binary-coded_decimal
https://en.wikipedia.org/wiki/Excess-3
https://en.wikipedia.org/wiki/Gray_code

**Binary-coded decimal** (BCD) is a class of binary encodings of decimal nums where each digit is represented by a fixed number of bits, usually 4 or 8. Sometimes, special bit patterns are used for a sign or other indications (e.g. error or overflow).

Binary Coded Decimal (BCD) that represents decimal digits using 4-bit binary numbers, never uses come bit combinations; i.e it uses 4 bits to represent numbers 0-9, but 4 bits can represent 16 different values.

For example,
- (1059)⏨ is (0001 0000 0101 1001)₂ as BCD
- (99)⏨ = (10011001)₂ using a byte

The term *unpacked BCD* usually implies using 8 bits (a full byte) for each digit (often including a sign), whereas *packed BCD* typically encodes 2 digits within a single byte since 4 bits are enough to represent the range 0 to 9. The precise 4-bit encoding, however, may vary for technical reasons.

The ten states representing a BCD digit are sometimes called *tetrades* (the nibble typically needed to hold them is also known as a tetrade) while the unused, dont-care-states are named pseudo-tetrades, pseudo-decimals or pseudo-decimal digits.

BCD's main virtue, in comparison to binary positional systems, is its more accurate representation and rounding of decimal quantities, as well as its ease of conversion into conventional human-readable representations. Its principal drawbacks are a slight increase in the complexity of the circuits needed to implement basic arithmetic as well as slightly less dense storage.

BCD was used in many early decimal computers, and is implemented in the instruction set of machines such as the IBM System/360 series and its descendants, DEC's VAX, the Burroughs B1700, and the Motorola 68000-series processors.

BCD per se is not as widely used as in the past, and is unavailable or limited in newer instruction sets (e.g. ARM; x86 in long mode). However, *decimal fixed-point* and *decimal floating-point* formats are still important and continue to be used in financial, commercial, and industrial computing, where the subtle conversion and fractional rounding errors that are inherent in binary floating point formats cannot be tolerated.

## Background

BCD takes advantage of the fact that any one decimal numeral can be represented by a 4-bit pattern. An obvious way of encoding digits is **Natural BCD (NBCD)**, where each decimal digit is represented by its corresponding 4-bit binary value. This is also called *BCD-8421 encoding*. (The 4-bit 8421 BCD code with an extra parity bit applied as least significant bit to achieve odd parity of the resulting 5-bit code is also known as *Ferranti code*).

- DEcimal   6
- BCD-8421  0110
- BCD-4221  1100
- BCD-7421  0110
- BCD-EXC3  1001

This scheme can also be referred to as Simple Binary-Coded Decimal (SBCD) or **BCD 8421**, and is the most common encoding.

Others include the so-called **BCD 4221** and **BCD 7421** encoding - named after the weighting used for the bits - and **Excess-3**.

For example, the BCD digit 6 is
- 0110 in BCD-8421
- 1100 in BCD-4221 (two encodings are possible)
- 0110 in BCD-7421
- 1001 in Excess-3 (6+3=9)

With 4 bits at our disposal - which can repr 16 different values - we can represents the ten required values, 0-9, in many, many different ways. In fact, since only 3 bits are sufficient to repr decimals 0-7, we immediate see several new BCD encoding versions arising by decreasing the weight of the msb, as seen in the table below:

p | 8 4 2 1 | 7 4 2 1 | 6 4 2 1 | 5 4 2 1 | 4 4 2 1 |
==|=========|=========|=========|=========|=========|
0 | 0 0 0 0 | 0 0 0 0 | 0 0 0 0 | 0 0 0 0 | 0 0 0 0 |
1 | 0 0 0 1 | 0 0 0 1 | 0 0 0 1 | 0 0 0 1 | 0 0 0 1 |
2 | 0 0 1 0 | 0 0 1 0 | 0 0 1 0 | 0 0 1 0 | 0 0 1 0 |
3 | 0 0 1 1 | 0 0 1 1 | 0 0 1 1 | 0 0 1 1 | 0 0 1 1 |
4 | 0 1 0 0 | 0 1 0 0 | 0 1 0 0 | 0 1 0 0 | 0 1 0 0 |
5 | 0 1 0 1 | 0 1 0 1 | 0 1 0 1 | 0 1 0 1 | 0 1 0 1 |
6 | 0 1 1 0 | 0 1 1 0 | 0 1 1 0 | 0 1 1 0 | 0 1 1 0 |
  |=========|=========|=========|=========|=========|
7 | 0 1 1 1 | 0 1 1 1 | 0 1 1 1 | 0 1 1 1 | 0 1 1 1 |
7 | 0 1 1 1 | 1 0 0 0 | 1 0 0 1 | 1 0 1 0 | 1 0 1 1 |
8 | 1 0 0 0 | 1 0 0 1 | 1 0 1 0 | 1 0 1 1 | 1 1 0 0 |
9 | 1 0 0 1 | 1 0 1 0 | 1 0 1 1 | 1 1 0 0 | 1 1 0 1 |

Each of the 4 positions (bits) must be either 0 or 1, but we can then impose our interpretation on the positions mean, e.g. normally, they are powers of 2 (8, 4, 2, 1), but we can declare then to be some other powers, or something else entirely. In the end, of the 16 available bit-patters we will use 10 bit-patterns to encode our version of the 10 decimal numbers; except we can associate a gratiously complex interpretation to it.
