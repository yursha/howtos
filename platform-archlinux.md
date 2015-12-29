# Display & Graphics
- Modify your `~/.xinitrc` file
```
exec xterm
```

# Enable HiDPI Support

## Chromium
- `startx -- -dpi 220` - use HiDPI setting when launching X
- then launch firefox in the same display `firefox --display :0` - optional nit

## Firefox
- `export GDK_SCALE=2`

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
- Desktop Environment (Gnome, KDE - panels, desktop icon managers)
- Window and Compositing Manager (Compiz, Metacity, kwin - placement and control of windows)
- Session Manager (gnome-session, ksmserver) - tracks application state aacross login sessions, starting standard clients such as the window manager and desktop environment components, restarting applications that were active at the end of a previous session, and optionally restarting applications if they crash.
- Display Manager (gdm, kdm, xdm - local X server startup and user authentication) (can use biometric scanning for authentication)
- X Window Server - hardware management (keyboard, video screen, touchpad drivers)
- Network Transports - (TCP/IP, Unix domain sockets - client/server connections)
- Toolkits (GTK, Qt, Motif, Xaw)

## appres

List "application resources". For example, "appres XTerm" will list the xterm resources. These X resources are a type of configuration syntax. Default X resource configuration files can be seen under /etc/X11/app-defaults/, /usr/local/lib/X11/app-defaults/, or other location.

## xlsclients
- `xlsclients -display :0` - list X clients on display :0

