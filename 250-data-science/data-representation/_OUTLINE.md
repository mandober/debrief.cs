# Data Representation


* Representing numbers
  - implementations of number representations: in hardware, in software
  - only ℤ (ℕ) and ℝ math types are usually chosen to be repr
  - the main constraint in number repr: size/capacity
  - available capacity comes in chunks of 8, 16, 32, 64 bits
  - numbers are divided into subsets of ℤ and ℝ
  - subsets of ℤ classified by:
    - bit-width (bit capacity): 8, 16, 32, 64
    - bit-width determines the spread (nr of distinct number repr)
    - ∀bit-width. ∃signedness: signed and unsigned (subsets of ℕ)
    - range can start at 0 (unsigned) or span around 0 (signed)
  - subsets of ℕ according to the bit-width
  - no need for a mapping system between binary and data
  - natural relationship between numeric data and binary values
  - true for positive integer data
* Representing Real Numbers
* Representing Negative Values
positional laws of base10 apply to base2
radix point: decimal point (when not in base 10)
positions to the right are halves
3 properties describe a real value:
sign (+/-)
mantisa
exponent
determines the radix shift
signed-magnitude representaion
0 has two representations
fixed number of values causes representation as integers
ten and two's complement
leftmost digit (0=positive and 1=negative
Number Overflow
overflow: when the compacted value exceeds the number of bits allocated for the result
* Representing Real Numbers (cont)
3.1 Data and computers
floating point representation
sign*mantisa*10 (raised to a power)
replace 10 with 2 for binary
3 defining values are need to store in computer (floating->binary-> computer)
decimal->binary fraction
decimal->new base (but divide)
scientific notation
* 3.3 Representing Text
data: basic values or facts (unstructred)
information: data that has been processed to solve problems
multiedia: different types of mediums of data
data compression: reducing amount of space needed for storage
bandwidth: maximum or minium of transferable bits
lossless (compression): data is retrievable
lossy (compression): data can be lost
document (analog) entity
separate characters=discrete (digital) elements
finite number of characters of represented
everything must be represented
character set: list of all characters and codes used
* Binary Representations
Analog and Digital Data
Text
Compression
ASCII Character Set
Unicode Character
Set
alphabetic information is fundamental
an effective way to transfer this data between computers is necessary
keyword: frequently used words are replaced with a single character
run-length: symbols for repreated digits
Huffman: uses variable length bit strings to represent each character
1 bit can represent 2 things
2 bits=4 things (combinations of 1s and 0s)
2*= number of things being represented (*=number of bits being used)
minimum amount of storage given to anything is in mutiples of 2
American Standard Code for Information Interchange
7 bits for each character (128 unique ones)
distinct order for codes based on the characters (also has an order) they represent
1st 32 characters do not have simple representation that can be printed
space between two integers is infinite
computers represent enough to satisfy
analog (continuous) and digital (discrete) data
binary is most commonly used for computers
cheaper and more reliable
electronic signals are easier to maintain
analog and digital both degrade
PCM: jumping between two extremes
reclocked: conversion of signal to origial shape
no data is lost if it happens quickly
international capabilities
meant to represent every character in every language
16 bits per character usually (flexible)
1st 256 representations are exactly the same as ASCII
Chapter 3: Data Representation
Computer Science Mind Map
3.4 Representing Audio Data
By Katheine Martin
data must be represented in a way that captures the essence of the information
representation must be convenient for compuers to process
3.6 Representing Video
represent the appropriate sound wave
electrical signal: analog representation of a sound wave
must be broken down into manageable pieces
digitize signal
reproduce sound
assumption is that the signal changed evenly between one stored value and the next
assuption is correct is enough samples are taken in a short period of time
vinyl record=analog and CD=digital
codec: COmpressor/DECompressor
video codec: methods used to shrink the size of a movie so that it may be played on a computer or over a network
most video codecs use lossy compression
tend to be block oriented
encodement of blocks determine codec
temporal compressor: looks for differences between consequtive frames
spatial compressor: removes redundant information in a frame
Audio Formats
audio formats: WAV. AU. AIFF, VQR, MP3
based on the storage of voltage values samples from analog signals
recognize details in different ways
use various methods of compression
MP3 is dominant
stronger compression rate
MP3 Audio Format
MP3=MPEG-2, audio layer 3 file
MPEG= Moving Picture Exports Group
international group that develops standards
losses and lossy compression
analyzes frequency spread and compares it to a mathematical model of human psychoacoustics
discards info that can't be heard by humans
bit stream is compressed with a form of Huffman
3.5 Representing Images and Graphics
Vector Representation of Graphics
Representing Color
vector graphics: method of representing graphics through lines and geometic shapes
file sizes tend to be small
each pixel isn't accounted for
complexity of the image determines file size
fiel size can be changed mathematically
not good for real world images
good for line art and cartoons
Flash
popular
vector graphic format
other colors are made of a combination of red, green, and blue
color is represented as a RGB value
color depth: amout of data used to represent color
HiColor: 16-bit color depth
TrueColors: 24-bit color depth
Digitalized Images and Graphics
photograph: analog representation
pixel: individual dot that makes up a picture
resolution: number of pixels in a picture
raster-graphics format: image stored as indivudal pixels
Bitmap, GIF, JPEG, PNG
