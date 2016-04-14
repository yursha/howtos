# Problems
t no automatic keys backlight during low light conditions (how OS X does it?)
- no low-battery notification
- cannot recover from suspend state? (at list dies when you close lid)
- how to copy text from X server to Linux VT?
- keys to control display brightness don't work in X not in Linux Vt
- sound subsystem doesn't work

# Refs
- https://wiki.archlinux.org/index.php/MacBook

# Enable HiDPI Support
- https://wiki.archlinux.org/index.php/HiDPI

- `startx -- -dpi 220` - i3, chromium
- then launch firefox in the same display `firefox --display :0` - optional nit

## Firefox
- `export GDK_SCALE=2`

# Slack has desktop notifications in chromium (and maybe in the latest version of Firefox)

# Time & Date
- archlinux wiki: systemd-timesyncd
- `timedatectl status`
- `timedatectl set-ntp true`

# Wiki:
- swap,
- https://wiki.archlinux.org/index.php/Power_management/Suspend_and_hibernate
- https://wiki.archlinux.org/index.php/Kernel_parameters
- https://en.wikipedia.org/wiki/Sysctl
- archlinux wiki sysctl
- https://en.wikipedia.org/wiki/Procfs
- https://wiki.archlinux.org/index.php/Kernels
- https://wiki.archlinux.org/index.php/Power_management
- https://wiki.archlinux.org/index.php/Uswsusp
- http://pm-utils.freedesktop.org/wiki/
