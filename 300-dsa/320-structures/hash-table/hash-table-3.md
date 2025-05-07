# Hash Table

A Hash Table is a data structure that allows storing and retrieving data very quickly. The advantage of hash table is that the expected number of accesses to insert, delete, or find a value is constant (like for arrays). The disadvantages of hash table:
- in the worst case, a hash table can degrade so insert, delete and find operations may require linear time (n number of accesses). A properly implemented hash table that doesn't get too full is unlikely to experience this.
- hash table doesn't store data in a sorted order. However, implementations may provide sorting algorithms if ordering is required.
- a bigger problem is coming up with a good hash function that doesn't generate too much collisions (collision are practicaly unavoidable).

Perfect hash function and collisions:
- `hash(i) = hash(j)` but `i ≠ j`
- `i ≠ j` yet `hash(i) = hash(j)`
- ∀ij. i = j ⇒ hash(i) = hash(j)
- ∀ij. i ≠ j ⇒ hash(i) ≠ hash(j)
- ∀ij. hash(i) = hash(j) ⇒ i = j
- ∀ij. hash(i) = hash(j) ⇔ i = j

Resolving collisions:
- open-addressing
- separate chaining (aka open hashing)


## Hash table

https://www.youtube.com/watch?v=BRO7mVIFt08&list=TLPQMzAxMjIwMjR5xe2LiF-RnA&index=2

Hash function: `𝒰 -> {0, 1, …, m - 1}` where `m` is max buckets.

Basically, *prehashing* reduces the key to a managable size, then the *hash function* digest that prehash, with uniform distribution and other properties (small change in key result in big change in hash; e.g. expressed as a binary number, any change of the key results in 50% chance that any given bit flips), and produces an index within the bounds of the number of buckets in a hash table.

Hash function signature:
- `key -> prehash -> hash`
- generates a large (positive) number
- which is: modulo by `m` (number of buckets), falling into range `[0, max)`

Hash function is guaranteed to reduce the (potentially very large) *key space* to just `m` (slots). The hashing function needs to know what `m` is. Preferably different hashing functions are used for each `m`, or at least one for each `m`. A hash function to use should depend on `m` (on the size of the table). It is the hash function that does the work of reducing the key space down to an appropriate number of slots. That is what is going to give us low space, but now, how do we get low time?

String hashing:
- prehash = the sum of all string characters
  - Given a string `A` as a key:
    - prehash = A[0] + A[1] + … + A[n - 1]
    - return (prehash % numBuckets)
- better hash function:
  - prehash = the sum of all string characters but weighted by 31 (prime)
  - gives better, more random, distribution
  - Given a string `A` as a key:
    - prehash = A[0] + 31 × A[1] + 31² × A[2] + … + 31ⁿ × A[n]
      (in C++, the weights are in reverse order)
    - return (prehash % numBuckets)


*Uniform hashing* is, essentially, two probabilistic assumptions:
- uniformity
- independence

*Uniformity*: the hash function should map any key (in the key space) into a uniform random choice. Each slot should be equally likely to be hashed to.

However, to do proper analysis, not only do we uniformity, but we also *need independence*. Not only is this true for each key individually, but it is true for all the keys together. If a key1 maps to a uniform random place, no matter where it goes, key2 also matches to a uniform random place. And no matter where those two go, key3 maps to a uniform random place. This really cannot be true, but if it were true, we could then prove that this takes constant time.

The expected length of a chain for `n` keys and `m` slots is `n/m`. Since we assume all keys are independent from each other, it is 1/m + 1/m + …, n times. It is easy when you have independence, unlike in the real world. We're going to call it `α`, aka the *load factor* of the table, `α = n/m`.

A load factor of 1 means n = m, so the length of a chain is 1. If α = 10, then we have 10 times as many elements as slots, and the expected length of a chain is 10. As long as `α` is a constant, i.e. as long as we have that `m = Θ(n)`, then this will be a constant, `m = Θ(n) ⇒ α = n/m = Θ(1)`.

In general, the running time, in the worst case (absent key), will be `1 + α`, i.e. one plus the length of the chain, `O(1 + α)` = `O(α)`.

## Hash functions

### Division (modulo) method

The easiest has function is to modulo the key space by `m`, `h(k) = k % m`. This is a bad method most of the time, especially if `m` has some common factors with `k`. For example, if `k` is even, and `m` is even because it is a power of two, then this method hashes only to one half of the table. It can be better if `m` is a prime and the table size is also a prime, so there are no common factors between the two; even better if these numbers are not close to a power of 2 or 10.

This is practical when `m` is prime but not too close to power of 2 or 10 (then just depending on low bits/digits). But it is inconvenient to find a prime number, and division is slow.

### Multiplication method

hash(k) = (a×k mod 2ʷ) >> (w - r)

where
- `k` is the key, of `w` bits
- `a` is a random odd integer, `2ʷ⁻¹ < a < 2ʷ`, not close to either bound
- `w` is the word size
- `r` is … `m = 2ʳ` (wtf? so common factors flew out da window?!)
- `m` is the table size

Multiplication and bit extraction are faster than division.

### Universal Hashing

For example:

`h(k) = ((ak+b) mod p) mod m`

where
- `a` and `b` are random numbers in {0, 1, … p−1}
- `p` is a large prime, `p > |𝒰|` (𝒰 is the size of the key space)

This implies that, for the worst case, keys `i ≠ j`, (and for `a`, `b`, choice of `h`):

    Prᵃᵇ { event Xⁱʲ } = Prᵃᵇ { h(i) = h(j) } = 1/m

which implies that:

    Eᵃᵇ(number of collisions with i) = n/m = α

## Table size

https://www.youtube.com/watch?v=BRO7mVIFt08&list=TLPQMzAxMjIwMjR5xe2LiF-RnA&index=2

How Large should Table be?
- want `m = Θ(n)` at all times
- don't know how large `n` will get at creation
- if `m` too small then it is slow; if `m` is too big then it is wasteful

Start small (constant) and grow (or shrink) as necessary. Of course, resizing the table does require rehashing all the existing key (entries).

Rehashing:
- To grow (or shrink) the table, the hash function must change (`m` and `r`)
- which implies we must rebuild the hash table from scratch
- for each item in the old table   
  i.e. for each slot, for each item in the slot:   
    insert into new table
- implies: Θ(n+m) time = Θ(n), if m = Θ(n)
