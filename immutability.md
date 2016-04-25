- https://en.wikipedia.org/wiki/Immutable_object
- http://developer.amd.com/community/blog/2009/02/06/builders-instead-of-constructors-for-immutable-objects/
- http://www.javapractices.com/topic/TopicAction.do?Id=29
- http://programmers.stackexchange.com/questions/151733/if-immutable-objects-are-good-why-do-people-keep-creating-mutable-objects

Immutable objects in Java are objects that are either stateless (behaviour-only) or where state is set at construction and can not be changed.

If the object is immutable, you don't need to (and shouldn't) make it clonable. The reason you clone an object is so that the two instances can evolve independently thereafter.
