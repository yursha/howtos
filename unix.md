- POSIX.1-2008 Edition 2013 - http://pubs.opengroup.org/onlinepubs/9699919799/

- https://github.com/NARKOZ/hacker-scripts
- http://pubs.opengroup.org/onlinepubs/9699919799/
- http://harmful.cat-v.org/cat-v/

System calls errno explanations
- http://unix.stackexchange.com/questions/3586/what-do-the-numbers-in-a-man-page-mean
- `man 2 intro`
- http://stackoverflow.com/questions/1358540/how-to-count-all-the-lines-of-code-in-a-directory-recursively

# Tools
- `awk` and `sed` are stream oriented - they only read the file forward from beginning to end while `vim` is buffer oriented - you can move forward and backward in the file as you like.
- `awk 'NF >0' file.txt |sort|uniq|wc -l`
- `tree` - http://mama.indstate.edu/users/ice/tree/
- `cut`
- `hexdump -C yourfile.bin` - see file bytes
- `env`
- `rsync`
- `mailx`
- `screen` - https://en.wikipedia.org/wiki/GNU_Screen
- `file`
- `tee`

```
> sed -i 's/import com\.opencsv\.CSVReader;/import com.opencsv.CSVReader;\r\nimport com.opencsv.CSVParser;/g' src/main/java/com/apixio/loader/customer/mapping/archive/HPCNVDemographics.java

> grep -rl 'CSVParser\.DEFAULT_QUOTE_CHARACTER' --exclude CodingSystems.java --exclude CodingTranslation.java --exclude HPCNVDemographics.java --exclude UAMClaims.java --exclude HealthNet001.java | xargs gsed -i 's/import com\.opencsv\.CSVReader;/import com.opencsv.CSVReader;\r\nimport com.opencsv.CSVParser;/g'

> grep -rl 'CSVReader.DEFAULT_SEPARATOR' src | xargs gsed -i 's/CSVReader\.DEFAULT_SEPARATOR/CSVParser.DEFAULT_SEPARATOR/g'
```
