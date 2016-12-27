# RTC Clock
- real-time clock (RTC) - hardware clock.

# System clock
- system clock (in kernel) - software clock

# APIs in high level languages.
- OS knows about the configured time zone, and whether DST is in effect. Higher level languages just query OS about those values.

# Concepts

- epoch - 1 January 1970
- timestamp - seconds since epoch
- Network Time Protocol (NTP)
- Precision Time Protocol (PTP)

# Utilities
- `hwclock` (util-linux)
- `date` (coreutils)
- `timedatectl` (systemd)
- `chronyd` (chrony)
- `ntpd` (ntp)
- `ntpdate` (ntpdate)

Changes to the status of chrony or ntpd will not be immediately noticed by timedatectl. If changes to the configuration or status of these tools is made, enter the following command:

```
systemctl restart systemd-timedated.services
```

# Set date
```
date --set
hwclock --systohc
timedatectl set-time '2013-06-02 23:26:00' # effect like 'date --set' and 'hwclock --systohc' together.
```
