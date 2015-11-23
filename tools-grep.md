- http://www.gnu.org/software/grep/manual/grep.html#Output-Line-Prefix-Control

- `% grep -rl -e "implements Validator" -e "extends Validator" src` - list all files where there are classes implementing or extending Validator interface

# Options
- `-n` - returns line number

## Matching control
- `-e` - pattern
- `-f` - file with patterns
- `-i` - ignore case
- `-v` - invert match
- `-w` - word pattern (a-zA-Z_)
- `-x` - whole line pattern

## General output control
- `-c` - count matching lines in each file
- `--color`
- `-L` - print files without match. The scanning of each file stops on the first match. 
- `-l` - print files with match. The scanning of each file stops on the first match. 
- `-m num` - max count of matches after which stop
- `-o` - print only matches themselves, not lines

