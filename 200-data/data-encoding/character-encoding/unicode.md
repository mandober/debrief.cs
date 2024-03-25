# Unicode

name            | from |     to |  hex   |   total    | dec range   |
----------------|-----:|-------:|--------|-----------:|------------:|
Code points     |    0 | 10FFFF |        |  ‭1,114,112‬ |   1,112,064 valid
1 byte (ASCII)  |    0 |     7F |     7F |            |
2 bytes         |   80 |    7FF |    ‭77F |      1,920 |    128 - 2,047
3 bytes         |  800 |   FFFF |        |     63,488 |  2,048 - 65,535
4 bytes         |10000 | 10FFFF |        | 10,485,756 | 65,535 - ‭1,114,111‬
Scalar values   |    0 |   D7FF |        |            |
Surrogates      | D800 |   DFFF | 800    |      2,048 |
High surrogates | D800 |   DBFF | 380    |        896 | 894
Low surrogates  | DC00 |   DFFF | ‭3FF‬    |            |
Scalars value   | E000 | 10FFFF | ‭101FFF‬ |  ‭1,056,767‬ |

U+0000 - U+FFFF, range called the *Basic Multilingual Plane (BMP)*

name                         | hex
-----------------------------|-----
ZERO WIDTH NON-JOINER (ZWNJ) | 200C
ZERO WIDTH JOINER (ZWJ)      | 200D
REPLACEMENT CHARACTER        | FFFD
Byte Order Mark (BOM)        | FEFF



## Code Point Type
Any of the 7 fundamental classes of code points in the standard: 
- Graphic
- Format
- Control
- Private-Use
- Surrogate
- Non-character
- Reserved

## Unicode Code Point
1. Any value in the Unicode codespace, from 0 to U+10FFFF; not all code points are assigned to encoded characters.
2. A value, or position, for a character, in any coded character set.

## Unicode Scalar Value
Any Unicode code point except high-surrogate and low-surrogate code points. It is in the range: 0 to U+D7FF and U+E000 to 10FFFF inclusive.

## Surrogate Code Point
A Unicode code point in the range U+D800 - U+DFFF. Reserved for use by UTF-16, where a surrogate pair "stands in" for a supplementary code point.

## Surrogate Pair
A representation for a single abstract character - a sequence of two 16-bit code units, where the first value of the pair is a high-surrogate code unit, and the second is a low-surrogate code unit.

## ASCII
The set of 128 Unicode characters from U+0000 to U+007F, including control codes as well as graphic characters. ASCII completely maps to UTF-8 Unicode encoding; this means that any ASCII encoded text is valid UTF-8.

## Byte Order Mark (BOM)
The Unicode character U+FEFF when used to indicate the byte order of a text. 

## Canonical
1. Conforming to the general rules for encoding-that is, not compressed, compacted, or in any other form specified by a higher protocol.
2. Characteristic of a normative mapping and form of equivalence specified in Chapter 3, Conformance.

## Canonical Composition
A step in the algorithm for Unicode Normalization Forms, during which decomposed sequences are replaced by primary composites, where possible. (See definition D115 in Section 3.11, Normalization Forms.)

## Canonical Decomposable Character
A character that is not identical to its canonical decomposition. (See definition D69 in Section 3.7. Decomposition.)

## Canonical Decomposition
Mapping to an inherently equivalent sequence-for example, mapping ä to a +  combining umlaut. (For a full, formal definition, see definition D68 in Section 3.7. Decomposition.)

## Canonical Equivalent
Two character sequences are said to be canonical equivalents if their full canonical decompositions are identical. (See definition D70 in Section 3.7. Decomposition.)

## Character
1. The smallest component of written language that has semantic value; refers to the abstract meaning and/or shape, rather than a specific shape, though in code tables some form of visual representation is essential for the reader's understanding.
2. Synonym for abstract character.
3. The basic unit of encoding for the Unicode character encoding.
4. The English name for the ideographic written elements of Chinese origin.

## Glyph
1. An abstract form that represents one or more glyph images.
2. A synonym for glyph image. In displaying Unicode character data, one or more glyphs may be selected to depict a particular character. These glyphs are selected by a rendering engine during composition and layout processing.


**Abstract character** is a unit of information used for the organization, control, or representation of textual data. It has no concrete form and should not be confused with a glyph. It does not necessarily correspond to what a user thinks of as a "character" and should not be confused with a grapheme. Abstract character sequence is an ordered sequence of one or more abstract characters.

**Unicode codespace** is a range of integers `from 0 to 0x10FFFF`. **Code point** is any value in the Unicode codespace. **Code point type** is any of the seven fundamental classes of code points in the standard: Graphic, Format, Control, Private-Use, Surrogate, Noncharacter, Reserved.

**Block** is a named range of code points for organizing allocation of chars. The range for each block is defined as a contiguous sequence; a block cannot consist of two (or more) discontiguous sequences of code points.  Each range for a defined block starts with a value for which `code point MOD 16 = 0` and terminates with a larger value for which `code point MOD 16 = 15`. This specification results in block ranges which always include full code point columns for code chart display. A block never starts or terminates in mid-column. All assigned characters are contained within ranges for defined blocks. Blocks may contain reserved code points, but no block contains only reserved code points. The majority of reserved code points are outside the ranges of defined blocks.

**Encoded character** is an association (or mapping) between an abstract character and a code point. While an encoded character is formally defined in terms of the mapping between an abstract character and a code point, informally it can be thought of as an abstract character taken together with its assigned code point. 

Occasionally, for compatibility with other standards, a single abstract character may correspond to more than one code point. For example, "Å" corresponds both to U+00C5 "LATIN CAPITAL LETTER A WITH RING ABOVE" and to 
U+212B "ANGSTROM SIGN". 

A single abstract character may also be represented by a sequence of code points. For example, latin capital letter 'G' with acute may be represented by the sequence `<U+0047 latin capital letter g, U+0301 combining acute accent>`, rather than being mapped to a single code point.

**Noncharacter** is a code point that is permanently reserved for internal use. Noncharacters consist of the values `U+nFFFE` and `U+nFFFF` (where `n` is from 0 to 1016) and the values `U+FDD0..U+FDEF`. These code points are permanently reserved as noncharacters.

**Reserved code point** is any code point of the Unicode Standard that is reserved for future assignment. Also known as an unassigned code point. Surrogate code points and noncharacters are considered assigned code points, but not assigned characters.


http://www.unicode.org/glossary/
