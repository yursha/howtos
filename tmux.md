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

# Set up
- Create `~/.tmux.conf` config file.
- Change prefix key to ```. Add the following to your `~/.tmux.conf` file.
```
unbind C-b
set -g prefix `
bind ` send-prefix
```

# Use
- Open command prompt `prefix-:`
- Reload config file by executing command `source ~/.tmux.conf`
