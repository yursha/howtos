- http://www.gnu.org/software/findutils/manual/html_mono/find.html

# Gotchas

## Find
`find` uses Emacs regex syntax by default.

### Examples
- `% find . -iregex '.*[2-9].*' -print0 | xargs -0 rm` - lets xargs handle filenames with spaces correctly
- `% find . -iname *.yml` - find all `.yml` files in the cwd
- `% find . -type f` - find all files which are not directories.

  
