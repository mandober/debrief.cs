# Multimap

https://www.wikiwand.com/en/Multimap

A **multimap**, sometimes also *multihash* or *multidict*, 
is a generalization of a map (or associative array) abstract data type 
in which more than one value may be associated with the same key.

Both map and multimap are particular cases of containers (for example, see C++ Standard Template Library containers). Often the multimap is implemented as a map with lists or sets as the map values. 

In a student enrollment system, where students may be enrolled in multiple classes simultaneously, there might be an association for each enrollment of a student in a course, where the key is the student ID and the value is the course ID. If a student is enrolled in three courses, there will be three associations containing the same key. The index of a book may report any number of references for a given index term, and thus may be coded as a multimap from index terms to any number of reference locations or pages. Querystrings may have multiple values associated with a single field. This is commonly generated when a web form allows multiple check boxes or selections to be chosen in response to a single form element.
