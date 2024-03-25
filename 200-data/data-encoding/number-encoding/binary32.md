

## Procedure

https://www.youtube.com/watch?v=RuKkePyo9zk&list=TLPQMjUwNjIwMjMn6Fd3u-Auxg&index=3

binary32 = 1 / 8 / 23
binary32 = 1 / 8 (+127) / 23 (24)

- binary32
- 1 sign bit
- 23 significant bits stored (24-bit significant precision)
- 8 bits for exponent, 2⁸ = 256
- (+127) biased exponent offset, `(2ⁿ⁻¹) - 1`
- significant written left-to-right at bit#9, padded with 0's on the right

⁰ | ¹  ⁴ ⁵  ⁸ | ⁹   ¹³   ¹⁷   ²¹   ²⁵   ²⁹ ³¹ | 
0 | 0000 0000 | 0000 0000 0000 0000 0000 000  | 
1 | 1111 1111 | 1111 1111 1111 1111 1111 111  | 

sign bit
- 1 bit
- 0 for positive numbers
- 1 for negative numbers

exponent
- 8 bits, n=8
- range, 2⁸ = 256, [1..256], [0..255], [-128..127]
- biased exponent
- bias = +127, `(2ⁿ⁻¹) - 1`

significant
- 23 bits stored, n=23, m=24
- 24 bits implicit (coz of the always leading zero, 0.xxxx…), m=24
