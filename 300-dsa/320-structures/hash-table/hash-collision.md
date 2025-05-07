# Hash collision

https://en.wikipedia.org/wiki/Hash_collision

A *hash collision* occurs when two distinct pieces of data hash to the same value as derived from a hash function which takes a data input and returns a fixed length of bits (aka a digest).

Although hash algorithms, especially cryptographic hash algorithms, have been created with the intent of being *collision resistant*, they can still sometimes map different data to the same hash (by virtue of the pigeonhole principle). Malicious users can take advantage of this to mimic, access, or alter data. Due to the possible negative applications of hash collisions in data management and computer security (in particular, cryptographic hash functions), *collision avoidance* has become an important topic in computer security.

## Contents

- 1. Background
- 2. Collision resolution
  - 2.1. Open addressing
  - 2.2. Separate chaining
  - 2.3. Cache-conscious collision resolution
- 3. See also
- 4. References
- 5. External links

## Background
