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
- https://gist.github.com/MohamedAlaa/2961058
- https://www.google.com/search?q=tmux+tutorial

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

# Windows
- New window `prefix-c`
- Name window `prefix-,`
- List windows `:lsw` or `prefix-w`
- Find window `prefix-f`
- Switch to window 1 `prefix-1`
- Kill window `prefix-&`
- Move window `prefix-.` or `:movew`

# Panes
- Kill a pane `prefix-x`
- Horizontal split `prefix-%`
- Vertical split `prefix-"`
