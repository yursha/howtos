- https://en.wikipedia.org/wiki/Data_validation

Validation depends completely on the context of the operation you’re trying to perform.

Possible contexts:
- Validation for persistence
- Validation for sending

- Instead of answering the question, “is this object valid”, try and answer the question, “Can this operation be performed?”.

# Java Bean Validation
- Bean Validation - http://jcp.org/en/jsr/detail?id=303
- Bean Validation 1.1 - https://jcp.org/en/jsr/detail?id=349
- http://beanvalidation.org/
- Using Bean Validation - http://docs.oracle.com/javaee/6/tutorial/doc/gircz.html

## Hibernate Validator
- http://hibernate.org/validator/
- http://hibernate.org/validator/documentation/

# Where should validation logic live
## Resources
- Where to put validation in the MVC pattern - http://discuss.joelonsoftware.com/default.asp?design.4.354410.6
- https://lostechies.com/jimmybogard/2009/02/15/validation-in-a-ddd-world/
- Validation belongs in a Model Object - http://www.javapractices.com/topic/TopicAction.do?Id=209
- http://gorodinski.com/blog/2012/05/19/validation-in-domain-driven-design-ddd/
- http://www.jnsk.se/weblog/rss.xml

## In the class for model specific rules.  It is a class's own responsibility to ensure that it maintains a logically consistent and valid internal state at any time.
So that if `boolean isValid()` method existed on an object it would always return `true`.
Such validate() methods are called class invariants and are important part of Design by Contract.
So after any public constructor invoked and before and after any public method is invoked object should be in a valid state.
Sometimes though the validation rules could be dependent on a rules engine or some kind of larger "framework" which validates stuff, so validation logic would not be technically confined to a class definition.
If you have simple Data Transfer Object then it probably shouldn't validate itself.
If you have a class of Domain Model then it should do some validation.

## In external validator for domain specific rules.
However, "logically consistent and valid" is different from "makes sense in the domain", so it is sometimes the responsibility of an external class to ensure that domain rules are obeyed.
Sometimes, your object is absolutely valid internally, but in the context its values aren't acceptable.
An object shouldn't necessarily need to know anything about whether or not its valid in a specific domain.
So when validations are not part of the class itself, but business logic, adding it to the class would prevent reutilization.
So if class's data is not validatable in isolation create a validator class based on some interface.

# Contextual validation
- http://martinfowler.com/bliki/ContextualValidation.html

# When to validate
- If you're going to call anything that doesn't guarantee it will return something (error, exception) to tell you about invalid input in a way that you can pass back to your caller, validate it.
- If you're going to do anything else with the data (make decisions, do math, store it, etc.), validate it.
- Draw boundary circles around things, identify the failure modes it's protecting against and implement an appropriate level of checking for that boundary.

# Validator design
- Since validator expects valid or invalid input from its perspective, invalid input is indicated by a boolean result rather than an exception.

# If the system becomes invalid
-  If "the system as a whole" becomes invalid, the reason is that some object must have changed (e.g. a player) and some possibly higher level object (e.g. an event) that references this object has a condition that is not fulfilled anymore. Now a solution would be to not allow direct changes to the player that could make something invalid at a higher level. This is where immutable objects help. Then a changed player is a different object. Once a player is associated to an event, you can only change it from the event itself (because you'll have to change the reference to a new object) and again validate immediately.

# Design
- http://www.martinfowler.com/
- Turn you comments describing pre and post conditions into assertions.
- Design your own expressive Assert utility class with assetions that you can import statically.
- Don't assert method's logic, better unit-test it.

# Assertions
When writing an assertion, think about what kind of information you’ll need to fix the problem if the assertion fails. Include that information in the assertion message.
Assertions are for programmers, so they don’t need to be user friendly, just informative.

# Fail-fast design - don't workaround problems.
Failing fast makes defects easier to find. Don't disable assertions in production. Remember, an error that occurs at the customer’s site made it through your testing process. You’ll
probably have trouble reproducing it. These errors are the hardest to find, and a well-placed assertion explaining the problem could save you days of effort. Fix then your tests. 
Create a global exception handler to gracefully handle unexpected exceptions, such as assertions, and bring them to the developers’ attention. For example,
a GUI-based program might display "an unexpected problem has occured" in an error dialog and provide an option to email tech support. A batch-processing system might page a system administrator and continue
with the next transaction.  If you use a global exception handler, avoid catch-all exception handlers in the rest of your application. They’ll prevent exceptions from reaching your global handler. Also, when you
use resources that have to be closed (such as files), be sure to clean them up. This way, if an exception occurs, the application will be returned to a fresh, working state.
Bugs add a lot of expense and a pain to figure out. Since the hardest part of debugging is often reproducing and pinpointing errors, failing fast can reduce debugging’s cost significantly. Be sure to implement a
global error handler so your overall stability doesn’t suffer. Search your existing code for catch-all exception handlers and either remove or refactor them. Then you’re ready to
gradually introduce assertions. Over time, more and more errors will fail fast, and you’ll see the cost of debugging decrease and the quality of your system improve.

# Security implications
- https://www.owasp.org/index.php/Input_Validation_Cheat_Sheet
- https://www.owasp.org/index.php/Data_Validation

# Types of errors
- Input errors, which can be detected by examination of the input - so a date of 2014-02-30 is self evidently wrong.
- Context errors, which can be detected only by examination of the domain object - so a date of birth captured as 1990-01-31, and a date of education starting of 1989-03-02 is incorrect. It is this class of errors that can only be made with reference to the domain.
- Lies to the system. These can only be detected by information contained with subsequent events. So if I tell you that my date of birth is 1890-04-25 then (at worst) you may only be able to find that this is incorrect around the year 2010 when I tell you I am still alive and kicking. These errors can only be corrected by remedial actions that will fall outside the system concerned. These remedial actions may be very extensive, or actually impossible to implement.
Data received from user input should be validated.

## [Commons Validator 1.4.1](https://commons.apache.org/proper/commons-validator/)
Microframework and a set of independent validation functions:
- date, time, calendar, intervals
- numeric values, percentages
- currency, codes, credit cards,
- internet domain names (RFC-1034/RFC-1123/IANA), email addresses (RFC-822), IPv4 adresses, URL
- codes (IBAN, ISBN-10, ISBN-13, ABA, CUSIP, EAN13, ISIN, Luhn, Modulus, Sedol, Verhoeff)
- regex
