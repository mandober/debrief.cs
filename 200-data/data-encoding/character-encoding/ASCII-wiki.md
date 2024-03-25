## ASCII

https://en.wikipedia.org/wiki/ASCII

American Standard Code for Information Interchange (ASCII) is a character encoding standard for electronic communication. ASCII codes represent text in computers, telecommunications equipment, and other devices.

Because of technical limitations of computer systems at the time it was invented, ASCII has just 128 code points, of which only 95 are printable characters, which severely limited its scope. Modern computer systems have evolved to use Unicode, which has millions of code points, but the first 128 of these are the same as the ASCII set.

The Internet Assigned Numbers Authority (IANA) prefers the name US-ASCII for this character encoding. ASCII is one of the IEEE milestones.

## Contents

- Overview
- History
- Design considerations
  - Bit width
  - Internal organization
  - Character order
- Character set
- Character groups
  - Control characters
    - Delete vs backspace
    - Escape
    - End of line
    - End of file/stream
  - Control code chart
  - Printable characters
- Usage
- Variants and derivations
  - 7-bit codes
  - 8-bit codes
  - Unicode


## Overview

The first edition of the standard was published in 1963, underwent a major revision during 1967, and experienced its most recent update during 1986. Work on the ASCII standard began in May 1961, with the first meeting of the American Standards Association's (ASA) (now the American National Standards Institute, ANSI) X3.2 subcommittee, motivated by the desire for more convenient sorting (i.e. alphabetization) of lists and added features for devices other than teleprinters. The use of ASCII format for Network Interchange was described in 1969. That document was formally elevated to an Internet Standard in 2015.

Originally based on the English alphabet, ASCII encodes 128 specified characters into 7-bit integers as shown by the ASCII chart below.

128 characters include
- 33 control characters (32 + DEL)
- 95 printable characters
- SPACE
- digits 0 to 9
- lowercase letters a - z
- uppercase letters A - Z
- various punctuation symbols

Most of the control characters are now obsolete, with only a few still being commonly used (CR, LF, TAB, etc.).

### Placement and grouping of characters

For example, lowercase 'i' is represented in ASCII encoding by 0b1101001, 0x69 (decimal 105), since 'i' is the 9th letter it is in 9th row.

Despite being an American standard, ASCII does not have a code point for the cent (¢). It also does not support English terms with diacritical marks (résumé, Beyoncé)

## History

The American Standard Code for Information Interchange (ASCII) was developed under the auspices of a committee of the American Standards Association (ASA), called the X3 committee, by its X3.2 (later X3L2) subcommittee, and later by that subcommittee's X3.2.4 working group (now INCITS). The ASA later became the United States of America Standards Institute (USASI)[3]: 211  and ultimately became the American National Standards Institute (ANSI).

With the other special characters and control codes filled in, ASCII was published as ASA X3.4-1963,[5][13] leaving 28 code positions without any assigned meaning, reserved for future standardization, and one unassigned control code.[3]: 66, 245  There was some debate at the time whether there should be more control characters rather than the lowercase alphabet.[3]: 435  The indecision did not last long: during May 1963 the CCITT Working Party on the New Telegraph Alphabet proposed to assign lowercase characters to sticks[a][14] 6 and 7,[15] and International Organization for Standardization TC 97 SC 2 voted during October to incorporate the change into its draft standard.[16] The X3.2.4 task group voted its approval for the change to ASCII at its May 1963 meeting.[17] Locating the lowercase letters in sticks[a][14] 6 and 7 caused the characters to differ in bit pattern from the upper case by a single bit, which simplified case-insensitive character matching and the construction of keyboards and printers.

The X3 committee made other changes, including other new characters (the brace and vertical bar characters),[18] renaming some control characters (SOM became start of header (SOH)) and moving or removing others (RU was removed).[3]: 247-248  ASCII was subsequently updated as USAS X3.4-1967,[6][19] then USAS X3.4-1968,[20] ANSI X3.4-1977, and finally, ANSI X3.4-1986.[8][21]

Revisions of the ASCII standard:

ASA X3.4-1963[3][5][19][21]
ASA X3.4-1965 (approved, but not published, nevertheless used by IBM 2260 & 2265 Display Stations and IBM 2848 Display Control)[3]: 423, 425-428, 435-439 [22][19][21]
USAS X3.4-1967[3][6][21]
USAS X3.4-1968[3][20][21]
ANSI X3.4-1977[21]
ANSI X3.4-1986[8][21]
ANSI X3.4-1986 (R1992)
ANSI X3.4-1986 (R1997)
ANSI INCITS 4-1986 (R2002)[23]
ANSI INCITS 4-1986 (R2007)[24]
(ANSI) INCITS 4-1986[R2012][25]
(ANSI) INCITS 4-1986[R2017][26]
In the X3.15 standard, the X3 committee also addressed how ASCII should be transmitted (least significant bit first)[3]: 249-253 [27] and recorded on perforated tape. They proposed a 9-track standard for magnetic tape and attempted to deal with some punched card formats.


## Design considerations

### Bit width

The X3.2 subcommittee designed ASCII based on the earlier teleprinter encoding systems.

Like other character encodings, ASCII specifies a correspondence between *digital bit patterns* and *character symbols* (i.e. graphemes and control characters). This allows digital devices to communicate with each other and to process, store, and communicate *character-oriented information* such as written language.

Before ASCII was developed, the encodings in use included 26 alphabetic characters, 10 numerical digits, and 11-25 *special graphic symbols*. To include all these and the *control characters* compatible with the Comité Consultatif International Téléphonique et Télégraphique (`CCITT`) International Telegraph Alphabet No. 2 (`ITA2`) standard of 1924, `FIELDATA` (1956), and early `EBCDIC` (1963), more than 64 (2⁶ = 64) codes were required for ASCII.

ITA2 encoding was based on the *Baudot code*, the 5-bit (2⁵ = 32) telegraph code that Émile Baudot invented in 1870 and patented in 1874.

The committee debated the possibility of a *shift function* (like in ITA2), which would allow more than 64 codes to be represented by 6-bit code (2⁶ = 64).

In a shifted code, some character codes determine choices between options for the following character codes. It allows compact encoding, but is less reliable for data transmission, as an error in transmitting the shift code typically makes a long part of the transmission unreadable. The standards committee decided against shifting, and so ASCII required at least a seven-bit code.

The committee considered an eight-bit code, since eight bits (octets) would allow two four-bit patterns to efficiently encode two digits with binary-coded decimal. However, it would require all data transmission to send eight bits when seven could suffice. The committee voted to use a seven-bit code to minimize costs associated with data transmission. Since perforated tape at the time could record eight bits in one position, it also allowed for a parity bit for error checking if desired.[3]: 217 §c, 236 §5  Eight-bit machines (with octets as the native data type) that did not use parity checking typically set the eighth bit to 0.[30]

### Internal organization


### Character order

## Character set

## Character groups
### Control characters
#### Delete vs backspace
#### Escape
#### End of line
#### End of file/stream
### Control code chart
### Printable characters

## Usage

## Variants and derivations
### 7-bit codes
### 8-bit codes
### Unicode
