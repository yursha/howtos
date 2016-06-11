# Resources
- https://github.com/vic317yeh/One-Click-to-Be-Pro

# DRY (Don't repeat yourself)
- Isolates changes
- Fewer LOC

# YAGNI (You ain't gonna need it)
- [YAGNI on wikipedia](https://en.wikipedia.org/wiki/You_aren%27t_gonna_need_it)

# Avoid hand-hacking
- Write programs to write programs when you can.

# Requirements
- Each task should correspond to a user story. ("As a <role> i want to <functionality>")
- Every use case must have test case with a corresponding unit or e2e test.

# What are you trying to optimize for?
Like so many things in system design, it totally depends on what you're trying to optimize for. Am I trying to prevent corrupt data from EVER getting into the system? Then I put validation as close to the data layer as I can. Am I trying to optimize user experience? Then I put validation as close to the glass as I can. What am I trying to optimize? 

- https://github.com/braydie/HowToBeAProgrammer
- Brian W. Kernighan and Rob Pike - "The Practice of Programming"
- https://www.youtube.com/watch?v=YkXzAbO2sHg - Kite (programming copilot)

# Standard Streams
- Develop data processing tools so that they work as data processing filters accepting data from STDIN and sending it to STDOUT

# Name stuff
- keep logic in small named functions for readability

# Rules
- Profile what is slow to find out where to optimize.
- Don't abstract things if you can avoid it.
- Use compiled to machine code languages if performance matters.
- Use statically typed languages if maintainability matters.
- Its bad when code requires documentation. Better when its so clear that doesn't need any documentation.
- Its bad when function has side effects which are not explicitly stated in its name.
- Don't keep unused code in the codebase.
- It's better to be explicit rather than implicit

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

# Reliability
- http://danluu.com/google-sre-book

- [WWDC14 summaries by andreyvit](https://gist.github.com/andreyvit/dc7ee18a1e3fd736a507)
