# Data integrity


## SQL Server tools for maintaining data integrity
The goal of data integrity is to protect the data with the guarantee that the data is fundamentally correct; that no illogical or impossible data is ever accepted to the db.

* *Protection tools*: db provided tools and techniques to use them.
* *When and why to use what tool*: exploring the different types of protection
tools and discussing when and where they should be used.

Understanding the available tools for protection of data quality is the second most important thing in the DB world:
1. Database normalization
2. Data integrity protection tools
3. Writing *set-based queries*

There are automatic data protection

meaning tools that can be used to seamlessly protect the integrity of the data without any further coding effort or user action to make sure that they work, and no method of overriding the protection without cheating (you can disable some protections, and you can get around them using bulk copy methods).

You can also take manual steps to protect your data; they generally require the client to adhere to a given API to work. This could include stored procedures, client code, defaults, and so forth. I won’t discuss manual protection in this chapter, but the point of using manual data protection techniques is that they enforce rules that can be overridden or applied situationally, or that are frequently changed. These rules are generally apt to change, so you wouldn’t be able to easily write a query to find data that didn't meet the rules over a long period of time.

We'll discuss the following types of protection that allow you to design integrity into the base structure:
* Data types: defining the storage of values of the proper base type and size
* NULL specifications: making sure that only columns where you might have a NULL value are defined to allow NULLs
* Uniqueness constraints: preventing duplicate values for a column or set of columns
* Filtered unique indexes: preventing duplicate values for a column or set of columns for a subset of rows in the table
* Foreign key constraints: making sure every foreign key value has a corresponding primary key value in the related tableProtection tools 13
* Check constraints: checking that values in the row meet the minimum standards
* Triggers: the catch-all of data protection, which allows you to execute a batch of code for any DML operation to validate data and even introduce side effects to the DML operation that happen without the knowledge of the client

As you'll see in the following subsections, this list is loosely ordered from the most desirable to the least desirable, particularly where there’s overlap.
