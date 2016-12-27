# Resources
- [rfc822 Standard for the format of APRA Internet Text Messages](https://tools.ietf.org/html/rfc822)
- [rfc2822 Internet Message Format](https://tools.ietf.org/html/rfc2822)
- [rfc5322 Internet Message Format](https://tools.ietf.org/html/rfc5322)
- [rfc1123 Requirement for Internet Hosts - Application and Support](https://tools.ietf.org/html/rfc1123)
- [rfc821 SMPT](https://tools.ietf.org/html/rfc821)
- [rfc974 Mail Routing and the Domain System](https://tools.ietf.org/html/rfc974)
- [rfc1869 SMPT Service Extensions (esmtp)](https://tools.ietf.org/html/rfc1869)
- [rfc2821 SMPT](https://tools.ietf.org/html/rfc2821)
- [rfc5321 SMPT](https://tools.ietf.org/html/rfc5321)
- [rfc1652 SMPT Service Extensions (esmtp) for 8bit MIME transport](https://tools.ietf.org/html/rfc1652)
- [rfc6152 SMPT Service Extensions (esmtp) for 8bit MIME transport](https://tools.ietf.org/html/rfc6152)
- [How to send email from command line](http://tecadmin.net/ways-to-send-email-from-linux-command-line/#)
- [Gmail SMTP settings](https://support.google.com/a/answer/176600?hl=en)
- [Gmail sign-in troubleshooting](https://support.google.com/mail/answer/14257)


# Next: Google tmux tutorial and setup mail accounts with Mutt
- http://www.terminally-incoherent.com/blog/2012/07/16/email-sucks-why-are-there-no-modern-command-line-clients/
- https://news.ycombinator.com/item?id=567667
- https://www.maketecheasier.com/send-email-from-the-command-line/
- http://linuxpoison.blogspot.com/2008/11/console-based-e-mail-clients.html

# Tools
- [Gmail Help Center](https://support.google.com/mail)

Mailx and gmail don't work together out-of-the-box. We need to do troubleshooting.
Gmail returns `530 Authentication Required.`.

See:
- [SO 530 questions](http://stackoverflow.com/questions/17227532/gmail-530-5-5-1-authentication-required-learn-more-at)
- [SO 530 question (1)](http://unix.stackexchange.com/questions/219822/mailx-cannot-send-mail-through-gmail-any-more)
- [Allowing less secure apps to access your account](https://support.google.com/accounts/answer/6010255?hl=en)
- 2-factor authentication may be a problem
- [Link to allow less secure apps](https://www.google.com/settings/security/lesssecureapps)
- [SO Difference between mail and mailx](http://unix.stackexchange.com/questions/89530/difference-between-mail-and-mailx?rq=1)
- [SO how to configure mailx to support gmail](http://unix.stackexchange.com/questions/35261/how-to-configure-mailx-to-support-gmail?rq=1)
- [Gmail can't sign in to my email app](https://support.google.com/mail/answer/14257)
- [How to configure gmail and mailx](http://www.systutorials.com/1411/sending-email-from-mailx-command-in-linux-using-gmails-smtp/)

# Mailgun
- https://mailgun.com/accounts/free/signup_success

# Mutt
- http://www.mutt.org/
- https://dev.mutt.org/trac/
- http://lifehacker.com/5574557/how-to-use-the-fast-and-powerful-mutt-email-client-with-gmail
POP3, IMAP

# Alpine
- http://www.washington.edu/alpine/
- http://www.washington.edu/alpine/acquire/
IMAP, LDAP, NNTP, POP, SMPT

# Re-alpine
- http://www.linuxfromscratch.org/blfs/view/svn/basicnet/re-alpine.html
- https://sourceforge.net/projects/re-alpine/
- https://github.com/sergi/re-alpine

# Sup
- http://supmua.org/
- https://github.com/sup-heliotrope/sup

# Notmuch
- https://notmuchmail.org/
- https://notmuchmail.org/releases/

# Rmail
- Rmail, run within Emacs, is pretty great as well. Hit 'h' to view messages as a list, use the 'epa' module to encrypt and decrypt with GPG, and all the modern conveniences of Emacs. I switched to it from mutt about a year ago and have been really happy with it.

# [Heirloom mailx](http://heirloom.sourceforge.net/mailx.html)
- POSIX compatible command to send and receive email.
- provides `mail` command. Further reading: `man mail`, `man esmtprc`, `man esmtp`.

# [sendmail](http://www.sendmail.com/sm/open_source/)
- [SendMail docs](http://www.sendmail.com/sm/open_source/docs/)
- [Sendmail on wikipedia](https://en.wikipedia.org/wiki/Sendmail)
- http://www.sendmail.org/~gshapiro/
- `sendmail` - mail transfer agent (MTA)
- `makemap` - create database maps for sendmail
- `sendmail-cf` - package to reconfigure Sendmail (on Fedora)

# [esmtp](http://esmtp.sourceforge.net/) - no longer being unmaintained
User configurable send-only Mail Transfer Agent (MTA)
- `sendmail` - soft link to `esmtp-wrapper`
- `esmtp` - libESMTP to Sendmail compatibility interface

# `postfix`

# `exim`

# `ssmtp`
