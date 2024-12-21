# UTF-16

**UTF-16**. A multibyte encoding for text that represents each Unicode character with *2 or 4 bytes*; it is not backward-compatible with ASCII. It is the internal form of Unicode in many programming languages, such as Java, C#, and JavaScript, and in many OSs. More technically:
1. The UTF-16 encoding form
2. The UTF-16 encoding scheme
3. "Transformation format for 16 planes of Group 00," defined in Annex C of ISO/IEC 10646:2003; technically equivalent to the definitions in the Unicode Standard.

**UTF-16 Encoding Form**. The Unicode encoding form that assigns each *Unicode scalar value* in the ranges `U+0000..U+D7FF` and `U+E000..U+FFFF` to a *single unsigned 16-bit code unit* with the same numeric value as the Unicode scalar value, and that assigns each Unicode scalar value in the range `U+10000..U+10FFFF` to a *surrogate pair*, according to Table 3-5, "UTF-16 Bit Distribution." (See definition D91 in Section 3.9, Unicode Encoding Forms.)

**UTF-16 Encoding Scheme**. The UTF-16 encoding scheme that serializes a UTF-16 code unit sequence as a byte sequence in either big-endian or little-endian formats. (See definition D98 in Section 3.10, Unicode Encoding Schemes.)

**UTF-16BE**. The Unicode encoding scheme that serializes a UTF-16 code unit sequence as a byte sequence in big-endian format. (See definition D96 in Section 3.10, Unicode Encoding Schemes.)

**UTF-16LE**. The Unicode encoding scheme that serializes a UTF-16 code unit sequence as a byte sequence in little-endian format. (See definition D97 in Section 3.10, Unicode Encoding Schemes.)



## UTF-16

UTF-16 (16-bit Unicode Transformation Format) is a character encoding capable of encoding all 1,112,064 valid code points of Unicode.

The encoding is variable-length, as code points are encoded with one or two 16-bit code units.


UTF-16 is used internally by systems such as Windows and often for plain text and for word-processing data files on Windows.

Languages that use UTF-16: JavaScript, C#, Java

> Windows: allowed characters in filenames
> - In Win32 namespace:
>  any UTF-16 code unit (case-insensitive) except `/\:*"?<>|` and `NUL`
> - In POSIX (subsystem) namespace:
>  any UTF-16 code unit (case-sensitive) except `/` and `NUL`



## History

The early 2-byte encoding was usually called "Unicode", but is now called "UCS-2". UCS-2 differs from UTF-16 by being a constant length encoding and only capable of encoding characters of BMP.

Early in this process it became increasingly clear that 2^16 characters would not suffice, and IEEE introduced a larger 31-bit space and an encoding (UCS-4) that would require 4 bytes per character. This was resisted by the Unicode Consortium, both because 4 bytes per character wasted a lot of disk space and memory, and because some manufacturers were already heavily invested in 2-byte-per-character technology. The UTF-16 encoding scheme was developed as a compromise to resolve this impasse in version 2.0 of the Unicode standard in July 1996 and is fully specified in RFC 2781 published in 2000 by the IETF.

In UTF-16, code points greater or equal to 2^16 are encoded using two 16-bit code units. The standards organizations chose the largest block available of un-allocated 16-bit code points to use as these code units. Unlike UTF-8 they did not provide a means to encode these code points.


U+0000 to U+D7FF and U+E000 to U+FFFF
UTF-16 (and UCS-2) encode code points in this range as single 16-bit code units that are numerically equal to the corresponding code points.

U+010000 to U+10FFFF
Code points from the other planes (called Supplementary Planes) are encoded as two 16-bit code units called a surrogate pair, by the following scheme:
* 0x10000 is subtracted from the code point, leaving a 20-bit number in the range 0x00000–0xFFFFF.
* The high ten bits (in the range 0x000–0x3FF) are added to 0xD800 to give the first 16-bit code unit or high surrogate, which will be in the range 0xD800–0xDBFF.
* The low ten bits (also in the range 0x000–0x3FF) are added to 0xDC00 to give the second 16-bit code unit or low surrogate, which will be in the range 0xDC00–0xDFFF.


U+D800 to U+DFFF
The Unicode standard permanently reserves these code point values for UTF-16 encoding of the high and low surrogates, and they will never be assigned a character, so there should be no reason to encode them. The official Unicode standard says that no UTF forms, including UTF-16, can encode these code points.
