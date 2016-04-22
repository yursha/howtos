- http://www.hibernate.org/subprojects/validator.html
- http://jcp.org/en/jsr/detail?id=303

# Hibernate Validator
- http://hibernate.org/validator
- http://docs.jboss.org/hibernate/validator/5.2/api/
- http://beanvalidation.org/

# Where should validation logic live
## In the class for model specific rules.
It is a class's own responsibility to ensure that it maintains a logically consistent and valid internal state at any time.
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
