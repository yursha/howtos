- https://github.com/circlecell/jsonlintdotcom

## Big JSON files
- https://github.com/zeMirco/sf-city-lots-json

## Libraries
- **http://mvnrepository.com/open-source/json-libraries** - lookup the relevant libraries here.
- https://github.com/fangyidong/json-simple

### Jackson
(iteration | data binding | tree traversal)
- https://github.com/FasterXML/jackson
- https://github.com/FasterXML/jackson-databind
- https://github.com/FasterXML/jackson-annotations
- http://wiki.fasterxml.com/JacksonFAQDateHandling
- http://fasterxml.github.io/jackson-databind/javadoc/2.7/overview-summary.html
- https://github.com/FasterXML/jackson-datatype-joda
- http://stackoverflow.com/questions/14139136/how-to-include-bean-validation-constraints-in-jackson-generated-json-schema
- http://stackoverflow.com/questions/8463356/how-can-i-support-jsr-303-validation-and-jackson-json-mapping-together-effective
- Every day Jackson usage, part 1: Immutable objects - http://www.cowtowncoder.com/blog/archives/2010/08/entry_409.html
- http://wiki.fasterxml.com/JacksonFeatureMaterializedBeans
- http://wiki.fasterxml.com/JacksonDocumentation
- http://stackoverflow.com/questions/31689107/deserializing-an-enum-with-jackson
- http://www.baeldung.com/jackson-serialize-dates
- `com.fasterxml.jackson.module:jackson-module-scala_2.11` - jackson scala integration
- [jackson module scala Javadoc](http://fasterxml.github.io/jackson-module-scala/latest/api/#package)
- [Jackson module Scala GitHub](https://github.com/FasterXML/jackson-module-scala)
- [Jackson, Scala and DW](http://techblog.newsweaver.com/config-parsing-issue-dropwizard-0-9-scala/)

#### Streaming API
- http://fasterxml.github.io/jackson-core/javadoc/2.7/overview-summary.html
- https://github.com/FasterXML/jackson-core
- http://wiki.fasterxml.com/JacksonStreamingApi
- Json processing with Jackson: Method #1/3: Reading and Writing Event Streams - http://www.cowtowncoder.com/blog/archives/2009/01/entry_132.html

### GSON
- https://github.com/google/gson

# Json Schema
- http://json-schema.org/

# Pretty print
- http://stackoverflow.com/questions/352098/how-can-i-pretty-print-json

*python REPL*
```python
from pprint import pprint
import json
pprint(json.loads(json_data))
```

*shell*
```bash
% python -m json.tool data.json
```
