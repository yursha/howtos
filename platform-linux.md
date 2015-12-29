- https://www.kernel.org/
- https://lkml.org/

- `/sys/power` directory - https://www.kernel.org/doc/Documentation/ABI/testing/sysfs-power

- How `/dev/zero` and `/dev/null` work?
- http://www.tldp.org/LDP/khg/HyperNews/get/khg.html

# Linux Torvalds
- http://yarchive.net/comp/linux/everything_is_file.html
- https://www.quora.com/What-does-Linus-Torvalds-think-of-Java-and-the-JVM

# System calls

# ifconfig

# Misc
- magic ioctl

- https://doc.opensuse.org/documentation/html/openSUSE_121/opensuse-tuning/index.html

# Switch between different terminals
- `CTRL+ALT+FN+F1`, `CTRL+ALT+FN+F2` etc.

# Terminal fonts
- `setfont ter-v32n` - set a bigger terminal font on a HiDPI device (add to `~/.bash_profile`)
- `pacman -S terminus-font` - install set of bigger fonts for Linux virtual terminals
- `setfont sun12x22`  - the biggest console font in pre-installed fonts

# Launch Chromium in a standalone app
- Modify your `~/.xinitrc` file
```
exec chromium
```
- `startx -- -dpi 220`

# Enable natural touchpad scrolling
- `cp  /usr/share/X11/xorg.conf.d/50-synaptics.conf /etc/X11/xorg.conf.d`
- `vim /etc/X11/xorg.conf.d/50-synaptics.conf`

```
Section "InputClass"
    ...
    Option      "VertScrollDelta"          "-111"
    Option      "HorizScrollDelta"         "-111"
    ...
EndSection
```
