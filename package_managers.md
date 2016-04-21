# Install a package for a system-wide use
```
dnf install <package>
pip install <package>
brew install <package>
npm install <package> -g
pacman -S <package>
rpm -i <package>
```

# Upgrade an installed package
```
pacman -S <package>
```

# List installed packages
```
dnf list installed
pip list
pacman -Q
```

# Find out which package a file belongs to
```bash
rpm -qf /usr/sbin/lsmod
```

# See package summary (description)
```
rpm -qi kmod
```

# Pacman
- `pacman -Sl` - list all remote packages
- `pacman -Qi <package>` - display information about an installed package
- `pacman -Si <package>` - display info about remote package
- `pacman -Qo <file>` - show a package which owns a file
- `pacman -Qu` - show all outdated locally installed packages
- `pacman -Su` - upgrade all package that have newer versions
- `pacman -S <package>` - install/upgrades package and its deps
- `pacman -Sy` - download fresh remote packages list
- `pacman -Sc` - clean the db cache
- `pacman -Rs --nosave` - remove package and all its deps and config files

# RPM (Red Hat Package Manager)
- Taking the Red Hat Package Manager to the Limit - http://www.rpm.org/max-rpm/index.html
