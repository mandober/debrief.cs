# Hash tables issues

- Define and describe what a hash table is
- Introduce key/value relationships
- Introduce concepts such as table size: why are primes important?
- Introduce other aspects of tables independent of type and implementation
- Define `n` for time-complexity: what is `n` - a record, a key, ...?
- Iteration order for hash tables by augmenting the structure
- Iterating over items in insertion order
- Iterating over items based on most-recently-used









Resizing the hash table
- is there a function that gives the same hash even as the table is enlarged? Naively, if we use modulus to fit the input to the table size `m`, then if the table has size `m`, doubling the table, then...hmm?


* `±n × m + r ≡ r (mod m)`, r = 0..m-1, m ∈ ℙ, n ∈ ℤ

±nm+r ≡ r (mod m)

* `[-nm + r ≡ r (mod m)] === [nm - mr ≡ r (mod m)]`

[-mn + r ≡ r (mod m)] === [mn - r ≡ r (mod m)]
[-7n + r ≡ r (mod 7)] === [7n - r ≡ r (mod 7)]
n = 3
[-7×3 + r ≡ r (mod 7)] === [7×3 - r ≡ r (mod 7)]
[-21 + r ≡ r (mod 7)] === [21 - r ≡ r (mod 7)]
[-21 + 0 ≡ 0 (mod 7)] === [21 - 0 ≡ 0 (mod 7)]
[-21 ≡ 0 (mod 7)] === [21 ≡ 0 (mod 7)]

x = -33 => n=5, r=2
[-7n + r  ≡ r (mod 7)] ===  [7n - mr ≡ r (mod 7)]




-n              -6    -5    -4    -3      n = -2         n = -1      ||  n = 0          n = 1       2    3    4    5    n
--------------------------------------------------------------------------------------------------------------------------------------
-7n+0 ≡ 0 % 7 | -42 | -35 | -28 | -21 | -14 ≡ 0 % 7 | _-7_ ≡ `0` % 7 ||_0_ ≡ `0` % 7 |  7 ≡ 0 % 7 | 14 | 21 | 28 | 35 | 7n+0 ≡ 0 % 7
-7n+1 ≡ 1 % 7 | -41 | -34 | -27 | -20 | -13 ≡ 1 % 7 | _-6_ ≡ `1` % 7 ||_1_ ≡ `1` % 7 |  8 ≡ 1 % 7 | 15 | 22 | 29 | 36 | 7n+1 ≡ 1 % 7
-7n+2 ≡ 2 % 7 | -40 | -33 | -26 | -19 | -12 ≡ 2 % 7 | _-5_ ≡ `2` % 7 ||_2_ ≡ `2` % 7 |  9 ≡ 2 % 7 | 16 | 23 | 30 | 37 | 7n+2 ≡ 2 % 7
-7n+3 ≡ 3 % 7 | -39 | -32 | -25 | -18 | -11 ≡ 3 % 7 | _-4_ ≡ `3` % 7 ||_3_ ≡ `3` % 7 | 10 ≡ 3 % 7 | 17 | 24 | 31 | 38 | 7n+3 ≡ 3 % 7
-7n+4 ≡ 4 % 7 | -38 | -31 | -24 | -17 | -10 ≡ 4 % 7 | _-3_ ≡ `4` % 7 ||_4_ ≡ `4` % 7 | 11 ≡ 4 % 7 | 18 | 25 | 32 | 39 | 7n+4 ≡ 4 % 7
-7n+5 ≡ 5 % 7 | -37 | -30 | -23 | -16 |  -9 ≡ 5 % 7 | _-2_ ≡ `5` % 7 ||_5_ ≡ `5` % 7 | 12 ≡ 5 % 7 | 19 | 26 | 33 | 40 | 7n+5 ≡ 5 % 7
-7n+6 ≡ 6 % 7 | -36 | -29 | -22 | -15 |  -8 ≡ 6 % 7 | _-1_ ≡ `6` % 7 ||_6_ ≡ `6` % 7 | 13 ≡ 6 % 7 | 20 | 27 | 34 | 41 | 7n+6 ≡ 6 % 7

(1) -36 = 7×(-6) + 6 = -42 + 6
(2)       7×(-6) + 6 =
= -6×7 + 6
= 6(-1×7 + 1)
= 6(-7 + 1)
= 6(-6)
= -36
(3)       7×(-6) + 6 =
= -6×7 + 6
= -6(1×7 - 1)
= -6(7 - 1)
= -6(6)
= -36


Residual classes
- [0] = {0,  7, 14, 21, 28, …, 7n+0}
- [1] = {1,  8, 15, 22, 29, …, 7n+1}
- [2] = {2,  9, 16, 23, 30, …, 7n+2}
- [3] = {3, 10, 17, 24, 31, …, 7n+3}
- [4] = {4, 11, 18, 25, 32, …, 7n+4}
- [5] = {5, 12, 19, 26, 33, …, 7n+5}
- [6] = {6, 13, 20, 27, 34, …, 7n+6}
