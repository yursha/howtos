- http://vim.wikia.com/wiki/Vim_Tips_Wiki
- http://vimregex.com/
- http://www.radford.edu/~mhtay/CPSC120/VIM_Editor_Commands.htm
- http://learnvimscriptthehardway.stevelosh.com/
- http://www.vim.org/docs.php
- https://github.com/vim/vim

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

### Integer
- `tabstop=4`
- `shiftwidth=4`

### List
- `backspace=eol,start,indent`

## Text editing
- http://vim.wikia.com/wiki/Switching_case_of_characters
- `gg=G` - reformat/reindent text
- Put `filetype plugin indent on` into `~/.vimrc` - enable java indentation

## Search
- `:%s/\n//gc` - replace newlines

## Compare
- See differences between the original file and the current buffer.
```
:w !diff % -
```

## Bulk edit
- `:args src/main/java/**/*.java | argdo execute "normal gg=G" | update` - reindent
- `:args src/main/java/**/*.java | argdo :%s/\s\+$//g | update` - remove all trailing whitespace
- `:args src/main/java/**/*.java | argdo set ff=unix | update` - convert all line terminators to unix (LF)

## File navigation
- `:o path/to/file` - open another file (requires save of changes before this)
- `:bd` - close the current file and return to previous
- `:q` - quit vim
- `:w` - save changes

# Commands
- `:range s[ubstitute]/pattern/string/cgiI`
- `:g/^\s*$/d`


## Delete lines from 65 to 126 if cursor is on line 65
- `d126G`
- `65,126d`
- `:.,126d`
- `:,126d`

## Info
- `:f` - see info about file

## Buffer switching
- `:ls` or `:ls!` - list buffers (also `:buffers`, `:files`)
- `:b2` - swith to second buffer (also `:bu` or `:buf` or `:buffer`)
- `:b MyCl` - switch to `MyClass` file (any part of file name can match with stronger preference for the matches from the beginning)
