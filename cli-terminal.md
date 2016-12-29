# GNU Screen
- http://git.savannah.gnu.org/cgit/screen.git/tree/src/encoding.c
- http://lists.gnu.org/archive/html/screen-users/2007-02/msg00000.html
- http://fungi.yuggoth.org/vsp4s/
- http://www.debian-administration.org/article/34/Using_GNU_Screen

# Linux VT fonts
- https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/tree/drivers/tty/vt/Makefile

# `terminus-font` package
- http://sourceforge.net/projects/terminus-font/
- http://files.ax86.net/terminus-ttf/

# Linux TTY, VT
- https://en.wikipedia.org/wiki/Linux_console
- http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/tree/drivers/tty/Kconfig
- https://en.wikipedia.org/wiki/Code_page_437
- Deprecating CONFIG_VT - https://dvdhrm.wordpress.com/2012/08/12/killing-off-config_vt/
- http://www.tldp.org/HOWTO/Keyboard-and-Console-HOWTO-7.html

## Terminal fonts
- `setfont ter-v32n` - set a bigger terminal font on a HiDPI device (add to `~/.bash_profile`)
- `pacman -S terminus-font` - install set of bigger fonts for Linux virtual terminals
- `setfont sun12x22`  - the biggest console font in pre-installed fonts

## Terminal colors
- http://rampex.ihep.su/Linux/linux_howto/html/tutorials/mini/Colour-ls-6.html
- `setterm -foreground white -background blue -store`
