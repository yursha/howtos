- https://en.wikipedia.org/wiki/Business_logic
- https://en.wikipedia.org/wiki/Single_responsibility_principle
- http://c2.com/cgi/wiki?ArgumentByAnalogy

# Defensive programming
- https://en.wikipedia.org/wiki/Defensive_programming

# Design by contract
- https://en.wikipedia.org/wiki/Design_by_contract
If contracts are well designed, this is almost never an issue. Revist the contract and place obligations on the each of the parties. If a certain party has too many obligations then introduce a third party.

A contract (interface) between two parties say, A and B such that both have certain obligations. What does the contract say? Is B supposed to receive validated data? If that is the case, B should not be implementing validation. But what if A is the UI? Clearly you don't want to put the validation there. Typically, its best to introduce a third party, say C. A has a contract with C which in turn has a contract with B. B expects validated data. A might send crap. C performs the validation.
