Configuring keyboard mappings for VT and X environments is independent.

# Configuring for VT environment.

## `kbd` package
- most of the `kbd` commands will not work in a GUI environment (such as X).
- `/usr/share/kbd/consolefonts` - VT fonts directory
- `/usr/share/kbd/keymaps` - keyboards keymaps to character codes.
- `chvt` - change VT
- `setfont`
- `showconsolefont`
- `loadkeys`

`man 4 kbd`

# Bindings
- Bind `ALT-v` to Unicode check mark


# Configuring keyboard backlight (for keyboards which support it).
```
su
***
echo -n "250" > /sys/class/leds/smc\:\:kbd_backlight/brightness
exit
```
