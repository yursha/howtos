# Other
- https://github.com/ruby/rake
- http://ant.apache.org/
- http://ant.apache.org/ivy/
- http://buildr.apache.org/
- http://www.gradle.org/
- https://github.com/harrah/xsbt/wiki
- https://github.com/technomancy/leiningen

# Resources
- POM Reference - https://maven.apache.org/pom.html
- [Apache Introduction to POM](https://maven.apache.org/guides/introduction/introduction-to-the-pom.html)
- http://www.sonatype.com/books/mvnref-book/reference/
- https://codehaus-plexus.github.io/ - Maven Core Components
- http://maven.apache.org/plugin-tools/index.html

# Tips
- If it seems to be a dependency problem try `-U` option.
- `mkdir -p src/{main,test}/{java,resources}` - create maven project structure

## Don't use `reactor` Maven component (multi-module projects)
Keep each module in its own git repo with a singe `pom.xml` file.

### Why?
- Specifying multiple same versions in each submodule violates DRY principle and is error-prone.
- Module build ordering is implicit and complex in Maven reactor vs explicit when not using it.

### Resources
- https://maven.apache.org/guides/mini/guide-multiple-modules.html
- http://books.sonatype.com/mvnex-book/reference/multimodule.html

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

# Shade Plugin
- https://maven.apache.org/components/plugins/maven-shade-plugin/ (has poor documentation)

Don't use `minimizeJar` if dynamic class loading is used in the code
- http://stackoverflow.com/questions/8817257/minimize-an-uber-jar-correctly-using-shade-plugin
- http://stackoverflow.com/questions/8698814/configure-maven-shade-minimizejar-to-include-class-files

# Build A Jar with Test deps
- http://stackoverflow.com/questions/10307652/how-to-include-test-classes-in-jar-created-by-maven-shade-plugin/36058365

# Enforcer Plugin
- https://maven.apache.org/enforcer/enforcer-rules/requireUpperBoundDeps.html

# JAR Plugin
- https://maven.apache.org/plugins/maven-jar-plugin/index.html
- http://maven.apache.org/shared/maven-archiver/index.html
- http://stackoverflow.com/questions/183292/classpath-including-jar-within-a-jar
- http://one-jar.sourceforge.net/
- https://maven.apache.org/shared/maven-archiver/index.html#class_manifest

# Proguard Maven Plugin
- https://github.com/wvengen/proguard-maven-plugin

# Maven Execution Plugin
- http://www.mojohaus.org/exec-maven-plugin/
```bash
# Ex:
mvn exec:java -Dexec.mainClass="com.mycompany.FileGenerator" -Dexec.args="./file.data"
```
