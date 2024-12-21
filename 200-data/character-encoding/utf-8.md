# UTF-8

UTF-8 is a variable width character encoding capable of encoding all 1,112,064 valid Unicode code points, using 1 to 4 bytes. Backward compatible with ASCII.

Code points with lower numerical values, which tend to occur more frequently, are encoded using fewer bytes. The first 128 characters of Unicode, which correspond 1-1 with ASCII, are encoded using a single byte with the same binary value as ASCII, so that valid ASCII text is valid UTF-8 text as well.

Since ASCII bytes do not occur when encoding non-ASCII code points into UTF-8, UTF-8 is safe to use within most programming and document languages that interpret certain ASCII characters in a special way, such as "/" in filenames, "\" in escape sequences, and "%" in printf.


N| usage    | from  | to     | byte 1    | byte 2    | byte 3    | byte 4
-|----------|------:|-------:|-----------|-----------|-----------|--------
1|   7      |     0 |     7f | 0xxx.xxxx | -         | -         | -
2|11=5+6    |    80 |    7ff | 110x.xxxx | 10yy.yyyy | -         | -
3|16=4+6+6  |   800 |   ffff | 1110.xxxx | 10yy.yyyy | 10yy.yyyy | -
4|21=3+6+6+6| 10000 | 10ffff | 1111.0xxx | 10yy.yyyy | 10yy.yyyy | 10yy.yyyy



| B | b/cp | from  |  to    |  1.byte   |  2.byte   |  3.byte   |  4.byte   |
|---|-----:|------:|-------:|-----------|-----------|-----------|-----------|
| 1 |    7 |     0 |     7f | 0xxx_xxxx | -         | -         | -         |
| 2 |   11 |    80 |    7ff | 110x_xxxx | 10xx_xxxx | -         | -         |
| 3 |   16 |   800 |   ffff | 1110_xxxx | 10xx_xxxx | 10xx_xxxx | -         |
| 4 |   21 | 10000 | 10ffff | 1111_0xxx | 10xx_xxxx | 10xx_xxxx | 10xx_xxxx |

Legend: `B` - number of bytes, `b/pc` - bits per code point

- byte that doesn't have the high bit set is a single byte encoded character.
- bytes starting with F0-F7 indicate the first byte of 4 byte encoding
- bytes starting with E0-EF indicate the first byte of 3 byte encoding
- bytes starting with C0-DF indicate the first byte of 2 byte encoding
- continuation bytes start with 80-BF



### Multibyte ranges
1. The first 128 characters (US-ASCII) need one byte.
  - range: 0-7F (dec: 0 - 127)
  - code points: 128
2. The next 1,920 characters need 2 bytes to encode, which covers the remainder of almost all Latin-script alphabets, and also Greek, Cyrillic, Coptic, Armenian, Hebrew, Arabic, Syriac, Thaana and N'Ko alphabets, as well as Combining Diacritical Marks.
  - range: 80-7FF (dec: 128 - 2,047)
  - code points: 1,920
3. Three bytes are needed for characters in the rest of the Basic Multilingual Plane, which contains virtually all characters in common use including most Chinese, Japanese and Korean characters.
  - range: 800-FFFF (dec: 2,048 - 65,535)
  - code points: 63,488
4. Four bytes are needed for characters in the other planes of Unicode, which include less common CJK characters, various historic scripts, mathematical symbols, and emoji.
  - range: 10000-10FFFF (dec: 65,535 - ‭1,114,111‬)
  - code points: ‭10,485,756
