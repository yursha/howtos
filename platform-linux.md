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
- then launch firefox in the same display `firefox --display :0`

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

# Sort me out
- `killall`

# X Server
- `man X` 
- http://www.x.org/wiki/
- http://www.x.org/wiki/Documentation/
- http://www.x.org/wiki/ModuleDescriptions/
- http://www.x.org/releases/X11R7.7/doc/
 
Arch install copies some files into `/usr/sharde/X11`

Scalable fonts with full antialiasing, managed on the client side by `fontconfig`, and displayed by the `Xft` library using the `RENDER` extension. The most popular and actively developed graphical toolkits are `Qt` and `GTK+`. `freedesktop.org` has coordinated shared standards for desktop menu entries and icons. Modern display hardware is 24-bit palette-free color wiith 3D capabilities, and hardware acceleration. Shading, gradients.

## appres

List "application resources". For example, "appres XTerm" will list the xterm resources. These X resources are a type of configuration syntax. Default X resource configuration files can be seen under /etc/X11/app-defaults/, /usr/local/lib/X11/app-defaults/, or other location.

## xlsclients
- `xlsclients -display :0` - list X clients on display :0
