# CS :: Data :: Binary representation

- Numbers and numerals
  - number
  - numeral
  - digit
  - number representations
  - number (numeral systems)
  - properties of numbers
  - properties of numerals
- Number Systems
  - number systems classification (wrt to positioning)
    - positional
    - non-positional
      - tally marks
      - unary number systems
      - Peano numbers
      - Roman numerals
      - etc.
- Positional Number System (PNS)
  - base or radix (B)
  - set of unique numerals: {0 .. B - 1}
  - denotation of numerals
    - 0-9  (2 < B < 10)
    - a-z (10 < B < 37)
    - A-Z ()
  - face value
  - position value
  - position index

Base and the set of numerals, N
  B,      N = {0, B-1}
- B = 2,  N = {0, 1}
- B = 3,  N = {0, 1, 2}
- B = 4,  N = {0, 1, 2, 3}
- B = 8,  N = {0-7}
- B = 9,  N = {0-8}
- B = 10, N = {0-9}
- B = 11, N = {0-9, a}
- B = 12, N = {0-9, a, b}

Base | Numerals
-----|-------------
2    | 0, 1
3    | 0, 1, 2
4    | 0-3
8    | 0-7
10   | 0-9
11   | 0-9, a
12   | 0-9, a, b
14   | 0-9, a-d
16   | 0-9, a-f
18   | 0-9, a-h
20   | 0-9, a-j
22   | 0-9, a-l
24   | 0-9, a-n
26   | 0-9, a-p
28   | 0-9, a-r
30   | 0-9, a-t
32   | 0-9, a-v
34   | 0-9, a-x
36   | 0-9, a-z
62   | 0-9, a-z, A-Z
63   | 0-9, a-z, A-Z, _
64   | 0-9, a-z, A-Z, _, +



- [Powers of two](./powers-of-two.md)
- [Binary number system](./binary-number-system.md)
- [Relation between binary and hex](./relation-between-binary-and-hex.md)
- [Range of binary numbers](./range-of-binary-numbers.md)
  - Number of bits used in a number representation
  - Binary representation of integers
- one's compliment
- two's compliment
- bit-wise operations
