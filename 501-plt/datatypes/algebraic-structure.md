# Algebraic structure

https://en.wikipedia.org/wiki/Algebraic_structure

In general, an **algebraic structure** is a nonempty set endowed with an additional structure, obeying some set of axioms. The set involved is called **underlying set** or **carrier set**. The additional structure may be an operation (or operations) on the elements of the carrier set.

The important thing is that a set is never an algebraic structure alone. To qualify as an algebraic structure there has to be a triple:
1. a nonempty **set** together with 
2. (at least one) **operation**
3. upholding some **axioms**

Considering only the triple `{S, binop, Ax}`, that is
- nonempty set `S` as the underlying set
- a binary operation, `⨀`, that combines two elements of the set
- and a set of axioms `Ax`

we can classify the applicable algebraic structures according to the axioms they uphold.


## Axioms

Axioms involved in algebraic structures under our consideration:
- Totality:      (a,b ∈ S) -> (a ⨀ b) ∈ S
- Associativity: (a,b,c ∈ S) -> a ⨀ b ⨀ c ≡ (a ⨀ b) ⨀ c ≡ a ⨀ (b ⨀ c)
- Identity:      (!∃ε, ∀a ∈ S) -> ε ⨀ a ≡ a ≡ a ⨀ ε
- Invertability: (!∃ε, ∀a, ∃a' ∈ S) -> a ⨀ a' ≡ ε ≡ a' ⨀ a
- Commutativity: (∀a,b ∈ S) -> a ⨀ b ≡ b ⨀ a


### Totality

**The Axiom of Totality** or **The Axiom of Closure** indicates that an operation is closed over the underlying set. This means that combining any two elements produces an element that is also a member of that set.

> a,b ∈ S -> a ⨀ b ∈ S

If `a` and `b` are elements of a set `S`, 
then combining `a` and `b` with a bin.op, `a ⨀ b`, 
produces a result that is also in that set: `a ⨀ b ∈ S`

All other algebraic structures considered here uphold the axiom of totality.

**Magma** is a basic kind of algebraic structure that consists of a set together with a closed binary operation.

A **morphism of magmas** is a function, `f: M → N`, mapping magma `M` to magma `N` while preserving the closed binary operation:

`f(a ⊛ b) = f(a) ⊚ f(b)`

where `⊛` denotes the binary operation on `M`, and `⊚` on `N`.



### Associativity

**The Axiom of Associativity** says that the groups in which the elements of a set are combined is irrelevant.


> a,b,c ∈ S  ->  a ⨀ b ⨀ c  ≡  (a ⨀ b) ⨀ c  ≡  a ⨀ (b ⨀ c)

If `a`, `b` and `c` are elements of a set `S`, then 
combining the result of combining `a` and `b` with `c`
is equivalent to 
combining `a` with the result of combining `b` and `c`.

**Semigroup** is an algebraic structure consisting of a set together with a closed, associative, binary operation.



### Identity

A semigroup with an identity element is an algebraic structure called **Monoid**. An *identity (neutral) element* is the element `e` that, when combined with any other element, `a`, in binop, `e ⨀ a`, results in `a`. That is, the identity element combined any other element doesn't change or alter the other element, it is neutral wrt the binop. The identity is the unique element.

> (!∃e,∀a ∈ S) -> e ⨀ a ≡ a ≡ a ⨀ e


4. INVERTABILITY

Each element, `a`, has an inverse element, `a'`, that is also a member of the same set. (inverse element is denoted by `a^-1` but here `a'` is used). When an element is combined with its inverse, the result is the identity element.

> (!∃e, ∀a, ∃a' ∈ S) -> a ⨀ a' ≡ e ≡ a' ⨀ a


5. COMMUTATIVITY

> (∀a,b ∈ S) -> a ⨀ b = b ⨀ a







Considering only nonempty sets, `S`, endowed with a single binary operation, denoted by `⨀`,


 
An **algebraic structure** is a (nonempty) set M together with one or more operations and with respects to a set of axioms.



which satisfy some axioms.

(i.e. a function ∗:M×M→M)

In other words, the definition of an algebraic structure is an axiomatic system. It can be proved that an axiomatic system which defines an algebraic structure verifies the logic requirements which any axiomatic system has to fulfill.


All I can do is give you some pointers to the standard terminology of elementary model theory and universal algebra: a structure consists of a set equipped with a set of finitary operations and relations (https://en.wikipedia.org/wiki/Structure_(mathematical_logic). An algebraic structure is one in which the only relation is equality (which many authors treat as a logical rather than mathematical concept) (https://en.wikipedia.org/wiki/Algebraic_structure). It is usual to associate a fixed set names for the operations and relations used in a structure. Such an association is called a signature for the structure and results in a logical language with function and relation symbols for the operations and relations. An axiomatic system is just a set of axioms in a logical language (https://en.wikipedia.org/wiki/Axiomatic_system). Any set of axioms in the language defined by some signature defines a class of structures for its signature (namely the structures in which those axioms hold) and conversely a class of structures for a signature defines a set of axioms (namely the axioms which hold in each structure in the class). A class of algebraic structures defined by a set of equational axioms is called an algebraic variety (https://en.wikipedia.org/wiki/Algebraic_variety).


A poset has a structure, but not an algebraic structure. A poset is equipped with a partial order relation, this is not a finitary operation. For a set S an n-tary operation is a function F:S^n → S. An order relation is not a function.



An algebraic structure is a totally ordered set, whose elements are
- sets S_i,
- (finitary) operations O_j over these sets,
- relations R_k between these sets.

An example of structure with more than one set is a vector space W over a field K: (K,W,+,×).
An example of structure with also a relation is an ordered field:  (K,+,⋅,≤)


---

**Algebraic structure** is a carrier set together with operations on that carrier set, with the operations satisfying certain axioms.

A set with such an additional structure is also called an **algebra**. Some algebraic structures have friendly names, such as group, field, ring.

An algebraic structure, or algebra, is a type of mathematical object, more narrowly, it is a special mathematical structure. To satisfy the minimal requirements of becoming an algebraic structure, a mathematical structure must be equipped with a binary operation and obey a certain set of axioms.

3 parts of an algebraic structure:
1. a carrier set
2. a set of operations
3. a set of axioms


## The underlying set

A carrier (or underlying) set is a plain old set. For example, the set of natural numbers. In programming languages, a type is the underlying set. This set alone is never an algebra unless it has an additional structure "attached".


## The operations

Only when a carrier set is equipped with an operation and a set of axioms, it becomes an algebra. The operation that operates on (combines, relates) the elements of the set must satisfy the prescribed axioms.

Commonly, the operation is binary and denoted by a `⋆` ("star") or `•` ("dot").

## An example

A familiar group is the set of integers, $$\mathbb{Z}$$, together with addition (denoted by a plus sign), $$G = \{ \mathbb{Z}, +\}$$. This group upholds the axioms of totality, identity, associativity, invertibility and commutativity. Since commutativity is not the required group axiom, this is an abelian or commutative group.

The integers are closed under addition. There is a unique identity element, 0. Every integer has an inverse; when an integer is combined with its inverse, the identity element is produced; e.g. inverse pairs: (1,-1), (-1,1), (0,0).

$$\forall x,y,z \in \mathbb{Z}$$:
- closure: $$x+y \in \mathbb{Z}$$
- identity: $$x+0 = 0+x = x$$
- invertibility: $$x+(-x) = (-x) + x = 0$$
- associativity: $$x+(y+z) = (x+y)+z$$
- commutativity: $$x+y = y+x$$
