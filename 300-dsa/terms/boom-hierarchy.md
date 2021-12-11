# The Boom hierarchy

https://blog.acolyer.org/2014/11/06/the-boom-hierarchy/

The Boom Hierarchy is based on whether a given algebraic data structure satisfies these 4 axioms:
- neutral, unit, identity: x ⨂ ϵ = x = ϵ ⨂ x
- associativity : a ⨂ (b ⨂ c) = (a ⨂ b) ⨂ c
- commutativity : a ⨂ b = b ⨂ a
- idempotency   : a ⨂ a = a

The order of axioms must be respected so that, e.g., lists have the code 1100, meaning they support identity and assoc, but not comm and idempotency. All algebras are considered with a binary union (join) operation. The more the axioms an algebra satisfies means less structural information it has.

```
I A C I
d s m p
- - - -
1 1 1 1 set, idempotent bag
1 1 1 0 bag
1 1 0 1 idempotent list, ordered set
1 1 0 0 list
1 0 1 1 idempotent mobiles
1 0 1 0 mobiles, conflict-free replicated data type (CRDT)
1 0 0 1 idempotent tree
1 0 0 0 tree

0 1 1 1 nonempty set, nonempty idempotent bag
0 1 1 0 nonempty bag
0 1 0 1 nonempty idempotent list
0 1 0 0 nonempty list
0 0 1 1 nonempty idempotent mobiles
0 0 1 0 nonempty mobiles
0 0 0 1 nonempty idempotent tree
0 0 0 0 nonempty tree
```


**set**: 1111
- identity: empty set, ∅
- assoc: {1,2} ∪ ({3} ∪ {4,5}) = ({1,2} ∪ {3}) ∪ {4,5}
- comm : A ∪ B = B ∪ A
- idem : S ∪ S = S
- unordered collection -> commutativity
- unique elements -> idempotence

**bag**: 1110
- bag is a multiset, i.e. allows multiplicity
- identity: empty bag, ⟅⟆
- assoc: ⟅1,2,1⟆ ∪ (⟅2⟆ ∪ ⟅1,3⟆) = (⟅1,2,1⟆ ∪ ⟅2⟆) ∪ ⟅1,3⟆
- comm : ⟅1,2,1⟆ ∪ ⟅2⟆ = ⟅2⟆ ∪ ⟅1,2,1⟆
- idem : ⟅1,2⟆ ∪ ⟅1,2⟆ != ⟅1,2⟆ for bags respect multiplicity, it is: ⟅1,1,2,2⟆
- multiplicity collection 
- unordered collection -> idempotent

**mobiles**: 1010
- conflict-free replicated data type (CRDT)

**list**: 1100
- neutral element: empty list, []
- assoc of (++): xs ++ (ys ++ zs) = (xs ++ ys) ++ zs
- ordered, multiplicity respected

ordered set: 1101
- identity: ✔ ∅
- assoc: ✔
- comm : ✘
- idem : ✔
- ordered, multiplicity not respected
- elements are unique but ordered

**tree**: 1000
- identity: empty tree


Properties
- ordered structs cannot be commutative, `order -> ¬COMMUTATIVITY`
- structs with multiplicity cannot be idempotent, `multiplicity -> ¬IDEMPOTENT`



set : mutiset : list/sequence : ordered sets

Which struct is ordered but does not respect multiplicity? ordered sets!


There are 16 different combinations, each repr a different data structure. This collection of data structures is *the Boom Hierarchy*. Reduce, map, and filter can be applied to all data structures in the Boom hierarchy.

> Any homomorphism from a free algebra (algebraic data structure) can be defined as a combination of map and reduce.

A set has code 1111; existential qualification, isEmpty, size, membership, and others can be defined using map and reduce translations.

Sets, bags, and lists are all members of the Boom Hierarchy of types, consisting of types whose values are constructed from `empty` and `singleton`s using a binary `union` operation; `empty` is the unit of `union`, and the hierarchy pertains to which properties out of associativity, commutativity, and idempotence the `union` operator satisfies.






---

Bird-meertens formalism (or BMF, or Squiggol) is a calculus for derivation of functional programs from a specification. It consists of a set of higher-order functions that operate on lists including map, fold, scan, filter, inits, tails, cross product and function composition.
