# ACID


https://www.lifewire.com/the-acid-model-1019731
https://www.lifewire.com/databases-glossary-1019603



The ACID model of database design enforces data integrity through:
* **Atomicity**: each database transaction must follow an all-or-nothing rule, meaning that if any part of the transaction fails, the entire transaction fails.
* **Consistency**: each database transaction must follow all the database's defined rules; any transaction that would violate these rules is not allowed.
* **Isolation**: each database transaction will occur independently of any other transaction. For example, if multiple transactions are submitted concurrently, the database will prevent any interference between them.
* **Durability**: each database transaction will permanently exist in any database failure, via backups or other means.


## ACID model
The ACID model sets forward four goals that every database management system must strive to achieve: atomicity, consistency, isolation, and durability.

A relational database that fails to meet any of these four goals cannot be considered reliable. A database that possesses these characteristics is considered *ACID-compliant*.

## ACID Defined

**Atomicity** states that database modifications must follow an "all or nothing" rule. Each transaction is said to be "atomic". If one part of the transaction fails, the entire transaction fails. It is critical that the database management system maintains the atomic nature of transactions in spite of any DBMS, operating system, or hardware failure.

**Consistency** states that only valid data will be written to the database. If, for some reason, a transaction is executed that violates the db's consistency rules, the entire transaction will be rolled back, and the database will be restored to a state consistent with those rules. On the other hand, if a transaction successfully executes, it will take the database from one state that is consistent with the rules to another state that is also consistent with the rules.

**Isolation** requires that multiple transactions occurring at the same time not impact each other’s execution. For example, if Joe issues a transaction against a database at the same time that Mary issues a different transaction, both transactions should operate on the database in an isolated manner. The database should either perform Joe’s entire transaction before executing Mary’s, or vice-versa. This prevents Joe’s transaction from reading intermediate data produced as a side effect of part of Mary’s transaction that will not eventually be committed to the database. Note that the isolation property does not ensure which transaction will execute first — merely that transactions will not interfere with each other

**Durability** ensures that any transaction committed to the database will not be lost. Durability is ensured through the use of database backups and transaction logs that facilitate the restoration of committed transactions in spite of any subsequent software or hardware failures.


## ACID in Practice
Database administrators use several strategies to enforce ACID.

One used to enforce atomicity and durability is *write-ahead logging* (WAL), in which any transaction detail is first written to a log that includes redo/undo information. This ensures that, given a database failure of any sort, the database can check the log and compare its contents to the state of the database.

Another method used to address atomicity and durability is *shadow-paging*, in which a shadow page is created when data is to be modified. The query's updates are written to the shadow page rather than to the real data in the database. The database itself is modified only when the edit is complete.

Another strategy is called the *two-phase commit protocol*, especially useful in distributed database systems. This protocol separates a request to modify data into two phases: a *commit-request phase* and a *commit phase*. In the request phase, all DBMSs on a network that are affected by the transaction must confirm that they have received it and have the capacity to perform the transaction. Once confirmation is received from all relevant DBMSs, the commit phase completes in which the data is actually modified.
