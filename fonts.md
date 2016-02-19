- https://wiki.archlinux.org/index.php/fonts

`/usr/share/fonts` - system wide installation
`~/.local/share/fonts` - local installation

# `fontconfig` package
- https://www.freedesktop.org/wiki/Software/fontconfig/
- `fc-query`
- `fc-cache`

# `pango`
- www.pango.org

# Linux VT fonts
- https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/tree/drivers/tty/vt/Makefile

# `kbd` package
- `/usr/share/kbd/consolefonts` - here fonts are stored.
- `/usr/share/kbd/keymaps` - keyboards keymaps to character codes.
- `chvt` - change VT
- `setfont`
- `showconsolefont`

## Keyboard
### Backlight
```
su
***
echo -n "250" > /sys/class/leds/smc\:\:kbd_backlight/brightness
exit
```

# `terminus-font` package
- http://sourceforge.net/projects/terminus-font/


# Linux TTY, VT
- https://en.wikipedia.org/wiki/Linux_console
- http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/tree/drivers/tty/Kconfig
- https://en.wikipedia.org/wiki/Code_page_437
- Deprecating CONFIG_VT - https://dvdhrm.wordpress.com/2012/08/12/killing-off-config_vt/

# `gpm` package
- `gpm`
