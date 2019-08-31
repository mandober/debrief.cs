# Database models

**Database model** specifies the implemented type of *data modeling*, that defines the logical structure of the database and a way in which the data is organized, stored and manipulated.

DB model by abstraction level:
- Conceptual model
- Logical model
- Physical model

DB models:
- Hierarchical database model
- Network model
- Relational model
- Entity–relationship model
- Enhanced entity–relationship model
- Object model
- Document model
- Entity–attribute–value model
- Star schema

The most popular example of a database model is the relational model, which uses a table-based format.


## Conceptual data model
*Conceptual data model* (CDM), or *conceptual schema*, is a high-level description of a business's informational needs that typically includes only the main concepts and relationships. Usually, this is a first-cut model, with insufficient detail to build an actual db. This level describes the structure of the whole database for a group of users. The conceptual model is also known as the data model that can be used to describe the conceptual schema when a database system is implemented. It hides the internal details of physical storage and targets on describing entities, datatype, relationships and constraints.

## Logical data model
Logical data model (LDM), or *logical schema*, is a data model of a specific problem domain expressed independently of a particular database management product or storage technology (physical data model), but in terms of data structures such as relational tables and columns, object-oriented classes, or XML tags. This is as opposed to a conceptual data model, which describes the semantics of an organization without reference to technology.

## Physical data model
A physical data model (PDM), or *database design*, is a representation of a data design as implemented, or intended to be implemented, in a DBMS. It is typically derived from a logical data model, although it may also be reverse-engineered from a given db implementation. A complete physical data model will include all the db artifacts required to create relationships between tables or to achieve performance goals, such as indexes, constraint definitions, linking tables, partitioned tables or clusters. Analysts can usually use a physical data model to calculate storage estimates; it may include specific storage allocation details for a given db system.


## Hierarchical database model
This is the oldest form of data base model, developed by IBM for IMS (Information Management System). It is a set of organized data in tree structure. DB record is a tree consisting of many groups called segments. It uses one to many relationships. The data access is also predictable.


---

https://en.wikipedia.org/wiki/Database_model
https://en.wikipedia.org/wiki/Conceptual_schema
https://en.wikipedia.org/wiki/Logical_data_model
https://en.wikipedia.org/wiki/Physical_data_model
https://en.wikipedia.org/wiki/Database_schema
