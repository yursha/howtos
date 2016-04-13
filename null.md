# Nulls
There are multiple ways to indicate absense of value for collections. We can either return `null` or and empty collection. Returning empty collection is more natural because this contract is more intuitive. In both cases we return a collection which is either empty or not, preserving the type of a return value. Null doesn't belong to a collection type. Null is actuall a type in its own write though many languages incorrectly treat `null` as belonging to all types. When we return non-collection objects which may be null we should prefer to return `Optional` objects.

- https://docs.oracle.com/javase/8/docs/api/java/util/Optional.html

# Resources
- http://www.infoq.com/presentations/Null-References-The-Billion-Dollar-Mistake-Tony-Hoare
- http://www.cs.man.ac.uk/~johns/npe.html
- https://yinwang0.wordpress.com/2013/06/03/null/

*python*
```python
None
```
