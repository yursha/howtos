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

# List files of a package
```
rpm -ql <package>
rpm -ql <package> | grep bin # list executable files
```

# Find out which package a file belongs to
```bash
rpm -qf /usr/sbin/lsmod
```

# See package summary (description)
```
rpm -qi kmod
```

# List all remote groups (development)
```
dnf groups list | grep -i devel
```

# Install a group
```
dnf groups install "Development Tools"
```

# Refresh package index and check for available updates (without installing them)
```
apt-get update
dnf check-update
pacman -Sy
```

# Show package info (summary)
```
dnf info <package> # doesn't force sync of package database (both installed and available)
pacman -Qi <package> # displays info about an installed package
pacman -Si <package> # displays info about an available package
```

# Add remote repository
- Add repo config file to `/etc/yum.repos.d/`

# Install package manager
- [cpanm on GitHub](https://github.com/miyagawa/cpanminus)
- [How to install CPAN modules on CPAN](http://www.cpan.org/modules/INSTALL.html)
- [Installing Perl Modules by Dave Cross](http://perlhacks.com/2014/03/installing-modules/)

# Lookup repository package name by general name
- [perl to debian/ubuntu](http://deb.perl.it/)

# Pacman
- `pacman -Sl` - list all remote packages
- `pacman -Qo <file>` - show a package which owns a file
- `pacman -Qu` - show all outdated locally installed packages
- `pacman -Su` - upgrade all package that have newer versions
- `pacman -S <package>` - install/upgrades package and its deps
- `pacman -Sc` - clean the db cache
- `pacman -Rs --nosave` - remove package and all its deps and config files

# RPM (Red Hat Package Manager)
- [Taking the Red Hat Package Manager to the Limit](http://www.rpm.org/max-rpm/index.html)
- [RPM Guide in Fedora Docs](https://docs.fedoraproject.org/en-US/Fedora_Draft_Documentation/0.1/html/RPM_Guide/index.html)
- [RPM GitHub repo](https://github.com/rpm-software-management/rpm)
- [EPEL repo](https://fedoraproject.org/wiki/EPEL)
- [Magnum Solutions CPAN RPM Repository](http://rpm.mag-sol.com/)

# DNF
- [DNF, Dandified Yum](http://dnf.baseurl.org/)
- [DNF, the next-generation replacement for Yum](http://dnf.readthedocs.io/en/latest/)
- [DNF, Fedora Wiki](https://fedoraproject.org/wiki/Dnf)
- [DNF System Upgrade - Fedora Wiki](https://fedoraproject.org/wiki/DNF_system_upgrade)
