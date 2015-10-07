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

- https://github.com/google/guice
- AngularJS has its own dependency implementation
- http://martinfowler.com/articles/injection.html
- https://en.wikipedia.org/wiki/Law_of_Demeter

There are only three ways a component can get a hold of its dependencies:

- The component can create the dependency, typically using the new operator (constructor pattern).
- The component can look up the dependency, by referring to a global variable (factory pattern).
- The component can have the dependency passed to it where it is needed (DI pattern).

The first two options of creating or looking up dependencies are not optimal because they hard code the dependency to the component. This makes it difficult, if not impossible, to modify the dependencies. This is especially problematic in tests, where it is often desirable to provide mock dependencies for test isolation.

The **injector** is a *service locator* that is responsible for construction and lookup of dependencies during runtime. It holds configuration information about all injectable components. Components can be configured to have different **life-cycle** (singleton, prototype, session or request). Components are usually instantiated **lazily** on first use, not **eagerly**. Injector usual performs *automatic dependency resolution*.

With **constructor** (a lower level approach) an object is created by platform, with **factory** (a higher level approach) we create it ourselves. 

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


