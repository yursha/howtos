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
# Resources
- https://github.com/ochococo/OOD-Principles-In-Swift
- https://github.com/aosabook/500lines

# Principles
## Open/closed
- [wikipedia](https://en.wikipedia.org/wiki/Open/closed_principle)

## Canonical Model
- https://en.wikipedia.org/wiki/Canonical_model
- https://www.innoq.com/en/blog/thoughts-on-a-canonical-data-model/

## Canonical Object
Canonical object is an object that defines the baseline set of functionality for all objects (like `java.lang.Object`).

## Polymorphism
- Polymorphism only makes sense when the polymorphic behavior is really a behavior of the target. When it's the behavior of the observer, you need runtime typing.
- https://sites.google.com/site/steveyegge2/when-polymorphism-fails
- http://stackoverflow.com/questions/2790144/avoiding-instanceof-in-java
- http://stackoverflow.com/questions/5579309/switch-instanceof

## Object Construction
- https://www.cis.upenn.edu/~matuszek/General/JavaSyntax/constructors.html
- http://www.javapractices.com/topic/TopicAction.do?Id=11
- http://stackoverflow.com/questions/2997768/java-constructor-style-check-parameters-arent-null
- http://stackoverflow.com/questions/730201/constructor-parameters-rule-of-thumb?rq=1
- https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=should%20constructors%20validate%20objects
- https://en.wikipedia.org/wiki/Business_logic
- https://en.wikipedia.org/wiki/Single_responsibility_principle
- http://c2.com/cgi/wiki?ArgumentByAnalogy

## Defensive programming
- https://en.wikipedia.org/wiki/Defensive_programming

## Design by contract
- https://en.wikipedia.org/wiki/Design_by_contract
If contracts are well designed, this is almost never an issue. Revist the contract and place obligations on the each of the parties. If a certain party has too many obligations then introduce a third party.

A contract (interface) between two parties say, A and B such that both have certain obligations. What does the contract say? Is B supposed to receive validated data? If that is the case, B should not be implementing validation. But what if A is the UI? Clearly you don't want to put the validation there. Typically, its best to introduce a third party, say C. A has a contract with C which in turn has a contract with B. B expects validated data. A might send crap. C performs the validation.

## Inheritance / Composition
- https://www.bayleafdigital.com/configure-email-hosted-different-server-website-2/


## High Cohesion
- https://en.wikipedia.org/wiki/Cohesion_(computer_science)

## Loose Coupling
- https://en.wikipedia.org/wiki/Coupling_(computer_programming)

The more references the more coupling (problems). Coupling means that if one module changes it will necessitate changes in another module.

```bash
grep-ruby() { find app lib -iname '*.rb' | xargs grep $* }

grep-ruby -h '^[[:space:]]*\(class\|module\)\b' |
sed 's/^[[:space:]]*//' |
cut -d ' ' -f 2 |
while read class; do
    echo "$(grep-ruby -l "\b$class\b" | wc -l) $class"
done |
sort -n

# alternative form
grep -rh '^[[:space:]]*\(class\|module\)\b' app lib --include='*.rb' | sed 's/^[[:space:]]*//' | cut -d ' ' -f 2 | while read class; do echo "$(grep -rl "\b$class\b" app lib --include="*.rb" | wc -l) $class"; done | sort -n

# java form
find src/main -name '*.java' | xargs -n1 -I '{}' basename '{}' .java | while read class; do echo "$(grep -rl "\b$class\b" src --include="*.java" | wc -l) $class"; done | sort -rn
```

## Encapsulation
- [wikipedia](https://en.wikipedia.org/wiki/Encapsulation_(computer_programming))

## Information Hiding
- https://en.wikipedia.org/wiki/Information_hiding

# Patterns
- dynamic binding
- methods
- overriding
- encapsulation
- association
- delegation
- decomposition
- http://martinfowler.com/bliki/CQRS.html

## Visitor
- Google 'Visitor Pattern'
- [wikipedia](https://en.wikipedia.org/wiki/Visitor_pattern)
- [Reflections on the visitor design pattern](http://www.javaworld.com/article/2077602/learn-java/java-tip-98--reflect-on-the-visitor-design-pattern.html)

## Facade
- https://en.wikipedia.org/wiki/Facade_pattern
- http://c2.com/cgi/wiki?FacadePattern

## Utility classes
- http://c2.com/cgi/wiki?UtilityClasses

## Flyweight objects
- https://en.wikipedia.org/wiki/Flyweight_pattern

- [moose](http://moose.iinteractive.com/en/) - mostmodern object system for Perl 5
