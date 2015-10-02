- Discovery (complex lookup procedure)
- **Global visibility**
- **Local (scoped) visibility**
- **Aliasing** - referring to one item by multiple names.

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
- **injector**, **wiring**
- **container** - a place where all the things that should work together are registered.
- With **constructor** (a lower level approach) an object is created by platform, with **factory** (a higher level approach) we create it ourselves. 
- **life-cycle**
- **singleton** vs **prototype**
- **lazy** vs **eager** instantiation

**Declarative code** is better when it comes to building UIs and wiring software components together, while imperative code is better for expressing business logic.

**Declarative code** is made of **directives**.

**Glue Code** - Code that interfaces with a 3rd-party technology.

Code that crosses platform boundaries (like c/java interfacing or javascript/DOM interfacing) is hard to test.


