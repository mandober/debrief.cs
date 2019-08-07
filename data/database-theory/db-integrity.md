# Data Integrity
The term data integrity refers to the accuracy and consistency of data.

A good database will enforce data integrity whenever possible.

Maintaining data integrity means making sure the data remains intact and unchanged throughout its entire life cycle. This includes the capture of the data, storage, updates, transfers, backups, etc. Every time data is processed there’s a risk that it could get corrupted.

Risks to Data Integrity:
- mismatched data type
- mismatched data format
- data inconsistency (power failures, user failures)
- hacker attacks

Many of these risks can be addressed from within the database itself e.g. through the use of data types and constraints, encryption.

Types of Data Integrity:
1. Entity integrity
2. Referential integrity
3. Domain integrity
4. User-defined integrity

Entity integrity defines each row to be unique within its table. No two rows can be the same. To faciliate this, a primary key is defined.

Referential integrity is concerned with relationships. When two or more tables have a relationship, we have to ensure that the foreign key value matches the primary key value at all times. We don't want to have a situation where a foreign key value has no matching primary key value in the primary table. This would result in an orphaned record.

Domain integrity concerns the validity of entries for a given column. Selecting the appropriate data type for a column is the first step in maintaining domain integrity. Other steps could include, setting up appropriate constraints and rules to define the data format and/or restricting the range of possible values.

User-defined integrity allows the user to apply business rules to the database that aren’t covered by any of the other three data integrity types.

