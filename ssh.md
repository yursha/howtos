- [OpenSSH](http://www.openssh.com/)
- [OpenSSH portable](http://www.openssh.com/portable.html) (For operating systems other than OpenBSD)
Uses LibreSSL

## Clients
- package `openssh-clients` on Fedora 23
    + `sftp`
    + `slogin`
    + `scp` - remote file copy
    + `ssh` - remote login program
    + `ssh-add` - add, remove or query keys kept by authentication agent
    + `ssh-agent` - authentication agent which holds private keys in memory
    + `ssh-copy-id`
    + `ssh-keyscan`
- package `openssh` on Fedora 23
    + `ssh-keygen`

### Examples:
- `scp -i prk ayursha@remotehost.edu:file.txt /some/local/directory`

## Servers
- `sshd`
- `sftp-server`
- `ssh-agent`

## Key Management
- https://wiki.archlinux.org/index.php/SSH_keys
- `ssh-add`
- `ssh-keysign`
- `ssh-keyscan`
- `ssh-keygen`

## Other
- `slogin`
- `ssh-copy-id`

## How to create an ssh key
- https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
