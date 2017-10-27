# My hardware and OS

I like cheap hardware. I'm typing this from a 15' refurbished Acer Chromebook CB5-571-C4G4, which I purchased from Newegg.com 6 months ago for ~ $180. Hardware specs are modest with Intel Celeron 3205U (1.50 GHz), 4 GB Memory and 16 GB SSD. But that has been enough for my development needs so far.

I'm using [Crouton](https://github.com/dnschneid/crouton) to have a Linux shell in my Chrome OS. I'm currently using Debian Stretch distro with Crouton and chroot.

## Post-installation
### Locales
Locales set up is important. Tmux will not work if default locale is not setup to `en_US.UTF-8`.

Make sure locales are set-up properly. `dpkg-reconfigure` comes in `debconf` package in Debian Stretch, but it should be installed by default.
```
sudo apt-get install locales
sudo /usr/sbin/dpkg-reconfigure locales # check en_US.UTF_8 in curses UI
```

Add the following to your `~/.bashrc`:
```
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8  
```

Then `source ~/.bashrc`.

# Software
This section explains how to set up software.

## Vim
```
sudo apt-get install vim
```

Copy file from https://raw.githubusercontent.com/yursha/dot-config/master/.vimrc to `~/.vimrc`.

## Tmux
```
sudo apt-get install tmux
```

## Git
```
sudo apt-get install git
git config --global user.name "Alex Yursha"
git config --global user.email "alexyursha@gmail.com"
```

## SSH
If you don't have SSH keys create them.
```
ssh-keygen
```

If BitBucket or GitHub are not configured to work with your keys add your public key to them.
```
cat ~/.ssh/id_rsa.pub # then copy-paste
```

Verify you can access BitBucket and GitHub.
```
ssh -T git@bitbucket.org
ssh -T git@github.com
```

Use `ssh-agent` to avoid retyping your password every time.
```
exec ssh-agent bash
ssh-add
```

# Colors
For Gnome Terminal - manually set this colors.
```
#002b36 // black dark
#073642 // black light
#586e75 // dark grey
#657b83 // darker grey
#839496 // lighter grey
#93a1a1 // light grey
#eee8d5 // white dark
#fdf6e3 // white light
#b58900 // yellow
#cb4b16 // orange
#dc322f // red
#d33682 // magenta
#6c71c4 // violet
#268bd2 // blue
#2aa198 // cyan
#859900 // green

background = white light
foreground // black light
fadeColor // white light
cursorColor // dark grey
pointerColorBackground // light grey
pointerColorForeground // dark grey

// Dark colors
color0 = black dark
color1 = red
color2 = green
color3 = yellow
color4 = blue
color5 = magenta
color6 = cyan
color7 = white dark

// Light colors
color8 = black light
color9 = orange
color10 = dark grey
color11 = darker grey
color12 = lighter grey
color13 = violet
color14 = light grey
color15 = white light
```