# Data representation

- representation of data captures its essence, in a form suitable for computers
- problem of representing possibly infinite data with a finite-memory computer
- problem of representing analog data with a digital computer
- problem of time and space in data storing
- data compression saves storage space/bandwidth; 2 flavors: *lossy* and *lossless*; lossy compression is acceptable for some data (image, video).
- data is repr using various abstractions and encoding systems.

## Data encoding

At the machine level, there are just (arrays of) bits in the form of memory cells (flip-flops, etc.), where each cell is capable of storing only a single bit. A bit has two states and they may be repr as differences in electric charge (voltage, capacitors), or anything else that can clearly distinguish between two states. This distinction of two states influences a bunch of things of a particular machine architecture, making any data unit have the form `n²`. A bit may be considered a container or placeholder, capable of expressing 2 distinct states, which are usually denoted by the binary digit `1` (the 'on' state) and the binary digit `0` (the 'off' state).

There's not much you can do with a single bit, `2¹`, so to repr anything we need to group them. How much bits should constitute a basic group was investigated in the pioneering days of computing, and eventually the first basic group become a byte or an octet, consisting of 8 bits. A byte can repr `2⁸ = 256` distinct states.

The most important data unit is called a **word** and it stands for the most common unit of data for a particular machine. Almost all computer operations are done in word-sized chunks: the memory is read 1 word at a time; the width of the bus, that transfers the data between memory and CPU, is 1 word; the capacity of CPU registers is 1 word; the fundamental machine-sized integer is 1 word; the addressable memory is also determined by this, it is `2ʷᵒʳᵈ`.

When the basic grouping of bits was settled on 8, that number was the size of the word for computers back then - these were the 8-bits, followed by the generation of 16-bit computers. The the period of 32-bit computers came, and this is when the very popular `x86` computer architecture was established. Since a word determines how much memory is addressable, the 32-bit machines could have max amount of memory: 2³²b = 4,294,967,296b = 536,870,912B = 4GB.



then 32-bit, and the majority of modern computers is now 64-bit. This means they're manipulating data 8 bytes at the time.






## References

https://computersciencewiki.org/index.php/Data_representation
https://csfieldguide.org.nz/en/chapters/data-representation/numbers/
https://www.bitsofbytes.co/11---data-representation.html
https://www.lehigh.edu/~ineng2/notes/datatypes
https://nxg.me.uk/note/2005/singular-data/
