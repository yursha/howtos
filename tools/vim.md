- https://neovim.io/
- http://learnvimscriptthehardway.stevelosh.com/
- http://stevelosh.com/blog/2010/09/coming-home-to-vim/
- https://github.com/vim/vim
- https://github.com/tpope/vim-unimpaired
- https://github.com/ggreer/the_silver_searcher
- http://stackoverflow.com/questions/8291060/how-to-format-a-java-file-in-vim-like-eclipse
- http://stackoverflow.com/questions/1919028/how-to-show-vertical-line-to-wrap-the-line-in-vim
- http://stackoverflow.com/questions/82726/convert-dos-line-endings-to-linux-line-endings-in-vim
- https://github.com/mhinz/vim-galore
- http://vim.wikia.com/wiki/Converting_variables_to_or_from_camel_case
- https://robots.thoughtbot.com/set-your-mouse-free
- http://vimgolf.com/
- http://keyxl.com/aaa8263/290/VIM-keyboard-shortcuts.htm
- https://github.com/tpope/vim-commentary - Custom vim operator example `:h map-operator`
- https://github.com/kana/vim-textobj-entire - Custom vim motion example `:h omap-info`
- http://vimcasts.org/
- http://peertopeer.io/
- [Vim Video Tutorials by Derek Wyatt](http://derekwyatt.org/vim/tutorials/index.html)
- [Vim Scala integration by Derek Wyatt](https://github.com/derekwyatt/vim-scala)

# `:help <arg>` or `:helpgrep <arg`
Bookmark: quickref, usr_07.txt, 

# Reference manual
- reference_toc
- change.txt 4.4 Changing tabs ✓
- insert.txt CTRL-Q, ins-expandtab
- options.txt
    + expandtab ✓


# help
- `x`, `CTRL-R` - normal mode command
- `v_u` - visual mode command
- `i_<Esc>` - insert mode command
- `:quit` - command-line command
- `c_<Del>` - command-line editing
- `-r` - command-line argument for vim
- `'textwidth'` - option
- `/[` - regex
- `E37` - errors - `subject()` - functions - `+subject` - compile-time feature

# Capture output of an external command
- http://vim.wikia.com/wiki/Append_output_of_an_external_command

## From inside vim
- `:r !date` - append output of system `date` command to the current buffer

## From outside vim
- `date | vim -`
- `vim <(ls -la)`

# File scrolling
- 2% - go to 2% of a file
- CTRL+b - scroll up a page
- CTRL+f - scroll down a page
- CTRL+u - scroll up half page
- CTRL+d - scroll down half page
- CTRL+y - scroll up a line
- CTRL+e - scroll down a line
- zz - scroll current line into center (*scrolloff* option - number of lines to pad the current line when scrolling)
- zt - scroll current line to the top
- zb - scroll current line to the bottom
- H/M/L - jump to first (home), middle, last currently seen line
- CTRL+0 - jump forward
- CTRL+I - jump backward
- `:jumps`
- `` - jump back and force between 2 positions 
- set 26 marks with `ma`-`mz` and jump to them with `a-`z (marked col) or 'a-'z (first col) *Doesn't jump across buffers*
- `:marks` (' - position before jump, " - position when last editing a file, [ - start of last change, ] - end of last change
- Ctrl+o, Ctrl+i - jump to previous/next cursor position
- Ctrl+r;Ctrl+w (or <r>) - copy a word into command line

## Search and replace
- Use `Ctrl-L` to insert next char in the match or `Ctrl-r,Ctrl-w` to complete a word match.
- `/` - start search forward from current line. Navigate thru search history with arrow keys (filtering works). 
- `4*` - search **word** under the cursor as a Nth word 
- `g*`, `g#` - search **word** under the cursor as a match 
- `4n`, `4N` - N-th match after/before
- `ggn`, `GN` - first / last match
- `:%s/\n//gc` - replace newlines
- `:g/pattern` - show all lines matching the pattern
- `:g/pattern/d` - delete all lines matching a pattern (e.g. `:g/^$/d` - deletes all empty lines)
- `:g/pattern/command` - execute a command on lines which match a regex
- `/pattern/e` - search-offset - position the cursor at the end of the match
- `/\%d65`, `/\%x41`, `/\%u2013`, `/\%d8211` - Searching for chars by their code value.
- `/the\C`, `/the\c` - force pattern case-(in)sensitivity

## windows
- `CTRL-W` - switch between windows
- https://technotales.wordpress.com/2010/04/29/vim-splits-a-guide-to-doing-exactly-what-you-want/
- Resize split height `:res +10` or `n-Ctrl-w-+` and `n-Ctrl-w--`
- Resize split width `:vertical resize +10`

## vim grepping
- `:grep` - populates quickfix list
- `:vimgrep` - populates quickfix list
- `:lgrep` - populates location list
- `:lvimgrep` - populates location list

## quickfix list
- `:copen` - open quickfix list
- `:cn` - go to next location in the list
- `:cp` - go to previous location in the list
- `:cclose` - close the quickfix window
- `CTRL-W K` - move quickfix window to the top

## location list

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
- 4p
- y-motion, yy
- "*y, "*yy - yank to clipboard (only works in versions of vim that include clipboard support)
- "*p - paste from clipboard
- u,U,CTRL-r - undoing
- R - replace mode
- ZZ,w,q<!>,e<!> - working with buffers
- ~ - change case (**tildeop**)

# Text Objects
- aw - a word
- iw - inner word
- as - a sentence
- is - inner sentence

# Commands
- `:` - navigate thru command history

# Gotchas
- **Line terminator vs line separator confusion**. Vim automatically adds a newline at the end of each file it edits. To prevent this behaviour for file open in binary mode (`vim -b path/to/file`) we should disable `eol` boolean configuration variable.

## Plugin Manager for Vim
- [Vundle](https://github.com/VundleVim/Vundle.vim)

- `iskeyword` - defines what a word is

- `!rm %` - remove current file from disk
- `bd` - remove current buffer from memory

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


# Commands - `:range s[ubstitute]/pattern/string/cgiI` - `:g/^\s*$/d` ## Delete lines from 65 to 126 if cursor is on line 65 - `d126G` - `65,126d`
- `:.,126d`
- `:,126d`

## Buffers
- `:ls` or `:ls!` - list in memory buffers (`:buffers`)
- `:f` - see info about current buffer
- `:b2` - swith to second buffer
- `:b MyCl` - switch to `MyClass` file (any part of file name can match with stronger preference for the matches from the beginning). Tab can be used to autocomplete and to cycle thru matching names. Use Ctrl+D to list all matching names at once.
- `:b#` - switch to previous buffer
- `:e path/to/file` - create a buffer with associated file path (if file exists then read from it)
- `:e` - reload the current file if it was changed on disk
- `:q` - quit vim
- `:w` - save changes (`ZZ` is equal to `:wq`)
- `:saveas 'filepath'` - clone buffer and save it to a different filepath
- `:bufdo %s/pattern/replace/ge | update` - search and replace in all open buffers.
- http://vim.wikia.com/wiki/Easier_buffer_switching

- `vim $(find ...)` - open multiple files

## Argument list
- `:args **` - open all files in cwd recursively (including directory files)
- `:arglocal`, `argc()`, `argv()`

## Copypasting from system clipboard
- `:set paste`

# Vim configuration
- `:scriptnames`

# Mapping
- `:map` - list current mappings

# Management
- `:options`
- `:help local-additions`

# Snippets
- http://www.vim.org/scripts/script.php?script_id=1318
- http://www.vim.org/scripts/script.php?script_id=2540
- http://stackoverflow.com/questions/15334/how-to-create-short-snippets-in-vim
- https://github.com/scrooloose/snipmate-snippets
- http://stackoverflow.com/questions/5064430/changing-the-case-within-snipmate-vim-snippets
- http://www.ibm.com/developerworks/library/l-vim-script-1/
- http://vim.wikia.com/wiki/Switching_case_of_characters
- http://stackoverflow.com/questions/14954095/adding-vim-snippets
- https://github.com/honza/vim-snippets

Michael Sanders - http://www.vim.org/account/profile.php?user_id=16544
- https://github.com/msanders/snipmate.vim

- https://github.com/jarijokinen/snipmate.vim (Fork with toUpperCase Functionality)

# Autocompletion
- http://stackoverflow.com/questions/5169638/autocompletion-in-vim
- http://stackoverflow.com/questions/1115876/autocompletion-in-vim
- http://stackoverflow.com/questions/5432884/vim-auto-complete-java
- https://www.reddit.com/r/vim/comments/3xlalp/java_auto_complete_in_vim/

## Builtin
Works in Insert Mode
- `<C-n>`

# Visual mode
- v - char visual mode (o - jump to other side of selection)
- V - line visual mode
- CTRL-v - col visual mode (O - jump to additional 2 corners)

# Insert Mode
- i,I,a,A,o,O - enter mode
- <C-c> or <ESC> - leave mode

# Basic commands
- `d` - delete
- `J` - join lines
- `y` - yank
- `yy` - yank line
- http://vim.wikia.com/wiki/Switching_case_of_characters

# Shortcuts
- `C` = `c$`
- `s` = `cl`
- `S` = `^C`
- `I` = `^i`
- `A` = `$a`
- `o` = `A<CR>`
- `O` = `ko`
- `x` = `dl`
- `c<mov>` = `d<mov>i`
- `dd` = `S<ESC>J`

# Movement
- 0 - first char in a line
- w - word start forwards
- b - word start backwards
- e - word end forwards
- ge - word end backwards
- W - white-space separated word start forwards
- B - white-space separated word start backwards
- E - white-space separated word end forwards
- gE - white-space separated word end backwards
- % - move to matching (),[],{} or *matchpairs* option (or find first in a line)
- gg, 2G, G - jump to first, 2, last line
- matchpairs

# Repetitions
- `.` - repeat change
- `u` - undo
- `@:` - repeat Ex Command
- `&` - repeat substitute command
- `n` or `N` - repeat previous pattern search (`/`, `?`, `*`)
- `;` or `,` - repeat previous character search (`f`, `t`, `F`, `T`)
- `@x` - repeat macro (`qx{changes}q`)

# Indentation
- `>` and `<` commands
- `>G` - increase indent from current line to end of file
- `gg=G` - reformat/reindent text
- `:args src/main/java/**/*.java | argdo execute "normal gg=G" | update` - reindent
- Put `filetype plugin indent on` into `~/.vimrc` - enable java indentation


# Line Terminators
- http://stackoverflow.com/questions/5843495/what-does-m-character-mean-in-vim
- `:args src/main/java/**/*.java | argdo set ff=unix | update` - convert all line terminators to unix (LF)

# Trailing whitespace
- `:args src/main/java/**/*.java | argdo :%s/\s\+$//g | update` - remove all trailing whitespace

# Syntax highlighting
- `:syntax on`
- https://github.com/endel/vim-github-colorscheme
- http://superuser.com/questions/627636/better-syntax-highlighting-for-java-in-vim
- https://github.com/dragfire/Improved-Syntax-Highlighting-Vim
- https://github.com/github/linguist
- https://github.com/bpdp/vim-java
- [Erics Vim syntax and color highlighting](https://github.com/sentientmachine/erics_vim_syntax_and_color_highlighting)

# Plugins
- https://github.com/gabrielelana/vim-markdown

# Folks
- https://github.com/tpope

# [Pathogen by Tim Pope](https://github.com/tpope/vim-pathogen)
