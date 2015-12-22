- http://learnvimscriptthehardway.stevelosh.com/
- http://stevelosh.com/blog/2010/09/coming-home-to-vim/
- https://github.com/vim/vim

# Motion

### Navigating a line
- 4h/4l - N chars left/right
- 0 - jump to start of line
- ^ - jump to first char in a line
- 4$ - jump to end of line N times
- 4f-char - jump at Nth next C char in a line (,;)
- 4F-char - jump at Nth previous C char in a line (,;)
- 4t-char - jump to Nth next C char in a line (,;)
- 4T-char - jump to Nth previous C char in a line (,;)

### Navigating a file
- 4j/4k - N lines down/up
- 4b/4w - N word starts left/right
- 4ge/4e - N word ends left/right
- 4B/4W - N whitespace-separated word starts left/right
- 4gE/4E - N whitespace-separated word ends left/right
- % - move to matching (),[],{} or *matchpairs* option (or find first in a line)
- 4% - go to % of a file
- CTRL+b - scroll up a page
- CTRL+f - scroll down a page
- CTRL+u - scroll up half page
- CTRL+d - scroll down half page
- CTRL+y - scroll up a line
- CTRL+e - scroll down a line
- zz - scroll current line into center (*scrolloff* option - number of lines to pad the current line when scrolling)
- zt - scroll current line to the top
- zb - scroll current line to the bottom
- gg, 4G, G - jump to first,Nth,last line
- H/M/L - jump to first (home), middle, last currently seen line
- CTRL+0 - jump forward
- CTRL+I - jump backward
- `:jumps`
- `` - jump back and force between 2 positions 
- set 26 marks with `ma`-`mz` and jump to them with `a-`z (marked col) or 'a-'z (first col) *Doesn't jump across buffers*
- `:marks` (' - position before jump, " - position when last editing a file, [ - start of last change, ] - end of last change

## Search and replace
- Use `Ctrl-L` to insert next char in the match or `Ctrl-r,Ctrl-w` to complete a word match.
- `/` - start search forward from current line. Navigate thru search history with arrow keys (filtering works). 
- `4*` - search **word** under the cursor as a Nth word 
- `g*`, `g#` - search **word** under the cursor as a match 
- `4n`, `4N` - N-th match after/before
- `ggn`, `GN` - first / last match
- Ctrl+o, Ctrl+i - jump to previous/next cursor position
- Ctrl+r;Ctrl+w (or <r>) - copy a word into command line
- `:%s/\n//gc` - replace newlines
- `:g/pattern` - show all lines matching the pattern
- `:g/pattern/d` - delete all lines matching a pattern (e.g. `:g/^$/d` - deletes all empty lines)
- `:g/pattern/command` - execute a command on lines which match a regex
- `/pattern/e` - search-offset - position the cursor at the end of the match
- `/\%d65`, `/\%x41`, `/\%u2013`, `/\%d8211` - Searching for chars by their code value.
- `/the\C`, `/the\c` - force pattern case-(in)sensitivity

## Regex
- `\<` - beginning of word
- `\>` - end of word
- `*` - greedy match, `\{-}` - non-greedy match
- `^` - start of line
- `$` - end of line
- `.` - any char

# Actions
- J
- d-motion, dd
- c-motion, cc
- r-motion 
- . - repeat change
- 4p
- y-motion, yy
- "*y, "*yy - yank to clipboard (only works in versions of vim that include clipboard support)
- "*p - paste from clipboard
- u,U,CTRL-r - undoing
- R - replace mode
- i,a,o - triggering insert mode
- ZZ,w,q<!>,e<!> - working with buffers
- ~ - change case (**tildeop**)

# Text Objects
- aw - a word
- iw - inner word
- as - a sentence
- is - inner sentence

# visual mode
- v - char visual mode (o - jump to other side of selection)
- V - line visual mode
- CTRL-v - col visual mode (O - jump to additional 2 corners)

# Commands
- `:` - navigate thru command history

# `:help <arg>` or `:helpgrep <arg`
Bookmark: quickref, usr_05.txt, reference_toc
- `x`, `CTRL-R` - normal mode command
- `v_u` - visual mode command
- `i_<Esc>` - insert mode command
- `:quit` - command-line command
- `c_<Del>` - command-line editing
- `-r` - command-line argument for vim
- `'textwidth'` - option
- `/[` - regex
- `E37` - errors - `subject()` - functions - `+subject` - compile-time feature

# Gotchas
- **Line terminator vs line separator confusion**. Vim automatically adds a newline at the end of each file it edits. To prevent this behaviour for file open in binary mode (`vim -b path/to/file`) we should disable `eol` boolean configuration variable.

## Plugin Manager for Vim
- [Vundle](https://github.com/VundleVim/Vundle.vim)

- `iskeyword` - defines what a word is

## Text editing
- http://vim.wikia.com/wiki/Switching_case_of_characters
- `gg=G` - reformat/reindent text
- Put `filetype plugin indent on` into `~/.vimrc` - enable java indentation


### Examples
- `:%s/^\(\s*\)incrementSuspects(\(.\{-}\),.*"\(.*\)");$/\0\r\1table.error("\3", \2);/g`
Find all calls to `incrementSuspects`, remember the indentation, first and last parameters.
Add a new line preserving the indentation with a call to `table.error` and remembered parameters.

### Gotchas
- Empty search will perform the last search. It works across `/`, `:s` and `:g`. So you can search with `/` and then substitute with `:s` by not specifying the search pattern.

## Compare
- See differences between the original file and the current buffer.
```
:w !diff % -
```

## Bulk edit
- `:args src/main/java/**/*.java | argdo execute "normal gg=G" | update` - reindent - `:args src/main/java/**/*.java | argdo :%s/\s\+$//g | update` - remove all trailing whitespace - `:args src/main/java/**/*.java | argdo set ff=unix | update` - convert all line terminators to unix (LF) # Commands - `:range s[ubstitute]/pattern/string/cgiI` - `:g/^\s*$/d` ## Delete lines from 65 to 126 if cursor is on line 65 - `d126G` - `65,126d`
- `:.,126d`
- `:,126d`


## Buffers
- `:ls` or `:ls!` - list in memory buffers (`:buffers`)
- `:f` - see info about current buffer
- `:bd` - delete buffer from memory (`:bdel`, `:bwipe`)
- `:b2` - swith to second buffer (also `:bu` or `:buf` or `:buffer`)
- `:b MyCl` - switch to `MyClass` file (any part of file name can match with stronger preference for the matches from the beginning). <kbd>Tab</kbd> can be used to autocomplete and to cycle thru matching names. Use <kbd>Ctrl</kbd> + <kbd>D</kbd> to list all matching names at once.
- `:e path/to/file` - create a buffer with associated file path (if file exists then read from it)
- `:e` - reload the current file if it was changed on disk
- `:q` - quit vim
- `:w` - save changes (`ZZ` is equal to `:wq`)
- `:saveas 'filepath'` - clone buffer and save it to a different filepath
- `:bufdo %s/pattern/replace/ge | update` - search and replace in all open buffers.

- open multiple files in the project `src` folder 
```
% vim `find src -type f -name '*.js' -or -name '*.java' -or -name '*.jade' -or -name '*.scss' -or -name '*.xml'`
```

## Argument list
- `:args **` - open all files in cwd recursively (including directory files)
- `:arglocal`, `argc()`, `argv()`

## Copypasting from system clipboard
- `:set paste`

# Vim configuration
- `:scriptnames`

# Indentation
- `>` and `<` commands

# Mapping
- `:map` - list current mappings
