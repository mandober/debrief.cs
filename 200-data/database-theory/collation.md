# Collation

https://www.wikiwand.com/en/collation

Collation is the assembly of written information into a standard order.


Many systems of collation are based on numerical order or alphabetical order, or extensions and combinations thereof.

Collation is a fundamental element of most office filing systems, library catalogs and reference books.

Collation differs from classification in that classification is concerned with arranging information into logical categories, while collation is concerned with the *ordering of items of information*, usually *based on the form of their identifiers*.

Formally, a collation method typically defines a total order on a set of possible identifiers, called **sort keys**, which consequently produces a total preorder on the set of items of information (items with the same identifier are not placed in any defined order).

A collation algorithm such as the Unicode collation algorithm defines an order through the process of comparing two given character strings and deciding which should come before the other. When an order has been defined in this way, a sorting algorithm can be used to put a list of any number of items into that order.

The main advantage of collation is that it makes it fast and easy for a user to find an element in the list, or to confirm that it is absent from the list.

In automatic systems this can be done using a binary search algorithm or interpolation search; manual searching may be performed using a roughly similar procedure, though this will often be done unconsciously.

Other advantages are that one can easily find the first or last elements on the list (most likely to be useful in the case of numerically sorted data), or elements in a given range (useful again in the case of numerical data, and also with alphabetically ordered data when one may be sure of only the first few letters of the sought item or items).



---

MySQL collations: `utf8-general-ci`, `latin1_swedish_ci`

A character set can have many collations associated with it, while each collation is only associated with one character set.

In MariaDB, the character set name is always part of the collation name. 

For example, the `latin1_german1_ci` collation applies only to the `latin1` character set. Each character set also has one default collation. The `latin1` default collation is `latin1_swedish_ci`.



Both character sets and collations can be specified from the server right down to the column level, as well as for client-server connections

Character sets and collations always cascade down, so a column without a specified collation will look for the table default, the table for the database, and the database for the server. It's therefore possible to have extremely fine-grained control over all the character sets and collations used in your data.

Default collations for each character set can be viewed with the SHOW COLLATION statement, for example, to find the default collation for the latin2 character set:
