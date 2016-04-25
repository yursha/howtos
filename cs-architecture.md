# Good patterns
- lazy init
- loose coupling
- immutability
- composition over inheritance

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

# Dependency Injection

- https://github.com/google/guice
- AngularJS has its own dependency implementation
- http://martinfowler.com/articles/injection.html
- https://en.wikipedia.org/wiki/Law_of_Demeter
- http://misko.hevery.com/2008/08/01/circular-dependency-in-constructors-and-dependency-injection/

There are only three ways a component can get a hold of its dependencies:
- The component can create the dependency, typically using the `new` operator (constructor pattern).
- The component can look up the dependency, by referring to a global variable (factory pattern).
- The component can have the dependency passed to it where it is needed (DI pattern).

The first two options of creating or looking up dependencies are not optimal because they hard code the dependency to the component. This makes it difficult, if not impossible, to modify the dependencies. This is especially problematic in tests, where it is often desirable to provide mock dependencies for test isolation.

The **injector** is a *service locator* that is responsible for construction and lookup of dependencies during runtime. It holds configuration information about all injectable components. Components can be configured to have different **life-cycle** (singleton, prototype, session or request). Components are usually instantiated **lazily** on first use, not **eagerly**. Injector usual performs *automatic dependency resolution*.

With **constructor** (a lower level approach) an object is created by platform, with **factory** (a higher level approach) we create it ourselves.

**Declarative code** is better when it comes to building UIs and wiring software components together, while imperative code is better for expressing business logic.

**Declarative code** is made of **directives**.

**Glue Code** - Code that interfaces with a 3rd-party technology.

Code that crosses platform boundaries (like c/java interfacing or javascript/DOM interfacing) is hard to test.

# Asyncronous Programming
## Implementations
- Angular `$q`
- https://github.com/kriskowal/q
- https://github.com/kriskowal/uncommonjs/blob/master/promises/specification.md
- https://github.com/kriskowal/q/wiki/API-Reference
- jQuery's Deferred
- ES6 promises (https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)
- Common JS (http://wiki.commonjs.org/wiki/Promises)

## Concepts
- https://en.wikipedia.org/wiki/Continuation-passing_style
- http://www.html5rocks.com/en/tutorials/es6/promises
- callback
- promises
- deferreds
- asynchronous operation - code to be executed outside of the current thread of execution.
- event queue



## Events
- subscribe / register
- propagate (publish) - recursive
  + broadcast
  + emit
- handle

# CDN
- https://cdnjs.com/libraries
 21 - https://html.spec.whatwg.org/multipage/index.html
 22 - http://www.w3.org/TR/html51/
 23 - https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5
 24 - http://www.html5rocks.com/en/
 25 - http://html5doctor.com/
 26 - https://html5boilerplate.com/
 27 - https://html5.org/
 28 - https://html.spec.whatwg.org/
 29 - http://html5up.net/
 30 - http://html5demos.com/

# Architecture
 - http://www.amazon.com/The-Architecture-Open-Source-Applications/dp/1257638017
 - http://aosabook.org/en/index.html

# Patagonia
 - http://www.slideshare.net/esug/design-principlesbehindpatagonia
 - https://www.youtube.com/watch?v=8cgmdaKwRvU
