# Database normalization

Database normalization is the process of structuring a relational database in accordance with a series of so-called *normal forms* in order to reduce data redundancy and improve data integrity. It was first proposed by Edgar F. Codd as an integral part of his relational model.

Normalization entails organizing the columns (attributes) and tables (relations) of a database to ensure that their dependencies are properly enforced by database integrity constraints. It is accomplished by applying some formal rules either by a process of *synthesis* (creating a new database design) or *decomposition* (improving an existing database design).

Normalization benefits:
- eliminating redundant data (e.g. storing the same data in several tablea)
- ensuring data dependencies make sense (storing only related data in a table)
- decreasing the db size
- ensure that data is stored logically

There are several normal forms, 1NF through 6NF, but in practice, the first 3 are the most frequent, while others are rarely seen.

Normalization forms are cumulative, e.g. for a database to be in 3NF, it must also fulfill requirements of NF1 and NF2.


## 1NF
First normal form, `1NF`: **data atomicity**.

This means that all values in db table must be atomic i.e. no value is compounded. Atomic values cannot be divided into constituent parts. For example, an address can be divided into comprising parts, like street name, number, zip code, etc.

- only atomic values/fields
- Eliminate duplicate columns from the same table.
- Create separate tables for each group of related data and identify each row with a PK (consisting of a single column with unique values or a set of columns being unique tuples).


## 2NF
Second normal form, `2NF`: **partial dependencies**
- Remove partial dependencies
- in order to have partial dependencies there has to be a compound key.
- Remove subsets of data that apply to multiple rows of a table and place them in separate tables.
- Create relationships between these new tables and their predecessors through the use of FK.

An example would be a library db with `authors` and `books` tables. This is many-to-many relation and the correct way to design it would be to have a *junction table*, possibly called `authors_books`. It would have compound PK consisting of two FKs: `author_id` and `book_id`. This would be free of partial dependencies, but without a `books` table, for example, if one should put the attribute `isbn` in the `authors_books` table - that would be a partial dependency; because that attribute would only partially depend on PK (which is a compound key of both FK).

PK (`authors_books_id`) = FK (`author_id`) AND FK (`book_id`)


## 3NF
Third normal form, `3NF`: **transitive dependencies**.
- Remove transitive dependencies
- Remove columns that are not dependent upon the primary key.
- In the end, each attribute (column) depends only on the PK.



## BCNF
The Boyce-Codd Normal Form, `BCNF` or `3.5NF`:
- Every determinant must be a candidate key.


## 4NF
`4NF` has an additional requirement:
- A relation is in 4NF if it has no multi-valued dependencies.


## 5NF
Joining decomposed tables should not nether loose nor create new records.


## 6NF
Sixth normal form `6NF` is a term in relational database theory, used in two different ways...




---

* [Database Normalization Basics](https://www.lifewire.com/database-normalization-basics-1019735)
* [Database Normalization Basics](http://databases.about.com/od/specificproducts/a/normalization.htm)
* [Database Normalization Intro, Part 1](http://www.databasejournal.com/sqletc/article.php/1428511)
* [Database Normalization Intro, Part 2](http://www.databasejournal.com/sqletc/article.php/26861_1474411_1)
* [An Introduction to Database Normalization](http://mikehillyer.com/articles/an-introduction-to-database-normalization/)
* [A tutorial on the first 3 normal forms](http://phlonx.com/resources/nf3/)
* [Description of the database normalization basics](http://support.microsoft.com/kb/283878)
* [Database Normalization and Design Techniques](http://www.barrywise.com/2008/01/database-normalization-and-design-techniques/)
* [A Simple Guide to Five Normal Forms in Relational Database Theory](http://www.bkent.net/Doc/simple5.htm)
* [Normalization in DBMS by Chaitanya (beginnersbook.com)](http://beginnersbook.com/2015/05/normalization-in-dbms/)
* [A Step-by-Step Guide to Database Normalization](https://www.databasestar.com/normalization-in-dbms/)
* [ETNF – Essential tuple normal form](http://researcher.watson.ibm.com/researcher/files/us-fagin/icdt12.pdf)
