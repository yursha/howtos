- https://tmux.github.io/
- https://github.com/tmux
- https://raw.githubusercontent.com/tmux/tmux/master/FAQ
- http://www.openbsd.org/cgi-bin/man.cgi/OpenBSD-current/man1/tmux.1?query=tmux&sec=1
- https://pragprog.com/book/bhtmux/tmux
- http://www.linuxized.com/2010/05/switching-from-gnu-screen-to-tmux/
- http://undeadly.org/cgi?action=article&sid=20090707041154&mode=flat
- http://tmux.cvs.sourceforge.net/viewvc/tmux/tmux/FAQ
- http://unix.stackexchange.com/questions/549/tmux-vs-gnu-screen
- http://superuser.com/questions/236158/tmux-vs-screen
- http://www.techrepublic.com/blog/linux-and-open-source/is-tmux-the-gnu-screen-killer/
- https://raw.githubusercontent.com/danielmiessler/tmux/master/.tmux.config
- https://danielmiessler.com/study/tmux/
- [tmux shortcuts & cheatsheet by Mohamed Alaa](https://gist.github.com/MohamedAlaa/2961058)
- [tmux cheat sheet by Andrey Tarantsov](https://gist.github.com/andreyvit/2921703)
- https://www.google.com/search?q=tmux+tutorial
- http://www.dayid.org/comp/tm.html
- http://minimul.com/teaches/tmux
- https://robots.thoughtbot.com/a-tmux-crash-course
- http://blog.hawkhost.com/2010/06/28/tmux-the-terminal-multiplexer/
- http://man.openbsd.org/OpenBSD-current/man1/tmux.1
- http://unix.stackexchange.com/questions/146825/tmux-new-pane-has-home-directory-as-default-instead-of-previous-directory
- http://unix.stackexchange.com/questions/12032/create-new-window-with-current-directory-in-tmux
- https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=tmux%20reset%20current%20working%20directory%20for%20new%20windows

# Persist tmux sessions across system reboots
- https://github.com/tmux-plugins/tmux-resurrect
- http://superuser.com/questions/440015/restore-tmux-session-after-reboot
- http://superuser.com/questions/863295/adjusting-screen-split-pane-sizes-in-tmux
- http://stackoverflow.com/questions/18644359/select-pane-with-c-number-in-tmux
- http://code.tutsplus.com/tutorials/intro-to-tmux--net-33889

# Use
- Open command prompt `prefix-:`
- Reload config file `tmux source ~/.tmux.conf`
- To scroll up/down enter Copy Mode `prefix-[` and use arrow keys or `Ctrl-b` and `Ctrl-f` to move by character. Exit then Copy Mode by `Ctrl-c`.

# Sessions
## shell cli commands
`tmux` - start new
`tmux new -s myname` - start new named
`tmux a` - attach
`tmux a -t myname` - attached to named
`tmux ls` - list sessions
`tmux kill-session -t myname` - kill named

## tmux cli commands
:new<CR> - new session

## prefix commands
$ - name session
s - list sessions

# Windows (tabs) prefix commands
## prefix commands
```
c - create window
w - list windows
3 - switch to 3rd window
n - next window
p - previous window
f - find window
, - name window
& - kill window
. - move window
```

# Panes

## joining panes
- `:join-pane -s <window.pane>`
- Join Panes - https://forums.pragprog.com/forums/242/topics/10533
- http://maciej.lasyk.info/2014/Nov/19/tmux-join-pane/
- http://superuser.com/questions/732240/merging-different-windows-in-tmux

## resizing panes
:resize-pane -D (Resizes the current pane down)
:resize-pane -U (Resizes the current pane upward)
:resize-pane -L (Resizes the current pane left)
:resize-pane -R (Resizes the current pane right)
:resize-pane -D 20 (Resizes the current pane down by 20 cells)
:resize-pane -U 20 (Resizes the current pane upward by 20 cells)
:resize-pane -L 20 (Resizes the current pane left by 20 cells)
:resize-pane -R 20 (Resizes the current pane right by 20 cells)
:resize-pane -t 2 20 (Resizes the pane with the id of 2 down by 20 cells)
:resize-pane -t -L 20 (Resizes the pane with the id of 2 left by 20 cells)

## prefix commands
```
x - kill
z - toggle zoom pane
% - horizontal split
" - vertical split
q - show pane numbers (then type the number to go to that pane)
  - switch pane layout (SP char)
} - move pane to the next position
{ - move pane to the previous position
o - select next pane
```

# How to highlith searches in tmux
