# Floating-point arithmetic

https://en.wikipedia.org/wiki/Floating-point_arithmetic
https://www3.ntu.edu.sg/home/ehchua/programming/java/datarepresentation.html

Floating-point numbers (FP) represents a subset of real numbers, ℝ, using an integer with a fixed precision, *significand*, scaled by an integer *exponent* of a fixed base. Numbers of this form are called floating-point numbers.

## Examples
- 0.5 = 5×10⁻¹
- 2.3434e−6 = 2.3434 × 10⁻⁶ = 2.3434 × 0.000001 = 0.0000023434

## Examples with 12,345
- 12345 ⨯ 10⁻⁶ = 12345e-6 = 12345 ⨯         0.000001 =              0.012345
- 12345 ⨯ 10⁻⁵ = 12345e-5 = 12345 ⨯         0.00001  =              0.12345
- 12345 ⨯ 10⁻⁴ = 12345e-4 = 12345 ⨯         0.0001   =              1.2345
- 12345 ⨯ 10⁻³ = 12345e-3 = 12345 ⨯         0.001    =             12.345
- 12345 ⨯ 10⁻² = 12345e-2 = 12345 ⨯         0.01     =            123.45
- 12345 ⨯ 10⁻¹ = 12345e-1 = 12345 ⨯         0.1      =          1,234.5
- 12345 ⨯ 10⁰  = 12345    = 12345 ⨯         1        =         12,345
- 12345 ⨯ 10¹  = 12345e1  = 12345 ⨯        10        =        123,450
- 12345 ⨯ 10²  = 12345e2  = 12345 ⨯       100        =      1,234,500
- 12345 ⨯ 10³  = 12345e3  = 12345 ⨯     1,000        =     12,345,000
- 12345 ⨯ 10⁴  = 12345e4  = 12345 ⨯    10,000        =    123,450,000
- 12345 ⨯ 10⁵  = 12345e5  = 12345 ⨯   100,000        =  1,234,500,000
- 12345 ⨯ 10⁶  = 12345e6  = 12345 ⨯ 1,000,000        = 1,2345,000,000

## Examples with 0.12345
- 0.12345e-6 = 0.12345 × 10⁻⁶ = 0.12345 ×         0.000001 = 0.00000012345
- 0.12345e-5 = 0.12345 × 10⁻⁵ = 0.12345 ×         0.00001  = 0.0000012345
- 0.12345e-4 = 0.12345 × 10⁻⁴ = 0.12345 ×         0.0001   = 0.000012345
- 0.12345e-3 = 0.12345 × 10⁻³ = 0.12345 ×         0.001    = 0.00012345
- 0.12345e-2 = 0.12345 × 10⁻² = 0.12345 ×         0.01     = 0.0012345
- 0.12345e-1 = 0.12345 × 10⁻¹ = 0.12345 ×         0.1      = 0.012345
- 0.12345    = 0.12345 × 10⁰  = 0.12345 ×         1        = 0.12345
- 0.12345e1  = 0.12345 × 10¹  = 0.12345 ×        10        = 1.2345
- 0.12345e2  = 0.12345 × 10²  = 0.12345 ×       100        = 12.345
- 0.12345e3  = 0.12345 × 10³  = 0.12345 ×     1,000        = 123.45
- 0.12345e4  = 0.12345 × 10⁴  = 0.12345 ×    10,000        = 1234.5
- 0.12345e5  = 0.12345 × 10⁵  = 0.12345 ×   100,000        = 12345
- 0.12345e6  = 0.12345 × 10⁶  = 0.12345 × 1,000,000        = 123450



The **significand** (also *mantissa* or *coefficient*, sometimes also *argument*, or, ambiguously, *fraction* or *characteristic*) is part of a number in scientific notation or in floating-point representation, consisting of its significant digits. Depending on the interpretation of the exponent, the significand may represent an integer or a fraction.

`±m E ±n = m × 10ⁿ` where 1 <= |m| < 10

In scientific notation, nonzero numbers are written in the form `± m × 10ⁿ`, where the exponent `n` is an integer, and the coefficient `±m` is a nonzero real number. In *normalized notation*, the exponent `n` is chosen so that the absolute value (modulus) of the significand `m` is `1 <= |m| < 10` written as a terminating decimal (decimal numeral with a finite number of non-zero digits after the decimal separator); e.g. 350 is 3.5×10². The exponent `n` is negative for a number with absolute value between 0 and 1, e.g. 0.5 is 5×10⁻¹.

Floating-point arithmetic operations, such as addition and division, approximate the corresponding real number arithmetic operations by rounding any result that is not a floating-point number itself to a nearby floating-point number.  For example, in a floating-point arithmetic with 5 base-10 digits of precision, the sum 12.345 + 1.0001 = 13.3451 might be rounded to 13.345.

The term "floating point" refers to the fact that the number's *radix point* can "float" anywhere to the left, right, or between the significant digits of the number. This position is indicated by the exponent, so floating point can be considered a form of scientific notation.

A floating-point system can be used to represent, with a *fixed number of bits* (usually 32 or 64 bits), numbers of very different orders of magnitude. The result of this *dynamic range* is that the numbers that can be represented are not uniformly spaced; the difference between two consecutive representable numbers varies with their exponent.


`±m E ±n = m × 2ⁿ`
