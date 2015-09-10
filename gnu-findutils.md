- http://www.gnu.org/software/findutils/manual/html_mono/find.html

# Gotchas

- `find` uses Emacs regex syntax by default
- `find . -iregex '.*[2-9].*' -print0 | xargs -0 rm` - lets xargs handle filenames with spaces correctly

  
