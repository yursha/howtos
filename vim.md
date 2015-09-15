- http://vim.wikia.com/wiki/Vim_Tips_Wiki
- http://learnvimscriptthehardway.stevelosh.com/
- http://www.vim.org/docs.php
- https://github.com/vim/vim

## Text editing
- http://vim.wikia.com/wiki/Switching_case_of_characters
- `gg=G` - reformat/reindent text

## Search
- `:set hlsearch` - highligh all strings matching a search pattern
- `:set list` - display new line characters
- `:%s/\n//gc` - replace newlines

## Compare
- See differences between the original file and the current buffer.
```
:w !diff % -
```

## Bulk edit
- `:args ~/src/**/*.java | argdo execute "normal gg=G" | update` - reindent
- `:args ~/src/**/*.java | argdo :%s/\s\+//g | update` - remove all trailing whitespace
