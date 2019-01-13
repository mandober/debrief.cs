# ODBC

In addition to normal *ODBC* support, the *Unified ODBC* functions in PHP allow you to access several databases that have borrowed the semantics of the *ODBC API* to implement their own API.

Instead of maintaining multiple, nearly identical, db drivers, they have been unified into a single set of ODBC functions.

Databases supported by the Unified ODBC functions:
- Adabas D
- IBM DB2
- iODBC
- Solid
- Sybase SQL Anywhere

NOTE: With the exception of iODBC, there is no ODBC involved when connecting to the above databases. The functions that you use to speak natively to them just happen to share the same names and syntax as the ODBC functions. However, building PHP with iODBC support enables you to use any ODBC-compliant drivers with your PHP applications. More info: [iODBC](http://www.iodbc.org) and [unixODBC](http://www.unixodbc.org).
