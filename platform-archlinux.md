# Display & Graphics
- Modify your `~/.xinitrc` file
```
exec xterm
```

# Enable HiDPI Support
- https://wiki.archlinux.org/index.php/HiDPI

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

# User Management
- `sudo` - substitute user do (alternative to `su`). Allows a system administrator to delegate authority to certain users (or groups of users) to run some (or all) commands as root or another user while providing an audit trail of the commands and their arguments. 
 
Sudo is an alternative to su for running commands as root. Unlike su, which launches a root shell that allows all further commands root access, sudo instead grants temporary privilege escalation to a single command. By enabling root privileges only when needed, sudo usage reduces the likelihood that a typo or a bug in an invoked command will ruin the system.

Sudo can also be used to run commands as other users; additionally, sudo logs all commands and failed access attempts for security auditing. 

- `su`
- `useradd`
- https://www.sudo.ws/sudo/
- https://wiki.archlinux.org/index.php/Su
- https://wiki.archlinux.org/index.php/Sudo

# SSH
- https://wiki.archlinux.org/index.php/SSH_keys
- package `openssh`

