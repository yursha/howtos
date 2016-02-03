# Other
- https://github.com/ruby/rake
- http://ant.apache.org/
- http://ant.apache.org/ivy/
- http://buildr.apache.org/
- http://www.gradle.org/
- https://github.com/harrah/xsbt/wiki
- https://github.com/technomancy/leiningen

# Resources
- http://www.sonatype.com/books/mvnref-book/reference/

# Search
- search.maven.org
- http://mvnrepository.com - provides useful popularity statistics (e.g. number of dependant packages), classifies packages by category (e.g. JSON libraries)

# Configuration

## maven-resources-plugin
- copying resources
- text files interpolation with dynamic variables

## generate maven boilerplate
- `mvn -B archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DgroupId=com.mycompany.app -DartifactId=my-app`

## info
- `mvn help:effective-pom`

## analysis of deps
- https://maven.apache.org/plugins/maven-dependency-plugin/analyze-mojo.html
- `mvn dependency:tree` - print a dependency tree
- `mvn dependency:sources` - download all dependency sources
- `mvn dependency:analyze` - get some hints on undeclared and unused dependencies
- `mvn versions:display-dependency-updates` - display outdated dependencies
- `mvn versions:display-plugin-updates` - display plugin updates

## code style
- maven-checkstyle-plugin

## artifacts
- https://maven.apache.org/components/plugins/maven-shade-plugin/

