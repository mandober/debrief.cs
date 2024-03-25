# DS in general

- data type
- data structure
- mathematical model for data types
- abstract data type
- concrete data type

## data structure

☑ A **data structure** is a data organization, management, and storage format chosen to maximize certain expectations (such as efficient data access).

☑ The term "data structure" is less used to refer to the data contained in a data structure (data structure as a mere data collection), but more as a particular way of *data structuring* - organizing the data in such a way as to maximize desirable attributes (data structure as a data organization).


☑ The structure part of a "data structure" constraints the data, by forcing data points (elements) into particular configurations, thus resticting the ways in which the data can be accessed optimally. The limitations provide guarantees that allow us to reason about them more easily.

In other words, the structure itself imposes a certain storage and access discipline that needs to be respected in order to store and access the data in the most efficient way (i.e. in the way the author intended).


* The sheer number of data structures suggest that each one has been designed to meet a particular set of demands. And all the different sets of demands have given rise to the myriad of different structures. There is no single data structure that can meet all the demands efficiently. The choice of a particular data structure depends on the various possible tradeoffs. Some DS optimize time complexity, others space complexity. Even in just this two classes, there are numerous subclasses (like the speed of average data access, random-access, bulk access), plus sometimes the amortized access needs to be taken into acount.
* There are a lot of options and a vst number of available data strutures, so the hunt for the best possible data structure for a paricular use-case is never trivial.


☑ Another important aspect is that data structures enable the programmers to imagine and mentally structure large amount of data into conceptually manageable relationships.




## abstract data type

An **abstract data type** (ADT) is a mathematical model for data types, defined in terms of possible values, operations and behaviors, as experienced by the consumers.

This mathematical model contrasts with data structures, which are concrete representations of data, as viewed from the perspective of the implementor (not users).

For instance, a stack is an abstract data type that may be implemented in terms of many concrete data types (as an array, vector, linked list, etc.). 

Programming paradigm that is agnostic about concrete data types is called generic programming.
