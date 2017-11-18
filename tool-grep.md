- Bookmark: http://www.gnu.org/software/grep/manual/grep.html#Environment-Variables

- `% grep -rl -e "implements Validator" -e "extends Validator" src` - list all files where there are classes implementing or extending Validator interface
- `gzip -cd foo.gz | grep --label=foo -H something` - grep through zip files

## Matching control
- `-e` - pattern
- `-i` - ignore case
- `-v` - invert match
- `-w` - word pattern `(a-zA-Z_)`
- `-x` - whole line pattern

## Output control
- `-c` - count matching lines in each file
- `-L` - print files without match. The scanning of each file stops on the first match. 
- `-l` - print files with match. The scanning of each file stops on the first match. 
- `-m num` - max count of matches after which stop
- `-o` - print only matches themselves, not lines
- `-n` - show line numbers

## File and directory selection
- `--include = basename_glob`
- `--exclude = basename_glob`
- `--exclude-dir = basename_glob`
