# Init.d
- `runlevel` - prints previous and current SysV runlevel
- RedHat docs are at `/usr/share/doc/initscripts/sysvinitfiles`
- [`initscripts` package on Fedora](https://fedorahosted.org/releases/i/n/initscripts/)
- [LSBInitScripts on Debian](https://wiki.debian.org/LSBInitScripts)
- [Sample service script for Debian](https://gist.github.com/naholyr/4275302)
- [Sample service script for Debian2](https://github.com/jasonblewis/sample-service-script)
- [System V init script template](https://github.com/fhd/init-script-template)

# [Systemd](https://www.freedesktop.org/wiki/Software/systemd/)
- https://github.com/systemd/systemd
- `systemd`
- `systemctl`
- https://www.freedesktop.org/software/systemd/

# [chkconfig](https://git.fedorahosted.org/git/chkconfig.git)- maintain the /etc/rc.d hierarchy
- `chkconfig` - updates and queries runlevel information for system services
- `ntsysv` - curses GUI to configure runlevels and system services

# List services
```
chkconfig                               # SysV init.d
systemctl list-unit-files               # systemd
systemctl list-dependencies [target]
```

# How to make unix service see environment variables
The problem is service strips all environment variables but TERM, PATH and LANG which is a good thing. If you are executing the script directly nothing removes the environment variables so everything works.

You don't want to rely on external environment variables because at startup the environment variable probably isn't present and your init system probably won't set it anyway.

If you still want to rely on such variables, source a file and read the variables from it, e.g. create /etc/default/servicename with the content:

VAR=value
and source it from your init script, e.g:

```bash
[ -f /etc/default/service-name ] && . /etc/default/service-name

echo "$VAR"
```

- http://stackoverflow.com/questions/958249/whats-the-difference-between-nohup-and-a-daemon


The normal location for pidfiles is /var/run. Most unices will clean this directory on boot; under Ubuntu this is achieved by /var/run an in-memory filesystem (tmpfs).

If you start your daemon from a script that's running as root, have it create a subdirectory /var/run/gmooredaemon and chown it to the daemon-running user before suing to the user and starting the daemon.
