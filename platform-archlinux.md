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
