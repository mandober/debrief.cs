# UCS

Universal Character Set has a capacity to encode **1,114,112 (0x110000)characters**.

Each UCS character is abstractly represented by a code point, which is an integer between 0 and 1,114,111, used to represent each character within the internal logic of text processing software.
- 1,114,112 potential code points (2^20 + 2^16)

As of Unicode 10.0, released in June 2017:
- 834,096 (75%) unallocated
- 280,016 (25%) allocated:
  - 136,755 (12%) assigned characters
  - 137,468 (12.3%) reserved for private use
  - 2,048 surrogates
  - 66 designated non-characters

The number of encoded characters is made up as follows:
- 136,537 graphical characters (some of which do not have a visible glyph, but are still counted as graphical)
- 218 special purpose characters for control and formatting.

The UCS can be divided in various ways, such as by plane, block, character category, or character property.
