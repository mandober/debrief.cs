# Databases vs schemas


SQL standard defines *SQL schema* as a *namespace* within a database.

However, many DBs have their own implementation, with the overlapping of functionality between shemas and (parent) database.

Fully qualified table name is prefixed by db and schema: `db.schema.table`. However, dropping db or schema part is also allowed: `db.table` or `schema.table`.

With eponymous tables schema and/or db name can be used to distinguish between them:
- without explicit schema:
  `SELECT * FROM db1.[sch.]tbl` vs `SELECT * FROM db2.[sch.]tbl`
- without explicit db name:
  `SELECT * FROM [db.]sch1.tbl` vs `SELECT * FROM [db.]sch2.tbl`


## MySQL and PostgreSQL
MySQL encourages creating multiple dbs per project. In this context, MySQL databases are analogous in function to Postgre's schemas.

On the other hand, PostgreSQL lacks OOB cross-db functionality of MySQL. It has adhered more to the specs and implemented cross-table and cross-schema, leaving room for future cross-database functionality impovements.

MySQL aliases schema and database, so `CREATE SCHEMA` is the same as `CREATE DATABASE`. MySQL has implemented cross-database functionality, but skipped schema functionality.

## Informix
Informix supports multiple databases in a server instance like MySQL. It supports the `CREATE SCHEMA` syntax as a way to group DDL statements into a single unit creating all objects created as a part of the schema as a single owner. Informix supports a database mode called ANSI mode which supports creating objects with the same name but owned by different users.


## Oracle
Oracle has its own spin where creating a user is synonymous with creating a schema: db admin can create a user called `PROJECT` and then create a table `PROJECT.TABLE`. Users can exist without schema objects, but an object is always associated with an owner (though that owner may not have privileges to connect to the database).

With the *shared-everything* Oracle RAC architecture, the same database can be opened by multiple servers concurrently. This is independent of replication, which can also be used, whereby the data is copied for use by different servers.

In the Oracle implementation, a *database* is a set of files which contains the data while the *instance* is a set of processes (and memory) through which a database is accessed.

## Foreign schemas
PostgreSQL and some other databases have recently added support for foreign schemas, which is the ability to import schemas from other servers as defined in ISO/IEC 9075-9 (published as part of SQL:2008).

This appears like any other schema in the database according to the SQL specification while accessing data stored either in a different database or a different server instance. The import can be made either as an entire foreign schema or merely certain tables belonging to that foreign schema.

While support for ISO/IEC 9075-9 bridges the gap between the two competing philosophies surrounding schemas, MySQL and Informix maintain an implicit association between databases while ISO/IEC 9075-9 requires that any such linkages be explicit in nature.
