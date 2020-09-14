# Design Principles


## SOLID
SOLID consists of the 5 design principles:
1. Single Responsibility Principle (SRP)
2. Open Closed Principle (OCP)
3. Liskov Substitution Principle (LSP)
4. Interface Segregation Principle (ISP)
5. Dependency Inversion (DI) Principle (DIP)

**Single responsibility principle** dictates that each class should have only one responsibility. The scope of a class should be narrow and its knowledge about other classes non-existent. A class must always be able to do its job and not be affected by possible modifications happening inside some of the classes it depends on. Single-responsibility classes means decoupled code that's easy to maintain and reuse.

**Open closed principle** dictates that a class is open for extension, but closed for modification; changing a class' behavior should be possible without breaking the contract the class implies. Following this principle means abstracting behavior behind an interface and inverting the dependencies.

**Liskov substitution principle** dictates that a subtype could be supplied when a type is expected. In other words, a child class (more specific) could be supplied when a parent class (more general) is expected.

**Interface segregation principle** says that an interface is focused and granular. Implementing an interface must not force unneeded methods upon a class (several smaller, more focused, interfaces instead of a big one).

**Dependency inversion principle** says that a class should declare exactly what it needs to do its work; then, a special class (called DI container) supplies it with requested resources.

