- http://vim.wikia.com/wiki/Vim_documentation
- http://vim.wikia.com/wiki/VimTip1
[32]
- http://vimhelp.appspot.com/
- https://en.wikibooks.org/wiki/Learning_the_vi_Editor
  + /Vim/Modes
- http://vimregex.com/
- http://www.radford.edu/~mhtay/CPSC120/VIM_Editor_Commands.htm
- http://learnvimscriptthehardway.stevelosh.com/
- http://www.vim.org/docs.php
- https://github.com/vim/vim
- http://ex-vi.sourceforge.net/

# Gotchas
- **Line terminator vs line separator confusion**. Vim automatically adds a newline at the end of each file it edits. To prevent this behaviour for file open in binary mode (`vim -b path/to/file`) we should disable `eol` boolean configuration variable.

## Plugin Manager for Vim
- [Vundle](https://github.com/VundleVim/Vundle.vim)

## Configuration Variables
### Boolean
- `ruler` - show current line, column and percentage of total document size
- `number` - show line numbers
- `autoindent` - automatically indent on <kbd>enter</kbd> button press
- `hlsearch` - highlight all strings matching a search pattern
- `expandtab`- insert spaces on <kbd>tab</kbd> button press
- `backup` - create backup `.swp` files while editing
- `list` - display new line characters
- `eol` - append line feed (10) character when saving files.
- `ignorecase` - whether searches are case-sensitive by default.
- `incsearch` - move cursor while typing a search pattern. Use `Ctrl-L` to insert next char in the match or `Ctrl-r,Ctrl-w` to complete a word match.
- `cursorline` - highlight cursor line

### Integer
- `tabstop=4`
- `shiftwidth=4`

### List
- `backspace=eol,start,indent`

## Text editing
- http://vim.wikia.com/wiki/Switching_case_of_characters
- `gg=G` - reformat/reindent text
- Put `filetype plugin indent on` into `~/.vimrc` - enable java indentation

## Search and replace
- `/`, `?` - start search forward / backward from current line. Use <kbd>Arrow Up</kbd> and <kbd>Arrow Down</kbd> keys to scroll thru search history.
- `*`, `#` - search **word** under the cursor in word context forward / backward
- `g*`, `g#` - search **word** under the cursor in all contexts forward / backward
- `n`, `N` - next / previous match
- `ggn`, `GN` - first / last match
- <kbd>Ctrl</kbd>+<kbd>o</kbd>, <kbd>Ctrl</kbd>+<kbd>i</kbd> - jump to previous/next cursor position
- <kbd>Ctrl</kbd>+<kbd>r</kbd>;<kbd>Ctrl</kbd>+<kbd>w</kbd> (or <kbd>r</kbd>) - copy a word into command line
- `:%s/\n//gc` - replace newlines
- `:g/pattern` - show all lines matching the pattern
- `:g/pattern/d` - delete all lines matching a pattern (e.g. `:g/^$/d` - deletes all empty lines)
- `:g/pattern/command` - execute a command on lines which match a regex
- `/pattern/e` - search-offset - position the cursor at the end of the match
- `/\%d65`, `/\%x41`, `/\%u2013`, `/\%d8211` - Searching for chars by their code value.
- `/the\C`, `/the\c` - force pattern case-(in)sensitivity

### Regex
- Enclose a string into `\<` and `\>` to impose a word context.
- `*` - greedy match, `\{-}` - non-greedy match

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
- `:args src/main/java/**/*.java | argdo execute "normal gg=G" | update` - reindent
- `:args src/main/java/**/*.java | argdo :%s/\s\+$//g | update` - remove all trailing whitespace
- `:args src/main/java/**/*.java | argdo set ff=unix | update` - convert all line terminators to unix (LF)

# Commands
- `:range s[ubstitute]/pattern/string/cgiI`
- `:g/^\s*$/d`


## Delete lines from 65 to 126 if cursor is on line 65
- `d126G`
- `65,126d`
- `:.,126d`
- `:,126d`


## Buffers
- `:ls` or `:ls!` - list in memory buffers
- `:f` - see info about current buffer
- `:bd` - delete buffer from memory
- `:b2` - swith to second buffer (also `:bu` or `:buf` or `:buffer`)
- `:b MyCl` - switch to `MyClass` file (any part of file name can match with stronger preference for the matches from the beginning). <kbd>Tab</kbd> can be used to autocomplete and to cycle thru matching names. Use <kbd>Ctrl</kbd> + <kbd>D</kbd> to list all matching names at once.
- `:e path/to/file` - create a buffer with associated file path (if file exists then read from it)
- `:q` - quit vim
- `:w` - save changes (`ZZ` is equal to `:wq`)
- `:saveas 'filepath'` - clone buffer and save it to a different filepath
- `:bufdo %s/pattern/replace/ge | update` - search and replace in all open buffers. 
