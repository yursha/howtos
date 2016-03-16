# Bindings
- Bind `ALT-v` to Unicode check mark

# `kbd` package
- `/usr/share/kbd/consolefonts` - here fonts are stored.
- `/usr/share/kbd/keymaps` - keyboards keymaps to character codes.
- `chvt` - change VT
- `setfont`
- `showconsolefont`

# Backlight
```
su
***
echo -n "250" > /sys/class/leds/smc\:\:kbd_backlight/brightness
exit
```
