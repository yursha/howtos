# Nulls
There are multiple ways to indicate absense of value for collections. We can either return `null` or and empty collection. Returning empty collection is more natural because this contract is more intuitive. In both cases we return a collection which is either empty or not, preserving the type of a return value. Null doesn't belong to a collection type. Null is actuall a type in its own write though many languages incorrectly treat `null` as belonging to all types. When we return non-collection objects which may be null we should prefer to return `Optional` objects.

# When to check method parameters to not be nulls.
If a method invokes methods on a passed parameter the program will fail fast by default, so there is no need for 'not-null' assertions.
However, when assigning a parameter to an instance variable, the program won’t fail fast without help, so assert that the parameter is not null.
In general think about what kinds of defects are possible and how they occur. Place your assertions so that the software fails earlier — close to the original problem — making the problem easy to find.

- https://docs.oracle.com/javase/8/docs/api/java/util/Optional.html

# Resources
- http://www.infoq.com/presentations/Null-References-The-Billion-Dollar-Mistake-Tony-Hoare
- http://www.cs.man.ac.uk/~johns/npe.html
- https://yinwang0.wordpress.com/2013/06/03/null/

*python*
```python
None
```
