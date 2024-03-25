# Double-precision binary floating-point format

https://en.wikipedia.org/wiki/Double-precision_floating-point_format

*Double-precision floating-point format* (FP64 or float64) is a floating-point number format, usually occupying 64 bits in computer memory; it represents a wide dynamic range of numeric values by using a floating radix point.

- decimal64: 64-bit base-10 double precision format
- binary64:  64-bit base-2 double precision format

name      | bits | sign | exponent | significand       | significand precision
----------|-----:|-----:|---------:|-------------------:----------------------
binary16  |   16 |    1 |        5 |                10 |   11
binary32  |   32 |    1 |        8 |                23 |   24
binary64  |   64 |    1 |       11 |                52 |   53
binary128 |  128 |    1 |       15 |               112 |  113
binary256 |  256 |    1 |       19 |               236 |  237


15  =  `5`      `10`
       +3       +13
31  =  `8`      `23`   +16
       +3       +29     ²⁵
63  = `11`      `52`   +31
       +4       +60     ³³
127 = `15`     `112`   +64
       +5      +124     ⁶³
255 = `19`     `236`  +127
       +6      +250
511 = `25`     `486`
-----------------------------
*2-1  ++1               2ⁿ / 2ⁿ-1
      3,3,4,5,6


https://en.wikipedia.org/wiki/Half-precision_floating-point_format
https://en.wikipedia.org/wiki/Single-precision_floating-point_format
https://en.wikipedia.org/wiki/Double-precision_floating-point_format
https://en.wikipedia.org/wiki/Quadruple-precision_floating-point_format
https://en.wikipedia.org/wiki/Octuple-precision_floating-point_format


Floating point is used to represent fractional values, or when a wider range is needed than is provided by fixed point (of the same bit width), even if at the cost of precision. Double precision may be chosen when the range or precision of single precision would be insufficient.

In the IEEE 754-2008 standard, the *64-bit base-2 double precision format* is officially referred to as `binary64` (it was called 'double' in IEEE 754-1985).

IEEE 754 specifies additional floating-point formats, including *32-bit base-2 double precision format* (`binary32`) and base-10 representations.

One of the first programming languages to provide single and double precision floating-point data types was Fortran. Before the widespread adoption of IEEE 754-1985, the representation and properties of floating-point data types depended on the computer manufacturer and computer model, and upon decisions made by programming-language implementers; e.g. GW-BASIC's double-precision data type was the 64-bit MBF floating-point format.

## Contents

- IEEE 754 double-precision binary floating-point format: binary64
  - Exponent encoding
  - Endianness
  - Double-precision examples
  - Execution speed with double-precision arithmetic
  - Precision limitations on integer values
- Implementations
  - C and C++
  - Fortran
  - Common Lisp
  - Java
  - JavaScript
  - JSON

## Double-precision binary floating-point: binary64

Double-precision binary floating-point, `binary64`, is a commonly used format on PC, due to its wider range over single-precision floating point (binary32), in spite of its performance and bandwidth cost. It is commonly known simply as 'double'. The IEEE 754 standard specifies a binary64 as having:
-  1  Sign bit: 1 bit
- 11  Exponent: 11 bits
- 52  Significand precision: 53 bits (52 explicitly stored)

The *sign bit* determines the sign of the number (including when this number is zero, which is signed).

The *exponent field* is an 11-bit unsigned integer from 0 to 2047, in biased form: an exponent value of 1023 represents the actual 0. Exponents range from −1022 to +1023 because exponents of −1023 (all 0s) and +1024 (all 1s) are reserved for special numbers.

## Procedure
