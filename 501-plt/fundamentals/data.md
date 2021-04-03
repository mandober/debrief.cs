# Data

- data
- unstructured data
  - bit strings
  - bit patterns
- structured data
  - user data
  - instruction data
  - bureaucratic data
- data of a data structure
  - admin data
  - overhead
  - payload
- data representation
- data typing
- data type


## Unstructured data

PLs are about manipulating *user data* using variables as the abstract notion of a memory location, with the aid of datatypes as a way to classify data and to facilitate the use of applicable operations with a particular datatype.

While the distinction between different kinds of data may be evident at the higher levels of computation, at the lower levels that difference is indistinguishable since all data looks the same being just a sequence of bits.That low, we can only talk about the *bit-strings* or *bit-patterns* that are devoid of any inherent meaning.

It is impossible to know what kind of data an arbitrary bit string represents. We simply cannot derive anything useful looking only at some random bit sequence.

However, the more additional info we have, the more information we can derive about some data. For example, the exploits such as 


## Kinds of data

The **user data** is data provided by a user that she wishes to manipulate in some way. Since it is the most important data, at least to a user, it is also referred to as the *payload*.

Just as user data is intended to only be consumed by computer users, so **instructions** are intended to only be consumed by a computer. They literally tell it what to do, what operations to perform.

In this setting, we distinguish between user data and instructions, and talk about data cache (d-cache) vs instructions cache (i-cache), e.g. of all the CPU's level-1 cache. However, the user data in this sense means all non-instructions data rather then the payload.

## Structured data

We can push all other kinds of data under the **bureaucratic (book-keeping) data** carpet. The prime example of this kind of data is the **administrative data** of a data structure, for a `data structure = user data + admin data`. In this setting, the admin data is also called the *overhead*, and it is a significant factor that should be considered when employing a certain data structure. The most efficient data structure is the array; it is an example of an implicit data structure because it has zero overhead. All other data structure have some overhead. The overhead that is (way) less then the payload is a desirable property of a data structure.


Everything is data, instructions are data, as is the user data; it is data operating on data. It is impossible to make sense of *unstructured data*.

In order to be useful, data has to be structured, it has to have some kind of organization that governs access to it. However, the formation of structures cannot happen at the very low levels, for that we need to go to higher grounds.

Data may be stored in memory or exist as a bitstream as it is being transferred through the buses for processing by a CPU where it takes on different shapes. It may go through several representation conversions, as it travels through the computer, from memory using buses to the CPU's caches and registers, waiting to be processed, and once processed it travels back into memory.


**Data typing** is classification of data into types, which define many essential properties of data; for the compiler, it is primarily the capacity, and for users, a type defines ways the data is intended to be used. A type defines the meaning of the data and the operations that can be performed on it. It may also define additional things, such as the way the data of that type is to be stored.

A **data type** is a constraint placed upon the interpretation of data in a type system, describing representation, interpretation and structure of values stored in memory.
