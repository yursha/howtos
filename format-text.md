# Characters
- http://unicode.org/repos/cldr-tmp/trunk/diff/supplemental/language_plural_rules.html

Data Formats (structured/unstructured)
===================
- HTML, XML, JSON, YAML, HAML

# Unstructured Serialized Text Formats

Character comparisons - case sensitivity.

# Structured Serialized Text Formats (Tree | Table)
- **Parser** - parses structured text into tokens and creates an in-memory representation. Only *well-formed* text is parseable. Includes **lexer**.
  + bidirectional vs unidirectional
  + validating vs non-validating (against DTD, Schema, etc.). Validation mechanisms allow to add additional constraints beyond bare syntax.
- **Generator** - generates text from tokens?

# Delimiter-Separted Values (Tabular format)
Tabular formats are often more space efficient than JSON, which can improve loading times for large datasets (when downloading over internet).
- CSV, TSV, SSV 
- https://commons.apache.org/proper/commons-csv/user-guide.html
- https://commons.apache.org/proper/commons-csv/archives/1.2/apidocs/index.html

# LDIF (LDAP Data Interchange Format)

