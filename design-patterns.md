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

## Encapsulation
- https://en.wikipedia.org/wiki/Encapsulation_(computer_programming)

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

