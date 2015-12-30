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

# Sort me out
- `killall`

# Hardware
## PCI
- `lspci | grep VGA` - find out graphics chip. Intel chips only need `xf86-video-intel` archlinux package.
- `lspci` - list all PCI hardware

## ACPI
- https://www.kernel.org/doc/Documentation/power/states.txt

The kernel supports `freeze`(s0), `standby` (s1), `mem` (s3) and `disk`(s4) sleep states that can be read or written to the `/sys/power/state` file.  `disk` represents hibernation and the meaning of the remaining ones depends on the `relative_sleep_states` command line argument. For `disk`, a mechanism called `swsusp` (Swap Suspend) is used
to write memory contents to free swap space. Some, albeit outdated, documentation can be found in `Documentation/power/swsusp.txt`. Alternatively, userspace can do most of the actual suspend to disk work,
see `userland-swsusp.txt`.

## Keyboard
### Backlight
```
su
***
echo -n "250" > /sys/class/leds/smc\:\:kbd_backlight/brightness
exit
```
