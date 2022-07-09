# Conflict-free replicated data type

https://en.wikipedia.org/wiki/Conflict-free_replicated_data_type

In distributed computing, 
a **conflict-free replicated data type** (CRDT), 
sometimes called *mobiles*, 
is a data structure 
which can be replicated across multiple computers in a network, 
where the replicas can be updated independently and concurrently 
without coordination between the replicas, 
and where it is always mathematically possible 
to resolve inconsistencies that might come up.

## Motivation

Concurrent updates to multiple replicas that initially have the same data, can result in inconsistencies between the replicas when there is no coordination protocol between them, which is generally unresolvable. Restoring consistency and data integrity in face of the update conflicts may require some or all of the updates to be entirely or partially dropped. Therefore, much of distributed computing focuses on how to prevent concurrent updates to replicated data.

Another approach to this problem is *optimistic replication*, where all concurrent updates are allowed to go through, potentially creating inconsistencies, with the resolution via mergers performed later. Unforunatelly, the optimistic replication may not work with familiar data types in the general case.

This is where a particular kind of data comes into play - with CRDT optimistic replication actually does work. It is mathematically possible to always merge or resolve concurrent updates on different replicas of the data structure without conflicts.

As an example, a one-way Boolean event flag is a trivial CRDT: one bit, with a value of true or false. True means some particular event has occurred at least once. False means the event has not occurred. Once set to true, the flag cannot be set back to false. (An event, having occurred, cannot un-occur.) The resolution method is "true wins": when merging a replica where the flag is true (that replica has observed the event), and another one where the flag is false (that replica hasn't observed the event), the resolved result is true - the event has been observed.

## Types of CRDT

There are two approaches to CRDTs, both of which can provide *strong eventual consistency*: operation-based and state-based CRDTs. They are theoretically equivalent as they can emulate each other, but there are practical differences.

## Operation-based CRDTs

Operation-based CRDTs are also called **commutative replicated data types**, or CmRDTs.

Advantages of CmRDTs over CvRDTs are that they transmit only the update operations, which are typically small. Disadvantage is that they require certain guarantees from the communication middleware: operations must not be dropped or duplicated when transmitted to the other replicas and operations must be delivered in the causal order.

CmRDT replicas propagate state by transmitting only the update operation.

For example, a CmRDT of a single integer might broadcast the operations (+10) or (−20). Replicas receive the updates and apply them locally. The operations are *commutative*, but *not necessarily idempotent*.

The communications infrastructure must therefore ensure that all operations on a replica are delivered to the other replicas, without duplication, but in any order.

*Pure operation-based CRDTs* are a variant of operation-based CRDTs that reduces the metadata size.


## State-based CRDTs

State-based CRDTs are called **convergent replicated data types**, or CvRDTs.

Advantages of CvRDTs to CmRDTs are that they are simpler to design and implement. The only requirement from the communication middleware is some kind of gossip protocol. Disadvantages are that the entire state of every CRDT must be transmitted eventually to every other replica, which may be costly.

In contrast to CmRDTs, CvRDTs send their full local state to other replicas, where the states are merged by a function which must be *associative*, *commutative* and idempotent.

The merge function provides a *join* operation for any pair of replica states, so the set of all states forms a *semilattice*.

The update function must *monotonically increase* the internal state, according to the same partial order rules as the semilattice.

*Delta state CRDT* (or simply Delta CRDTs) are optimized state-based CRDTs where only recently applied changes to a state are disseminated instead of the entire state.


## Comparison

While CmRDTs place more requirements on the protocol for transmitting operations between replicas, they use less bandwidth than CvRDTs when the number of transactions is small in comparison to the size of internal state.

However, since the CvRDT merge function is associative, merging with the state of some replica yields all previous updates to that replica.

Gossip protocols work well for propagating CvRDT state to other replicas while reducing network use and handling topology changes.

Some lower bounds on the storage complexity of state-based CRDTs are known.


## Known CRDTs

- G-Counter (Grow-only Counter)
- PN-Counter (Positive-Negative Counter)
- G-Set (Grow-only Set)
- 2P-Set (Two-Phase Set)
- LWW-Element-Set (Last-Write-Wins-Element-Set)
- OR-Set (Observed-Remove Set)
- Sequence CRDTs
