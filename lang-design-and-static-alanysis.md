- Each symbol should be explicitly declared. Static analyzer should report references to undeclared symbols. This will allow to quickly detect and report typos in symbolic names.
  + JavaScript is a violator of this. Undeclared symbols are silently assigned `undefined` value at site of first use. In Node.js when typo is made in a callback code the program will just silently terminate and hours (minutes) of debugging time will be spent to find a typo. This can be mitigated by using JS linters which will report references to undeclared variables ([jslint](http://jshint.com/), [jshint](http://www.jslint.com/)).
- Its better to avoid alternative syntaxes for the same thing. Like `'` or `"` delimiters for JavaScript strings without semantic differences.
- Its better to ship a style-formatter with the language itself like Golang. But 3rd party source code formatters like [JS Beautifier](http://jsbeautifier.org/) can ensure style consistency for at least one project (or a group of projects of the same vendor).
- Its bad when you can reference not existing object property without an error. E.g. in JavaScript `split["\n"]` (when `split("\n")` function call intended) will silently return undefined. I can not be caught by any of the existing linters neither. This may result in hours of wasted debugging time. *OK, maybe it has a use case in reflection. However, callbacks shouldn't silectly crash the program as it happens in Node.js. Also you should not be able to confuse an unary function call with an object property reference or an array subscript.*



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
