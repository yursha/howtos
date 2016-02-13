- www.x.org
- freedesktop.org

`/etc/X11/xorg.conf` - configuration file

Backlight
- https://wiki.archlinux.org/index.php/Backlight
- `xbacklight -display :0 -set 50` - reduce display backlight in half

## Set up natural touchpad scrolling
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
# X Server
- `man X` 
- http://www.x.org/wiki/
- http://www.x.org/wiki/Documentation/
- http://www.x.org/wiki/ModuleDescriptions/
- http://www.x.org/releases/X11R7.7/doc/
 
Arch install copies some files into `/usr/sharde/X11`

Scalable fonts with full antialiasing, managed on the client side by `fontconfig`, and displayed by the `Xft` library using the `RENDER` extension. The most popular and actively developed graphical toolkits are `Qt` and `GTK+`. `freedesktop.org` has coordinated shared standards for desktop menu entries and icons. Modern display hardware is 24-bit palette-free color wiith 3D capabilities, and hardware acceleration. Shading, gradients.

## Layers
- Application clients (Firefox)
- Desktop Environment (Gnome, KDE - panels, desktop icon managers) - programs which provide desktop paradigm to the user, menus, trays, panels, icons, applets, etc.
- Window and Compositing Manager (Compiz, Metacity, kwin - placement and control of windows, window decorations, title bars, borders, controls for resizing, maximizing, minimizing, moving and closing of windows). Only one window manager can be active on a display at a time.
- Session Manager (gnome-session, ksmserver) - tracks application state aacross login sessions, starting standard clients such as the window manager and desktop environment components, restarting applications that were active at the end of a previous session, and optionally restarting applications if they crash.
- Display Manager (gdm, kdm, xdm - local X server startup and user authentication) (can use biometric scanning for authentication)
- X Window Server - hardware management (keyboard, video screen, touchpad drivers, pointing devices, video cards, touchscreens, mice)
- Network Transports - (TCP/IP, Unix domain sockets - client/server connections)
- Toolkits (GTK, Qt, Motif, Xaw) - support and simplify the construction of the client layers.

## appres

List "application resources". For example, "appres XTerm" will list the xterm resources. These X resources are a type of configuration syntax. Default X resource configuration files can be seen under /etc/X11/app-defaults/, /usr/local/lib/X11/app-defaults/, or other location.

## xlsclients
- `xlsclients -display :0` - list X clients on display :0

# Desktop Managers
- i3 - http://i3wm.org/docs/userguide.html

