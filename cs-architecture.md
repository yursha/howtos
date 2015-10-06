- Discovery (complex lookup procedure)
- **Global visibility**
- **Local (scoped) visibility**
- **Aliasing** - referring to one item by multiple names.
- isolation
- ACID (atomicity, consistency, isolation, durability)

# Object model
- inheritance (prototypical vs class-based)
- lambda
- scopes
- immutability
- encapsulation (information hiding)
- interface
- polymorphism

# Business logic
- **service** - reusable business logic

# Model
- **model** - *data type* which models some business domain entity. Model may have **stored** and **computable** properties and **public behaviour** related to state changes.

# UI

## Controller
- controller

## View
- **presenter** - transforms a *business data model* into a *view data model*.
- **templating engine** - transforms a **template** by evaluating **marked up expressions** against a specific **context**.
  + populating HTML markup (**view**) with variables (**view model**).


# Dependency Injection

## Resources
- https://github.com/google/guice
- AngularJS has its own dependency implementation

## Terms
**Injector** wires components together during runtime. It holds references to all instantiated objects. Some configuration mechanism must be used in order to register all the things that should work together inside the injector.
- With **constructor** (a lower level approach) an object is created by platform, with **factory** (a higher level approach) we create it ourselves. 
- **life-cycle**
 + singleton
 + prototype
 + session
 + request
- **lazy** vs **eager** instantiation
- automatic dependency resolution

**Declarative code** is better when it comes to building UIs and wiring software components together, while imperative code is better for expressing business logic.

**Declarative code** is made of **directives**.

**Glue Code** - Code that interfaces with a 3rd-party technology.

Code that crosses platform boundaries (like c/java interfacing or javascript/DOM interfacing) is hard to test.

## Events
- pub/sub
- propagate
- broadcast
- emit
- handle

# Async
- callback
- promises
- deferreds


