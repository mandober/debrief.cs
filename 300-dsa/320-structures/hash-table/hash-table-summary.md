# Hash table :: Summary

## Hash Table Data Structure

- Common uses of hash tables
- Time complexity of hash tables

- 1. Time complexity and common uses of hash tables
- 2. Choosing a good hash function
- 3. Collision resolution
  - 3.1 Chaining
  - 3.2 Open addressing
  - 3.2.1 Example pseudocode
  - 3.3 Open addressing versus chaining
  - 3.4 Coalesced hashing
  - 3.5 Perfect hashing
  - 3.6 Probabilistic hashing
- 4. Table resizing
- 5. Ordered retrieval issue
- 6. Problems with hash tables
- 7. Other hash table algorithms
  - 7.1 Simple inference on file storage mapping
        of linear hashing and extendible hashing
- 8. Implementations
  - 8.1 Python implementation of extendible hashing
  - 8.2 Java implementation of extendible hashing
  - 8.3 Java implementation of linear hashing
    - 8.3.1 debugging to achieve functionality

## Hash tables

A *hash table*, or a *hash map*, is a data structure that associates keys with values.

The most efficiently supported operation is lookup: given a key (e.g. a person's name), find the corresponding value (e.g. that person's telephone number).

Hash table works by transforming the key using a hash function into a hash, an index into a hash table at which the associated value is stored.

The hash (digest) maps directly to a bucket in the hash table which may be implemented as an array of key/value pairs, hence the name *hash map*.

The mapping method lets us directly access the storage location for any key/value pair.

## Hash tables operation

Haskell implementation

```hs
data HashMap k v = HashMap [(k, [v])]
sizedHashMap :: Int -> HashMap k v
getValue     :: Ord k => k      -> HashMap k v -> v
setValue     :: Ord k => k -> v -> HashMap k v -> HashMap k v
insertEntry  :: Ord k => k -> v -> HashMap k v -> HashMap k v
removeEntry  :: Ord k => k      -> HashMap k v -> HashMap k v
```

Pseudo C implementation

```c
// HashTable is (type) parameterized by the Element type
HashTable<K, V>

// Create a hash table with n buckets
HashTableNew(int n) → HashTable

// Returns the value of the element for the given
// key. The key must be some comparable type.
getValue(HashTable h, Comparable key) → Element

// Sets the element of the array for the given key to be
// equal to new_value. The key must be some comparable type.
setValue(HashTable h, Comparable key, Element new_value)

// Remove the entry based on the given key from
// hash table. The key must be comparable type.
remove(HashTable h, Comparable key)
```


## Common uses of hash tables


## Time complexity of hash tables
