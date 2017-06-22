- Each symbol should be explicitly declared. Static analyzer should report references to undeclared symbols. This will allow to quickly detect and report typos in symbolic names.
  + JavaScript is a violator of this. Undeclared symbols are silently assigned `undefined` value at site of first use. In Node.js when typo is made in a callback code the program will just silently terminate and hours (minutes) of debugging time will be spent to find a typo. This can be mitigated by using JS linters which will report references to undeclared variables ([jslint](http://jshint.com/), [jshint](http://www.jslint.com/)).



- [Tattletale - java source code analyzer from JBOSS](http://tattletale.jboss.org/)

# Code Quality
## PMD 
- http://pmd.sourceforge.net/

## Checkstyle
- http://checkstyle.sourceforge.net/
- https://github.com/checkstyle/checkstyle
- http://maven.apache.org/components/plugins/maven-checkstyle-plugin/

# Findbugs
- http://findbugs.sourceforge.net/
- jsr305
- JSR 308 Explained: Java Type Annotations - http://www.oracle.com/technetwork/articles/java/ma14-architect-annotations-2177655.html
- https://code.google.com/p/jsr-305/source/checkout
