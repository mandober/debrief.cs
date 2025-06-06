

- hash table
  - hash, digets
  - hashing
  - hash function
  - time complexity of hash tables
  - space complexity of hash tables
  - problems with hash tables
    - hash collisions
      - collision resolution methods
        - separate chaining
        - open addressing
          - linear probing
            - linear probing causes clustering
              - double hashing ameliorates clustering issues
          - quadratic probing
          - true vs replacement bucket
          - appropriate vs forced item
          - too many buckets hosting forced items
    - ordered retrieval issue
    - pathological data
    - pathological set of inputs
    - table resizing
    - marking deleted entries
    - clustering due to linear probing
- hash table components
  - hast table entry
  - hast table as array
  - hast table as array of lists
  - buckets, slots
  - bucket index
  - marking deleted entries
  - "true" bucket
  - replacement bucket
  - hash table methods
    - insert
    - search
    - delete
- types of hashing
  - double hashing
  - prehashing
  - perfect hashing
  - probabilistic hashing
  - coalesced hashing
  - linear hashing
  - extendible hashing
  - open hashing (separate chaining)
- hash functions
  - keyspace (space of all keys)
  - keyspace → 0..m
  - choosing a good hash function
  - perfect hash function
- hash collision
  - collision resistance
  - collision avoidance
  - collision attack
    - pigenhole principle
    - birthday attack
  - collision resolution
    - separate chaining, open hashing
    - open addressing
      - linear probing
      - quadratic probing
    - open addressing vs separate chaining
