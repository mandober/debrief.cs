# Object-Relational Mappers

*Object-relational mapping* maps classes, objects and properties to the tables, rows and columns.


## Object vs Relation model

**Object model** in OOP languages allows objects (instances) to reference each other thereby forming a *graph*. It also supports inheritance, allowing a class to have different relations with other classes.

In contrast, **relation model** from RDBs, is tabular and based on the relational algebra, which defines *linked heterogeneous tuples* - groupings of data fields into a "row" with different types for each field.

The object/relational **impedance mismatch** is a set of semantic and syntactic problems encountered when mixing an OOP language and a relational DB, that is, when this two models collide; particularly because objects or class definitions must be mapped to database tables defined by a relational (not object) model.

These problems would best be solved by using an object-orientated database (OODB), but their market share is still insignificant compared to relational DBs (RDB).

To ease this problem, an **Object-Relational Mapper** (ORM) is a program employed to translate the concepts between the two models.

ORM maps:
```
table <=> class
rows <=> objects
col <=> property
FK <=> inheritance, relations between class
SP <=> method
```

Two particularly striking differences between the *object model* and the *relation model* are N:M relations and inheritance.

While in an object model you can map an N:M relation between objects through a reciprocal set of objects, an intermediate table is required in the RDB; it doesn't support inheritance.



## The need for ORMs
When a .NET developer reads in data from a database with a `DataReader` or `DataSet`, the developer is not doing object-relational mapping at this point. Although DataReader and DataSet are .NET objects, they only manage table structures. They are untyped, nonspecific containers from the point of view of an object model. Only when a developer defines specific classes for the structures stored in the tables and copies the contents from DataReader or DataSet into these specific data structures is the developer performing OR-mapping (witch is tedious and monotonous work).

## ORM Software
Microsoft was late with EF, so many other ORMs are available: NHibernate, Telerik Data Access (aka Open Access), Genome, LLBLGen Pro, Wilson, SubSonic, OBJ.NET, DataObjects.NET, Dapper, PetaPoco, Massive, DevExpress XPO.

With LINQ to SQL (exclusively for SQL Server, from .NET 3.5), ADO.NET Entity Framework and Entity Framework Core, Microsoft now has 3 ORM products, but it was announced that EF Core will be the only one to receive further development.



---

Entity Framework Core version history
https://www.nuget.org/packages/Microsoft.EntityFrameworkCore



---

## OOP-to-relational mismatch

https://docs.microsoft.com/en-us/sql/connect/sql-connection-libraries?view=sql-server-2017

Relational: Client programs that are written in an OOP language often use SQL drivers which return queried data in a format that is more relational than object oriented. C# using ADO.NET is one example. The OOP-relational format mismatch sometimes makes the OOP code harder to write and understand.

ORM: Other drivers or frameworks return queried data in the OOP format, avoiding the mismatch. These drivers work by expecting that classes have been defined to match the data columns of particular SQL tables. The driver then performs the object-relational mapping (ORM) to return queried data as an instance of a class. Microsoft's Entity Framework (EF) for C#, and Hibernate for Java, are two examples.


SQL Server drivers for *relational access*:
* C#
  - ADO.NET
  - .NET Core (drivers for Linux-Ubuntu, MacOS, Windows)
* C++
  - ODBC
  - OLE DB
* Java
  - JDBC
* Node.js
  - Node.js driver
* PHP
  - PHP
* Python
  - pyodbc, install instructions
  - Download ODBC
* Ruby
  - Ruby driver, install instructions
  - Ruby download page


SQL Server drivers for *ORM access*:
* C#
  - Entity Framework Core
  - Entity Framework (6.x or later)
* Java
  - Hibernate ORM
* PHP
  - Eloquent ORM, included in Laravel install
* Node.js
  - Sequelize ORM
* Python
  - Django
* Ruby
  - Ruby on Rails


Build an app using SQL Server
https://www.microsoft.com/en-us/sql-server/developer-get-started/







# Entity Framework Concepts

EF supports:
* **Reverse engineering** (or *database first*) of existing databases: an object model is created from an existing database schema 
* **Forward engineering** of databases: a database schema is generated from an object model

Forward engineering can be used at development time (schema migrations) or at runtime. A *schema migration* is the creation of the database with an initial schema or a later extension/modification of the schema.

*ADO.NET Entity Framework*, the predecessor of EFCore, supported 4 process models:
* Reverse engineering with EDMX files (*Database First*)
* Reverse engineering with *Code First*
* Forward engineering with EDMX files (*Model First*)
* Forward engineering with *Code First*

Entity classes (aka domain object classes, business object classes, data classes or persistent classes) are representations of tables and views. They contain properties or fields that are mapped to columns of the tables/views. Entity classes can be plain old CLR objects (POCO classes); in other words, they need no base class and no interface. However, you cannot access the database with only these objects.

NOTE: Although the use of fields is possible, you should work only with properties because a lot of other libraries and frameworks require properties.


A **context class** is a class always derived from the `DbContext` base class. It has properties of type `DbSet<EntityClass>` for each of the entity classes. The context class or `DbSet` properties take the commands of the self-created program code in the form of LINQ commands, SQL commands, stored procedure and *table-valued function* (TVF) calls, or special API calls for append, modify, and delete.

The context class sends the commands to the DBMS-specific provider, which sends the commands to the database via `DbCommand` objects and receives result sets in a `DataReader` from the database. The context class transforms the contents of the `DataReader` object into instances of the entity class. This process is called **materialization**.
