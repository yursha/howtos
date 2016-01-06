- http://semver.org/

# Think about data in your program
If data needs to be always in the final executable that its a global constant and should be defined as such.
This about data life cycle (singleton, prototype, session, request)

# Don't use class inheritance
- You don't know in what class the method might have been implemented (overriden) without traversing up the entire inheritance chain.
- You can't treat all subclasses as having even behavior based on their common superclass behavior which might have been substantially overriden in some of the subclasses.
- You can't read a parent source module and clearly rely on described behaviour because some parent methods might have been overriden in the child (so you need to go back and force while reading the source module).

# API separation
Client programmers should clearly understand what API is published and what is not. In java it can be achieved with releasing separat jars (`mylib-api.jar` and `mylib-core.jar`).Standard java access modifiers fail to enforce it to a full extent.

- avoid literal unnamed constants (https://en.wikipedia.org/wiki/Magic_number_(programming)#Unnamed_numerical_constants)

# Static code analysis

- detect unused variables, imports, functions etc
- automatic source code formatting (idea)

- make `TODO` comments and then `grep -r TODO <project-folder>`

```
> gsed -i 's/import com\.opencsv\.CSVReader;/import com.opencsv.CSVReader;\r\nimport com.opencsv.CSVParser;/g' src/main/java/com/apixio/loader/customer/mapping/archive/HPCNVDemographics.java

> ggrep -rl 'CSVParser\.DEFAULT_QUOTE_CHARACTER' --exclude CodingSystems.java --exclude CodingTranslation.java --exclude HPCNVDemographics.java --exclude UAMClaims.java --exclude HealthNet001.java | xargs gsed -i 's/import com\.opencsv\.CSVReader;/import com.opencsv.CSVReader;\r\nimport com.opencsv.CSVParser;/g'

> ggrep -rl 'CSVReader.DEFAULT_SEPARATOR' src | xargs gsed -i 's/CSVReader\.DEFAULT_SEPARATOR/CSVParser.DEFAULT_SEPARATOR/g'
```

- `// WARNING: sdfjsljfldsjflds`
- `// BOGUS: Will crash if user has no widgets

# DRY (Don't repeat yourself)
Repeating yourself makes you change code in mupltiple places in a similar fashion when loggically only one thing has to be changed.

# Immutability
- http://www.drdobbs.com/cpp/practical-advantages-of-immutable-values/240163690
- http://programmers.stackexchange.com/questions/151733/if-immutable-objects-are-good-why-do-people-keep-creating-mutable-objects
- https://www.linkedin.com/pulse/20140528113353-16837833-6-benefits-of-programming-with-immutable-objects-in-java
- http://docs.scala-lang.org/overviews/collections/overview.html

# Static Code Analysis
- http://maven.apache.org/components/plugins/maven-checkstyle-plugin/
- http://checkstyle.sourceforge.net/

# Stay laconic
> The go tool will only print output when an error occurs, so if these commands produce no output they have executed successfully.
