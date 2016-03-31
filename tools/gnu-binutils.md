- `strings` - print the strings of printable characters in files

# How to recover `rm`ed files?
- unmout disk partition from which file was deleted (boot with recovery usb stick if this is a single bootable partition)
- run `sudo cat /dev/sda2 | pv -pterbs 347G | strings | grep -C100 'My File Contents' > recoverted.txt`
