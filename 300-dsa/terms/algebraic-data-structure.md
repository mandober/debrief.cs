# Algebraic data structure

Algebraic Data Structures are almost never called that but Algebraic Data Types (ADT), despite the fact that they do define data structures, although they are more focused on the algebra of types of such structures.

The algebra of types connects the cardinality of types and algebraic operations. The two most well-known ADTs are sums and products, so called because the cardinality of a sum type is the sum of its components, while the cardinality of a product type is the product of its components.

For example, the Ordering type is a sum type - it is either 'Eq', 'Lt' or 'Gt', so its cardinality is 1 + 1 + 1 = 3. A value of this type can only be one of these 3 values, but in general, the cardinality of Ordering is 3 - there are 3 possible values of this type. On the other hand, the cardinality of a record whose first component is a Boolean and second is Ordering type is 2 * 3 = 6. An instance of this record must be provided with both values (one value of each component type) at once.
