- https://tmux.github.io/
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
- tmux shortcuts & cheatsheet - https://gist.github.com/MohamedAlaa/2961058
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
- List sessions `tmux ls`
- Create session `tmux new -s mysession`
- Attach to a session `tmux attach -t mysession`
- Kill session `tmux kill-session -t mysession`
- `prefix-$` - rename session

# Windows (tabs) prefix commands
```
c - create window
w - list windows
n - next window
p - previous window
f - find window
, - name window
& - kill window
. - move window
```

# Panes
- `:join-pane -s <window.pane>`
- Join Panes - https://forums.pragprog.com/forums/242/topics/10533
- http://maciej.lasyk.info/2014/Nov/19/tmux-join-pane/
- http://superuser.com/questions/732240/merging-different-windows-in-tmux

## prefix commands
```
x - kill
z - maximize/unmaximize pane
% - horizontal split
" - vertical split
q - show pane numbers
  - switch pane layout (SP char)
```
