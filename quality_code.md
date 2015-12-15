- http://semver.org/

# Don't use class inheritance
- You don't know in what class the method might have been implemented (overriden) without traversing up the entire inheritance chain.
- You can't treat all subclasses as having even behavior based on their common superclass behavior which might have been substantially overriden in some of the subclasses.
- You can't read a parent source module and clearly rely on described behaviour because some parent methods might have been overriden in the child (so you need to go back and force while reading the source module).

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
