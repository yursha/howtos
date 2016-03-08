- http://semver.org/
- https://github.com/braydie/HowToBeAProgrammer

# Its bad when code requires documentation. Better when its so clear that doesn't need any documentation.
# Its bad when function has side effects which are not explicitly stated in its name.
# Premature optimization is the root of all evil (Knuth)

# In OOP always try to call the object in a lower layer.
OOP can become a mess when multiple objects call each other leading to an untraceable execution.
In order to avoid redundant nodes in a call chain an object should always try to call another object in a lower layer, rarely in the same layer and never in a higher layer. Thus tiered architecture brings structure (responsibility hierarchy) to otherwise messy OOP.

# API separation
Client programmers should clearly understand what API is published and what is not. In java it can be achieved with releasing separat jars (`mylib-api.jar` and `mylib-core.jar`).Standard java access modifiers fail to enforce it to a full extent.

# Solve one problem and solve it well.
- Write programs that do one thing and do it well. Write programs to work together. Write programs to handle text streams, because that is a universal interface.

# Solve current problem. Don't try to solve future problems.

# Data
- constant vs variable (immutable vs mutable)
- predefined vs uninitialized
- shared vs local
- singleton vs prototype vs session vs request... lifecycle
- avoid literal unnamed constants (https://en.wikipedia.org/wiki/Magic_number_(programming)#Unnamed_numerical_constants)
- If a system works with data it must trace the provenance of each piece of data for traceability purposes.

# Don't use class inheritance
- You don't know in what class the method might have been implemented (overriden) without traversing up the entire inheritance chain.
- You can't treat all subclasses as having consistent behavior based on their common superclass behavior which might have been substantially overriden in some of the subclasses.
- You can't read a parent source module and clearly rely on described behaviour because some parent methods might have been overriden in the child (so you need to go back and force while reading the source module).

# Static code analysis

- detect unused variables, imports, functions etc
- automatic source code formatting (idea)

- make `TODO` comments and then `grep -r TODO <project-folder>`

- `// WARNING: sdfjsljfldsjflds`
- `// BOGUS: Will crash if user has no widgets

# DRY (Don't repeat yourself)
Repeating code forces you to do repetitive edits when you modify your code.
It also makes your code bigger and more difficult to comprehend, reason about and maintain.

# Immutability
- http://www.drdobbs.com/cpp/practical-advantages-of-immutable-values/240163690
- http://programmers.stackexchange.com/questions/151733/if-immutable-objects-are-good-why-do-people-keep-creating-mutable-objects
- https://www.linkedin.com/pulse/20140528113353-16837833-6-benefits-of-programming-with-immutable-objects-in-java
- http://docs.scala-lang.org/overviews/collections/overview.html

# Static Code Analysis
- http://maven.apache.org/components/plugins/maven-checkstyle-plugin/
- http://checkstyle.sourceforge.net/

# Be brief
> The go tool will only print output when an error occurs, so if these commands produce no output they have executed successfully.
