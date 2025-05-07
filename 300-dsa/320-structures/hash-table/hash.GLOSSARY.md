# Hash Tables :: GLOSSARY

## Avalanche effect
A good hash function should exhibit avalanche effect: changing a single bit of input should, on average, affect half the bits of output. That is, flipping a single bit of input should result in a 50% chance that any of the ouput bits flips. The avalanche effect describes a desirable property of hash functions: a very small change in the input should cause a big change in the output. The *strict avalanche condition* states that, for any single-bit change, each of the output bits should change with 50% probability, independent of the other bits in the key. Purely additive hash functions such as CRC fail this stronger condition miserably.

## Collision


## Hash table
A hash table is a data structure that associates *keys* with *values*. The primary operation it supports efficiently is *lookup*: given a key (e.g. a person's name), find the associated value (e.g. the person's telephone number). Hash table is also called *hash map* because it maps keys to values. It does this by transforming a key, using a hash function, into a hash, which is typically an index into the table at which the associated value is stored.

## Open addressing
Open addressing is a collision resolution method (that causes more problems then it solves) in which a collided item is placed in another, *replacement bucket* when its *"true" bucket* is already taken. Such item is called a *displaced item*, as opposed to a *properly-placed item*, which is an item in its true bucket. In particularly bad scenarios - which heavily depend on the insertion order - the table may contain many displaced items. To house an item when its true bucket is taken, the table is probed by incrementing the index until an empty bucket is found, wrapping the search around at the end of the table. Linear probing causes *clustering*, which is a long series of occupied buckets that must be traversed each time we insert, delete or search.

## Universal hashing function
Universal hashing function refers to selecting a hash function at random from a family of hash functions with a certain mathematical property. This guarantees a low number of collisions even if the input is chosen by an adversary. Many universal families are known (for hashing integers, vectors, strings), and their evaluation is often very efficient.


## k-independent hashing
Family of hash functions

## Rolling hashing
Type of hash function

## Tabulation hashing
Hash functions computed by XOR

## Min-wise independence
Data mining technique

## Universal one-way hash function
Type of universal hash function in cryptography proposed as an alternative to collision-resistant hash functions.

## Low-discrepancy sequence
Type of mathematical sequence

## Perfect hashing
Hash function without any collisions
