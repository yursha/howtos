Command Line Interface Integrated Development Environment
=========================================================

- make `TODO` comments and then `grep -r TODO <project-folder>`

```
> gsed -i 's/import com\.opencsv\.CSVReader;/import com.opencsv.CSVReader;\r\nimport com.opencsv.CSVParser;/g' src/main/java/com/apixio/loader/customer/mapping/archive/HPCNVDemographics.java

> ggrep -rl 'CSVParser\.DEFAULT_QUOTE_CHARACTER' --exclude CodingSystems.java --exclude CodingTranslation.java --exclude HPCNVDemographics.java --exclude UAMClaims.java --exclude HealthNet001.java | xargs gsed -i 's/import com\.opencsv\.CSVReader;/import com.opencsv.CSVReader;\r\nimport com.opencsv.CSVParser;/g'

> ggrep -rl 'CSVReader.DEFAULT_SEPARATOR' src | xargs gsed -i 's/CSVReader\.DEFAULT_SEPARATOR/CSVParser.DEFAULT_SEPARATOR/g'
```
