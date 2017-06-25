# Resources
- [Sonatype - cheap repository management (java, ruby, node.js, yum](http://www.sonatype.com/nexus-product-pricing)

## RPM (Red Hat Package Manager)
- [rpm.org](http://www.rpm.org/)
- [rpm wiki docs](http://www.rpm.org/wiki/Docs)
- [Maxinum RPM](http://www.rpm.org/max-rpm/)
- [createrepo.baseurl.org](http://createrepo.baseurl.org/)
- [Taking the Red Hat Package Manager to the Limit](http://www.rpm.org/max-rpm/index.html)
- [RPM Guide in Fedora Docs](https://docs.fedoraproject.org/en-US/Fedora_Draft_Documentation/0.1/html/RPM_Guide/index.html)
- [RPM GitHub repo](https://github.com/rpm-software-management/rpm)
- [EPEL repo](https://fedoraproject.org/wiki/EPEL)
- [Magnum Solutions CPAN RPM Repository](http://rpm.mag-sol.com/)
- http://www-uxsup.csx.cam.ac.uk/~jw35/docs/rpm_config.html

## DNF
- [DNF, Dandified Yum](http://dnf.baseurl.org/)
- [DNF, the next-generation replacement for Yum](http://dnf.readthedocs.io/en/latest/)
- [DNF, Fedora Wiki](https://fedoraproject.org/wiki/Dnf)
- [DNF System Upgrade - Fedora Wiki](https://fedoraproject.org/wiki/DNF_system_upgrade)

## YUM
- [yum.baseurl.org](http://yum.baseurl.org/)
- [RHEL 7 Yum](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/System_Administrators_Guide/part-Installing_and_Managing_Software.html)
- `man yum.conf`

# Install a package for globally
```
dnf install <package>
pip install <package>
brew install <package>
npm install -g <package>
pacman -S <package>
rpm -i <package>
```

# Download package source
```
mvn dependency:sources -DincludeArtifactIds=guava # must be in a directory with pom.xml
```

# Update an installed package
```
pacman -S <package>
pip install --upgrade <package>
```

# Update itself
```
pip install --upgrade pip
```

# Remove package
```
dnf remove <package>
rpm -e <package>
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
dpkg-query -S /sbin/lsmod
```

# See package summary (description)
```
rpm -qi <package> # installed only
pip show <package>
```

# See package information from a local file
```
rpm -qpil <path/to/rpm>
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

# Query remote package
```
dnf info <package> # doesn't force sync of package database (both installed and available)
pacman -Qi <package> # displays info about an installed package
pacman -Si <package> # displays info about an available package
```

# Repository management

## Add remote repository
- Add repo config file to `/etc/yum.repos.d/`

## List all known repositories
```
dnf repolist all
yum repolist all
```

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

# Java Packaging On Linux Systems
- https://fedorahosted.org/released/javapackages/doc/
- http://redline-rpm.org/index.html
