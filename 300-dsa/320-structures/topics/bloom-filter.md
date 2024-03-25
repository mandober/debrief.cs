# Bloom filter

https://en.wikipedia.org/wiki/Bloom_filter

A Bloom filter is a space-efficient probabilistic data structure, conceived by Burton Howard Bloom in 1970, used to *test whether an element is a member of a set*.

A Bloom filter is a probabilistic data structure 
that provides a fast set membership querying capability. 
It does not give false negatives, 
but has a tunable false positive rate. 

A *false positive* means that it qualifies an element as being in the set (positive property), when in fact it is not.

A *false negative* means that it qualifies an element as not being in the set (negative property), when in fact it is.


Probabilistic Data Structure PDS

false positive matches are possible ("possibly in the set")
false negatives matches are impossible ("definitely not in set")

Element queried for set membership
- false positive : reported as a member although non-member
- false negatives: reported as a non-member although a member

Elements can be added to the set, but not removed (though this can be addressed with the *counting Bloom filter* variant); the more the items, the larger the probability of false positives.

Bloom proposed the technique for applications where the amount of source data would require an impractically large amount of memory if "conventional" error-free hashing techniques were applied. He gave the example of a hyphenation algorithm for a dictionary of 500,000 words, out of which 90% follow simple hyphenation rules, but the remaining 10% require expensive disk accesses to retrieve specific hyphenation patterns. With sufficient core memory, an error-free hash could be used to eliminate all unnecessary disk accesses; on the other hand, with limited core memory, Bloom's technique uses a smaller hash area but still eliminates most unnecessary accesses. For example, a hash area only 15% of the size needed by an ideal error-free hash still eliminates 85% of the disk accesses.

More generally, fewer than 10 bits per element are required for a 1% false positive probability, independent of the size or number of elements in the set.
