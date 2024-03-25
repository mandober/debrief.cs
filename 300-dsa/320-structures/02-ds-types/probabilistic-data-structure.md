# DSA :: DS :: Types of data structures :: Probabilistic data structure

https://en.wikipedia.org/wiki/Randomized_algorithm

## Introduction

Despite the fact that precise answers are always desirable, they are not always obtainable, so an approximation is the best that can be done. Sometimes an approximation that's close enough to the correct answer will do.

For instance, Big Data handles massive amounts of data and using deterministic data structures, such as a hash maps or hash sets, has shown to be inadequate, either due to their overhead or deterministic behavior. The most pressing problems is the exhaustion of system resources, primarily depletion of available memory and CPU time.

These issues have put forward a different type of data structures, **probablistic data structures**, that trade correctness and determinism for approximation and probability.

One of the well-known probablistic data structures is the bloom filter that can determine set memebership at a fraction of cost compared to deterministic data structures, but with a slight risk of false positives.

## Probablistic data structure

Using a probablistic data structures we msut relinquish the correctness guarantees, as we can only safely assume that the solution will be close enough to the correct answer with a known probability of error, usually expressed by placing the results as a range between the upper and lower error bounds.

Probablistic data structures are proven to have either a fixed or sublinear space complexity and constant time complexity (execution time).

Probablistic data structures rely on some form of probablity (randomness, hashing, and etc.) to reach an approximate solution.

Some of the data structures are rather proven alternative approaches for a data structure but often times they are needed for these cases:
- analyzing and mining big data sets
- statistical analysis
- handling streams of data

*Probablistic algorithms* operate on probablistic data structures.

## Types of probablistic data structures

Each type has its own niche purposes, but some may be used in a more general manner. Many structures come with variations that address particular concerns, such as tweaking the margin of error threshold and increasing deterministic behavior.

- Frequency
  - Count-min sketch    
    Memory efficient hash table approach using one or more hash functions to estimate (risking overestimation) frequency counts.
- Ranking
  - Random Sampling    
    Uses an internal random selecting algorithm to perform quick linear time random selecting. Useful if you need only a sublist of options without any prioritization.
  - q-digest   
    This data structure is complete binary tree over a set of values where it keeps track of frequency and propagates an estimate of the lower frequency values. Originally was designed for sensor networks but found a place in rank-based statistics.
  - t-digest    
    Useful for detecting anomalies and is typically a tree-based data structure that handles a stream of integers to handle such queries like quantiles, percentiles, and other rank-based statistics.
- Similarity
  - MinHash    
    A useful data structure for estimating similarity between two sets of data (strings, numbers, etc) using Jaccard similarity metrics and uses one or more hash functions to quickly evaluate.
  - SimHash    
    Similar to the idea of MinHash but relies on the items to have a hash function along with comparing the corresponding bits by using some metric like the hamming distance.
- Cardinality
  - LogLog   
    An algorithm that can be structured into a data structure that deals with distinct elements in a set. It's very quick and can handle lots of elements with less memory than a normal set.
  - HyperLogLog    
    An extension of the LogLog which uses a different way of measuring the distinct difference count.
- Membership
  - Bloom Filter    
    A data structure that mimics a hash table but uses bytes from a hash code to determine position and if that element exists. It uses less memory and approximates if an element exists in a set.
  - Counting Bloom filter   
    Simply a generalized versoin of the bloom filter which allows a threshold count number to query the set.
  - Quotient Filter    
    A modified verson of bloom filter which includes metadata about the buckets. This uses more memory than the bloom filter but less than the counting bloom filter.
  - Cuckoo Filter    
    Perhaps a more compact verson of the bloom filter while allowing the delete opertion to be implementable. This uses the cuckoo hashing approach.
- (other)
  - Hash Tables
  - Kinetic Hanger   
    A heap where inserts and deletes don't need to balance and can be randomized while still maintaining competitive heap performance.
  - Kinetic Heater    
    A priortized queue similar to the kinetic hanger but in practice not as efficient as the better kinetic priority queues.
  - Skip List    
    An ordered-key based data structure that allows for competitive performance dictionary or list while implementation remaining relatively easy. This data structure proves that probability can work along with being able to quick index certain items based on probability.
  - Random Tree    
    Uses stochastic properties while maintain tree-like properties. This has proven to applicable uses in fractals, machine learning, and etc.


- Probabilistic data structures
  - Bloom filter
  - Count-min sketch
  - Quotient filter
  - Skip list
  - Random trees
    - Random binary tree
    - Treap
    - Rapidly-exploring random tree
