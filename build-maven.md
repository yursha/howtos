# Other
- https://github.com/ruby/rake
- http://ant.apache.org/
- http://ant.apache.org/ivy/
- http://buildr.apache.org/
- http://www.gradle.org/
- https://github.com/harrah/xsbt/wiki
- https://github.com/technomancy/leiningen

# Resources
- [Maven Official Documentation](https://maven.apache.org/guides/index.html)
- [Maven Central Repository](http://search.maven.org/)
- http://www.sonatype.com/books/mvnref-book/reference/
- https://codehaus-plexus.github.io/ - Maven Core Components
- http://maven.apache.org/plugin-tools/index.html

# Tips
- If it seems to be a dependency problem try `-U` option.

## Don't use `reactor` Maven component (multi-module projects)
Keep each module in its own git repo with a singe `pom.xml` file.

### Why?
- Specifying multiple same versions in each submodule violates DRY principle and is error-prone.
- Module build ordering is implicit and complex in Maven reactor vs explicit when not using it.

### Resources
- https://maven.apache.org/guides/mini/guide-multiple-modules.html
- http://books.sonatype.com/mvnex-book/reference/multimodule.html

# Scaffolding
- `mkdir -p src/{main,test}/{java,resources}` - create maven project structure

## Archetype Plugin
- `mvn -B archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DgroupId=com.mycompany.app -DartifactId=my-app`

## info
- `mvn help:effective-pom`

# Proguard Maven Plugin
- https://github.com/wvengen/proguard-maven-plugin

# Dependencies

## Enforcer Plugin
- https://maven.apache.org/enforcer/enforcer-rules/requireUpperBoundDeps.html

## Dependency Plugin

# Execution

## Execution Plugin
- http://www.mojohaus.org/exec-maven-plugin/
```bash
# Ex:
mvn exec:java -Dexec.mainClass="com.mycompany.FileGenerator" -Dexec.args="./file.data"
```

# Packaging

## [Resources Plugin](https://maven.apache.org/plugins/maven-resources-plugin/) (static assets)
- copying resources
- text files interpolation with dynamic variables

## JAR Plugin (skinny jars)
- https://maven.apache.org/plugins/maven-jar-plugin/index.html
- http://maven.apache.org/shared/maven-archiver/index.html
- http://stackoverflow.com/questions/183292/classpath-including-jar-within-a-jar
- http://one-jar.sourceforge.net/
- https://maven.apache.org/shared/maven-archiver/index.html#class_manifest

## Shade Plugin (fat jars)
- https://maven.apache.org/components/plugins/maven-shade-plugin/ (has poor documentation)

Don't use `minimizeJar` if dynamic class loading is used in the code
- http://stackoverflow.com/questions/8817257/minimize-an-uber-jar-correctly-using-shade-plugin
- http://stackoverflow.com/questions/8698814/configure-maven-shade-minimizejar-to-include-class-files

- http://stackoverflow.com/questions/10307652/how-to-include-test-classes-in-jar-created-by-maven-shade-plugin/36058365

## RPM Plugin
- http://www.mojohaus.org/rpm-maven-plugin/index.html

# Release
- [Release Plugin](http://maven.apache.org/maven-release/maven-release-plugin/)
- https://axelfontaine.com/blog/final-nail.html

# VCS Integration

## Git Integration
- https://github.com/ktoso/maven-git-commit-id-plugin
- http://maven.apache.org/scm/git.html
- http://maven.apache.org/scm/maven-scm-providers/maven-scm-providers-git/maven-scm-provider-jgit/
- http://koraktor.de/mavanagaiata/

# Launch maven surefire plugin in debug mode
- `mvn -Dmaven.surefire.debug test`
