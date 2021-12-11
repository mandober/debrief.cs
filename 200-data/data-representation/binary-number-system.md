# Binary Number System


## Unsigned Binary

Unsigned binary is binary that does not have a **sign bit**, therefore it cannot represent a negative number. Unsigned binary numbers are also integers, so they can be easily understood by humans.

Due to this format not using the sign bit, the total number of numbers this format can represent is \`2^n\`, where n is the number of bits used. As *0* counts as one of these numbers, the actual maximum is \`2^n -1\`. The minimum is 0, as there are no negative numbers.

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
