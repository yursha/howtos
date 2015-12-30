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

# BIOS
- `lrmi` - Linux Real Mode Interface - http://sourceforge.net/projects/lrmi/ - library for calling real mode BIOS routines under Linux.
- `vbetool` - http://manpages.ubuntu.com/manpages/hardy/man1/vbetool.1.html - runs real-mode video BIOS code to alter hardware state. Uses `lrmi` in order to run code from the video BIOS. Currently, it is able to alter DPMS states, save/restore video card state and attempt to initialize the video card from scratch. 
- Display Power Management Signaling (DPMS) 
  + http://www.tldp.org/HOWTO/Battery-Powered/displaytypes.html
  + https://en.wikipedia.org/wiki/VESA_Display_Power_Management_Signaling
  + http://www.webopedia.com/TERM/D/DPMS.html
  + http://www.x.org/releases/X11R7.7/doc/libXext/dpmslib.html
  + http://www.x.org/releases/X11R7.7/doc/xextproto/dpms.html
  
## VESA BIOS Extensions
- https://en.wikipedia.org/wiki/VESA_BIOS_Extensions

Standard interface that can be used by software to access compliant video boards at high resolutions and bit depths. This is opposed to the "traditional" int 10h BIOS calls, which are limited to resolutions of 640×480 pixels with 16 color (4-bit) depth or less. VBE is made available through the video card's BIOS, which installs during boot up some interrupt vectors that point to itself.

## BIOS Interrupt Call
- https://en.wikipedia.org/wiki/INT_10H
- https://en.wikipedia.org/wiki/BIOS_interrupt_call

# Interrupts
- https://en.wikipedia.org/wiki/Interrupt

An interrupt is a signal emitted by hardware or software to the CPU to interrupt the current code which is executing. The CPU suspends its current activities, saves its state, and executes a an interrupt handler (or an interrupt service routine, ISR). After the interrupt handler finishes, the CPU resumes normal activities. 
