# Resources
- https://github.com/raganwald-deprecated/homoiconic/blob/master/2010/12/oop.md

# Concepts
- Encapsulation, data type invariants, interface vs implementation. Invariants established at object construction time.
- Deep copy vs shallow copy
- Lazy vs eager initialization
- Loose vs tight coupling
- Mutability vs immutability
- Composition vs inheritance (prototypical vs class-based)
- Discovery (complex lookup procedure)
- Class hierarchies, polumorphism
- lambda, functional programming
- scopes, visibility, namespace pollution, name binding, name hiding
- stored vs computable properties
- designated vs delegating constructor

# Dependency Injection
Dependency injection frameworks help to decouple individual components for better testability (with unit tests).

- https://github.com/google/guice
- https://github.com/google/fruit

# Composition over inheritance
Building model ontologies is bad:
- resistent to change

# Object life cycle
- singleton
- prototype
- enum
- session
- request
- etc.

# When you are implementing a data type here is a check list:
- define class invariants
- make sure class invariants are ensured by constructor and cannot be violated in any of the member functions.
