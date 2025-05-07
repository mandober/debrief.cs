# LINKS

* Write a hash table in C
https://github.com/jamesroutley/write-a-hash-table

* wikibooks: Data Structures: Hash Tables
https://en.wikibooks.org/wiki/Data_Structures/Hash_Tables
https://en.wikibooks.org/wiki/Algorithm_Implementation/Hashing

* Open hashing or separate chaining
https://www.log2base2.com/algorithms/searching/open-hashing.html

* CS140 Lecture notes - Hashing
https://web.eecs.utk.edu/~bvanderz/teaching/cs140Sp15/Notes/Hashing/

* Cornell CS 312 (2008) Data Structures and Functional Programming
https://www.cs.cornell.edu/courses/cs312/2008sp/
https://www.cs.cornell.edu/courses/cs312/2008sp/schedule.html
* Cornell CS 312 (2008): Lecture 20 Hash tables and amortized analysis
https://www.cs.cornell.edu/courses/cs312/2008sp/lectures/lec20.html
* Cornell CS 312 (2008): Lecture 21 Hash functions
https://www.cs.cornell.edu/courses/cs312/2008sp/lectures/lec21.html

* Data Structure Visualizations: open hashing
https://www.cs.usfca.edu/~galles/visualization/OpenHash.html

* MIT 6.006 Introduction to Algorithms, Fall 2011: Hashing with Chaining
https://www.youtube.com/watch?v=0M_kIqhwbFo
Complete course: http://ocw.mit.edu/6-006F11

* djb2 hash
http://www.cse.yorku.ca/~oz/hash.html

* Hashing with SSE2 Revisited, or My Hash Toolkit
http://cessu.blogspot.com/2008/11/hashing-with-sse2-revisited-or-my-hash.html

* Hash functions by Paul Hsieh
http://www.azillionmonkeys.com/qed/hash.html

* A fast hash function for hash table lookup
https://www.burtleburtle.net/bob/hash/doobs.html

* Hash functions
https://archive.is/20130703050807/bretm.home.comcast.net/hash/11.html

* Pluto Scarab - Evaluation of Fowler/Noll/Vo (FNV) Hash
https://web.archive.org/web/20060116075140/http://bretm.home.comcast.net/hash/6.html
https://web.archive.org/web/20060116065454/http://bretm.home.comcast.net/hash/7.html











bin1 = b₃b₂b₁b₀
len1 = len(bin1)
count1s(bin1) = n
  if n odd    :  XOR(bin1) = 1
  if n odd    : XNOR(bin1) = 0
  if n = 0    :   OR(bin1) = 0
  if n = 0    :  NOR(bin1) = 1
  if n = len1 :  AND(bin1) = 1
  if n = len1 : NAND(bin1) = 0

      1         3                       2
p q | ∧ ↑ ∨ ↓ | p¬p q¬q | 1 0 | ≡ ⊕ | → /→| ← /←
1 1 | 1 0 1 0 | 1 0 1 0 | 1 0 | 1 0 | 1 0 | 1 0
1 0 | 0 1 1 0 | 1 0 0 1 | 1 0 | 0 1 | 0 1 | 1 0
0 1 | 0 1 1 0 | 0 1 1 0 | 1 0 | 0 1 | 1 0 | 0 1
0 0 | 0 1 0 1 | 0 1 0 1 | 1 0 | 1 0 | 1 0 | 1 0

F ∧ /→p |/← q ⊕ ∨ | ↓ ≡¬q ← |¬p → ↑ T
0 1 0 1 | 0 1 0 1 | 0 1 0 1 | 0 1 0 1
0 0 1 1 | 0 0 1 1 | 0 0 1 1 | 0 0 1 1
0 0 0 0 | 1 1 1 1 | 0 0 0 0 | 1 1 1 1
0 0 0 0 | 0 0 0 0 | 1 1 1 1 | 1 1 1 1


F 0000 | 1111 T
↓ 0001 | 1110 ∨
→̅ 0010 | 1011 →
p̅ 0011 | 1100 p
←̅ 0100 | 1011 ←
q̅ 0101 | 1010 q
X 0110 | 1001 ≡
↑ 0111 | 1000 ∧
