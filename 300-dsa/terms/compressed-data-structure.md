# DSA :: DS Types :: Compressed data structure

https://en.wikipedia.org/wiki/Compressed_data_structure

**Compressed data structures**, compared to more conventional data structures, have similar time complexity, yet a substantially lower space complexity. This significant difference in memory consumption is highly dependent upon the entropy of the data set. Thus, only when the dataset has specific shape can we reap the benefits of using a compressed data structure over a conventional one.

>The size of a compressed data structure largely depends upon the particular data being represented.

A related notion is that of a *succinct data structure*, which uses space roughly equal to the *information-theoretic minimum*, which is the worst case regarding the space needed to represent the data. In contrast, the size of a compressed data structure depends upon the particular data being represented.

When the data is compressible (as is often the case for natural language text) the compressed data structure can occupy space very close to the information-theoretic minimum, even significantly less space than most compression schemes.

Compressed data structures
- compressed suffix array
- FM-index

Important examples of compressed data structures include the *compressed suffix array* and the *FM-index*, both of which can represent an arbitrary text of characters `T` for pattern matching. Given any input pattern `P`, they support the operation of finding if and where `P` appears in `T`. The search time is proportional to the sum of the length of pattern `P`, a very slow-growing function of the length of the text `T`, and the number of reported matches. The space they occupy is roughly equal to the size of the text `T` in entropy-compressed form, such as that obtained by *prediction by partial matching* or *gzip*. Moreover, both data structures are *self-indexing*, in that they can reconstruct the text `T` in a random access manner, and thus the underlying text `T` can be discarded. In other words, they simultaneously provide a compressed and quickly-searchable representation of the text `T`. They represent a substantial space improvement over the conventional *suffix tree* and *suffix array*, which occupy many times more space than the size of `T`. They also support searching for arbitrary patterns, as opposed to the *inverted index*, which can support only word-based searches. In addition, inverted indexes do not have the self-indexing feature.
