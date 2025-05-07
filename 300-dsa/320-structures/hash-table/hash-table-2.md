# Hash table

<!-- TOC -->

- [Hash table data structure](#hash-table-data-structure)
- [Time complexity of hash tables](#time-complexity-of-hash-tables)
- [Database table vs hash table](#database-table-vs-hash-table)
- [Hash function](#hash-function)
- [Choosing a good hash function](#choosing-a-good-hash-function)
- [Generic algorithm for hashing strings](#generic-algorithm-for-hashing-strings)
  - [Examples](#examples)
- [Pathological data](#pathological-data)
- [Collision handling](#collision-handling)
- [Separate chaining](#separate-chaining)
- [Open addressing](#open-addressing)
- [Linear probing](#linear-probing)
- [Quadratic probing](#quadratic-probing)
- [Double hashing](#double-hashing)
- [Open addressing with double hashing](#open-addressing-with-double-hashing)
- [Double hashing](#double-hashing-1)

<!-- /TOC -->

## Hash table data structure

*Hash table* is a data structure used for storing data items, usually called key-value pairs.

A *key/value pair*, considered as a unit/item of data, consists of a key to which a value is associated. The *value* may be arbitrarily complex, and usually it is. The *key* identifes the associated value; it may be better said that a key identifes both the value and the whole pair. The key plays the similar role to that of a primary key in database table.

Hash tables are often used to implement *associative-arrays*, sets and caches. Compared to other associative-array structures, hash tables are the most useful when we need to store a large numbers of records.

Hash tables may be used as *in-memory data structures*. Hash tables may also be leveraged as *persistent data structures*; database indexes commonly use disk-based data structures based on hash tables. Hash tables are also used to speed up string search in many implementations of data compression. In computer chess, a hash table can be used to implement the transposition table.

## Time complexity of hash tables

Hash tables provide constant-time, O(1), lookup *on average*, regardless of the number of items in the table, but the *worst-case lookup time* in most hash table schemes is linear, O(n).

The simplest hash table schemes like *open addressing with linear probing* or *separate chaining with linked lists* have O(n) lookup time in the worst case. This can happen, accidentally or maliciously, when most keys collide, causing to be stored in the same bucket, which in case of the separate chaining scheme degarades a hash table into a linked list; with an open addressing scheme collisions cause displacement of most entries so that the entire table must be searched every time, thus also degrading it into a linked list.

More advanced hash table schemes, like *cuckoo hashing* and *dynamic perfect hashing*, guarantee O(1) lookup time even in the worst case. When a new key is inserted, such schemes change their hash function to avoid collisions (of course, they must record this change so the item can be retrieved later).

## Database table vs hash table

In a database table, each row is uniquely identifed by a *primary key (PK)*. A *row* consists of a number of *fields*. The primary key may be derived from all the fields or from their subset. It is also common that a PK is *artificial*, typically implemented as an increasing sequence of integers starting at zero, with each unique integer identifying a unique row.

However, we usually query a database not by a primary key, but by some more easily remembered piece of data. A DB that represents an address book is typically broken up in a number of tables, but there is certainly a table of names. That table containing peoples' names would necessaily be searched when we query the DB for a particular name. Although there are ways to improve it, such a search would have to traverse the entire table, thus having linear time.





## Hash function

The hash function should:
- take a string as input and return a number between 0 and `m`, where `m` is the table size (number of buckets in the array).
- return even distribution of bucket indices for an average set of inputs. If the hash function is unevenly distributed, it generates more coliding indices.

## Choosing a good hash function

A poor choice of a hash function is likely to lead to *clustering*, when the probability of keys mapping to the same hash bucket (i.e. causing a collision) is significantly greater than what is expected from a random function.

A nonzero probability of collisions is the reality of many hash functions, but the number of operations needed to resolve collisions usually scales linearly with the number of collisions per bucket, so the excess collisions will degrade performance significantly.

Choosing a good hash function is tricky and it doesn't help that literature is replete with poor choices and sparse on the criteria of what makes a good hash function. Unlike most other fundamental algorithms and data structures, there is no universal consensus on this issue. 

A cryptographic hash function such as SHA-1 would satisfy the relatively lax strength requirements needed for hash tables, but its slowness and complexity makes it unappealing. However, even some cryptographic hash functions do not provide protection against a malicious agent who supplies keys which all hash to the same bucket. For these specialized cases, a *universal hash function* should be used instead of any one static hashing function.

In the absence of a standard measure for *hash function strength*, the current state of the art is to employ a battery of statistical tests to measure *whether the hash function can be distinguished from any random function*. Arguably the most important such test is to determine whether the hash function exerts the so-called **avalanche effect**, which essentially states that any single-bit change in the input key should affect, on average, half the bits in the output. Bret Mulvey advocates testing the **strict avalanche condition**, which states that, for any single-bit change, each of the output bits should change with probability one-half, *independent of the other bits in the key*. Purely additive hash functions such as CRC fail this stronger condition miserably.

Clearly, a strong hash function should have a *uniform distribution* of hash values. Bret Mulvey proposes the use of a **chi-squared test for uniformity**, based on a power-of-two hash table sizes ranging from 2 to 2¹⁶. This test is considerably more sensitive than many others proposed for measuring hash functions, and finds problems in many popular hash functions.

Fortunately, there are good hash functions that satisfy all these criteria. The simplest class all consume one byte of the input key per iteration of the inner loop. Within this class, simplicity and speed are closely related, as fast algorithms simply don't have time to perform complex calculations. Of these, one that performs particularly well is the Jenkins' *one-at-a-time hash*, adapted from an article by Bob Jenkins, its creator.
http://www.burtleburtle.net/bob/hash/doobs.html

https://en.wikibooks.org/wiki/Data_Structures/Hash_Tables



## Generic algorithm for hashing strings

A generic algorithm for hashing strings, in pseudocode:

```
function hash(s, a, m):
  h = 0
  len = length(s)
  for i = 0..len
    pos = len - i - 1
    h = h + a^pos * chr(s[i])
    h = |h % m|
  h = |h % m|
  return h
```

>(a + b) % m = (a % m + b % m) % m

- m = 53 (size of the hash table)
- a = 153 (prime larger then the size of ASCII alphabet, 128)
- absolute value is taken due to the possible overflow


### Examples

```
1. Example
==========

hashing a string "abcde":
          ⁴³²¹⁰
string = "abcde"
len = 5

hash = 0

i = 0
  hash += a ^ (5 - (0 + 1)) × chr('a') = a^(5-1) × 97 = a⁴ × 97
  i=0, exp=4, 'a':  97a⁴
  i=1, exp=3, 'b':  98a³
  i=2, exp=2, 'c':  99a²
  i=3, exp=1, 'd': 100a¹
  i=4, exp=0, 'e': 101a⁰
  hash = (97a⁴ + 98a³ + 99a² + 100a + 101) % m
  hash = 97a⁴ % m + 98a³ % m + 99a² % m + 100a % m + 101 % m



2. Example
==========
hash("cat", 151, 53)

m = 53
a = 151 (prime > 128)

hash = (151² × 99 + 151¹ × 97 + 151⁰ × 116) % 53
hash = (22801 × 99 + 151 × 97 + 1 × 116) % 53
hash = (2,257,299 + 14,647 + 116) % 53
hash = 2,272,062 % 53
       2,272,057 / 53 = 42,869
hash =         5


3. Example
==========
Changing the value of 'a' would give a different hash function:

hash("cat", 163, 53) = 3
m = 53
a = 163 (prime > 128)
```

We are rasing `a` to the power of the char's position within the string, and multiplying that by the ASCII code (integer). Then we sum up the individual results and do a modulo of that by `m` to get an index within the has table bounds (which has `m` buckets).

The hash function has 2 steps:
- convert the string to a large integer
- reduce the magnitude of that integer by taking a modulus of `m`

The parameter `a` should be a prime number larger than the size of the alphabet. The size of the ASCII alphabet is 128, so we should pick a prime `a` larger then that. The `chr` fn takes a character and returns its ASCII code.

## Pathological data

An ideal hash function would always return an even distribution. However, for any hash function, there is a *pathological set of inputs*, which all hash to the same value. To find this set of inputs, run a large set of inputs through the function. All inputs which hash to a particular bucket form a pathological set.

The existence of pathological input sets means *there are no perfect hash functions for all inputs*. The best we can do is to create a function which performs well for the expected data set.

Pathological inputs also pose a security issue. If a hash table is fed a set of colliding keys by some malicious user, then searches for those keys will take much longer, O(n), than expected, O(1). This can be used as a denial-of-service attack against systems which are underpinned by hash tables, such as DNS.

## Collision handling

The two most popular methods for handling collisions
- Separate chaining
- Open addressing

## Separate chaining

Under separate chaining, each slot in the table is associated with a list. In other words, each bucket has a list attached which will contain the collided items.

Common methods for manipulating a hash table include insertion, deletion and search. All 3 methods start the same - we hash the key to get the index into the table (suitable for that key-value entry).


- *Insert*: hash the key to get the bucket index. If there is nothing in that bucket, store the item there. If there is already an item there, append the item to the linked list. Appending or prepending does not make a difference, but prepending is a constant time operation for lists.
- *Search*: hash the key to get an index into the table. Use the index to locate the bucket, then traverse the associated list to find the entry. If the entry is found, return the value, otherwise return NULL.
- *Delete*: hash the key to get the bucket index. Traverse the linked list, comparing each item's key to the delete key. If the key is found, remove the item from the linked list. If the deleted entry was the only list entry, put NULL in the bucket to indicate there is no associated list.

This has the advantage of being simple to implement, but is space inefficient i nthat each entry also stores a pointer to the next node in the list. This overhead could be spent on storing more items instead, which is what the open addressing method tries to do (but messes up even worse).

## Open addressing

Open addressing aims to solve the space inefficiency of separate chaining. When a collision happens - meaning the hash function produces an index to a bucket that is already occupied - the collided item cannot go into its *"true" bucket*, but we must find a *replacement bucket* to put it into. An item located in its true bucket is called an *appropriately-placed item*; an item located in a replacement bucket is called a *displaced item*.

The replacement bucket is chosen according to a predetermined rule or rules, which must remain unchanged as the same rules are used later to retrieve items.

Commonly used rules to choose a replacement bucket include linear probing, quadratic probing and double hashing.

## Linear probing

The search for a replacement bucket starts from an item's true index: the index is incremented by one and the next bucket is probed. If empty, we place the item there, otherwise we reiterate, wrapping around at the end of the table. If no empty buckets exist in the table, we emit an error message.

This begs the question why not search the table from the top in the first place? This is easier as it avoids the hassle with wrapping around at the ens of the table. If the item is not placed in its true bucket, then it doesn't matter which replacement bucket is selected. There is nothing beneficial from the item living in the nearest possible bucket to its true resting place.

Open addressing schema seems inferrior to chaining as it often produces tables with most items displaced, thus degrading the access time from constant to linear; we might as well use a linked-list. The order of insertions affects heavily the amount of displacement.

Methods:
- *Insert*: hash the key to find the bucket index. If the bucket is empty, insert the item there. If it is not empty, repeatedly increment the index until an empty bucket is found, and insert it there.
- *Search*: hash the key to find the bucket index. Repeatedly increment the index, comparing each item's key to the search key, until an empty bucket is found. If an item with a matching key is found, return the value, else return NULL.
- *Delete*: hash the key to find the bucket index. Repeatedly increment the index, comparing each item's key to the delete key, until an empty bucket is found. If an item with a matching key is found, delete it. Deleting this item breaks the chain, so we have no choice but to reinsert all items in the chain after the deleted item.

Linear probing offers good cache performance, but suffers from *clustering* issues: putting collided items in the next available bucket can lead to long contiguous stretches of filled buckets, which need to be iterated over when inserting, searching or deleting.

## Quadratic probing

Similar to linear probing, but instead of putting the collided item in the next available bucket, we try to put it in the buckets whose indexes follow the sequence: i, i + 1, i + 4, i + 9, i + 16, ..., where i is the original hash of the key.

Methods:
- Insert: hash the key to find the bucket index. Follow the probing sequence until an empty or deleted bucket is found, and insert the item there.
- Search: hash the key to find the bucket index. Follow the probing sequence, comparing each item's key to the search key until an empty bucket is found. If a matching key is found, return the value, else return NULL.
- Delete: we can't tell if the item we're deleting is part of a collision chain, so we can't delete the item outright. Instead, we just mark it as deleted.

Quadratic probing reduces, but does not remove, clustering, and still offers decent cache performance.

## Double hashing

Double hashing aims to solve the clustering problem. To do so, we use a second hash function to choose a new index for the item. Using a hash function gives us a new bucket, the index of which should be evenly distributed across all buckets. This removes clustering, but also removes any boosted cache performance from locality of reference. Double hashing is a common method of collision management in production hash tables, and is the method we implement in this tutorial.

## Open addressing with double hashing

Hash functions map an infinitely large number of inputs to a finite number of outputs. Different input keys will map to the same array index, causing bucket collisions. Hash tables must implement some method of dealing with collisions.

One technique is called *open addressing with double hashing*. Double hashing makes use of two hash functions to calculate the index an item should be stored at after `i` collisions.

## Double hashing

The index that should be used after `i` collisions is given by:

  index = hash_a(string) + i * hash_b(string) % num_buckets

We see that if no collisions have occurred, i = 0, so index is just `hash_a` of the string. If a collision happens, the index is modified by the `hash_b`.

  index = (hash_a(string) + i * (hash_b(string) + 1)) % num_buckets

It is possible that `hash_b` returns 0, reducing the second term to 0. This will cause the hash table to try to insert the item into the same bucket over and over. We can mitigate this by adding 1 to the result of the second hash, making sure it's never 0.
