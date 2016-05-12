- `gist` package on ArchLinux
- `gist -l AlexYursha` - list all gists for a user

Gists can be cloned like regular git repos.

# GitHub API
- https://api.github.com/orgs/<org-name>/repos

# Clone all repos for an organization
- https://gist.github.com/caniszczyk/3856584#file-clone-all-twitter-github-repos-sh
- `curl -s https://api.github.com/orgs/twitter/repos?per_page=200 | ruby -rubygems -e 'require "json"; JSON.load(STDIN.read).each { |repo| %x[git clone #{repo["ssh_url"]} ]}'`
- `curl -u [[USERNAME]] -s https://api.github.com/orgs/[[ORGANIZATION]]/repos?per_page=200 | ruby -rubygems -e 'require "json"; JSON.load(STDIN.read).each { |repo| %x[git clone #{repo["ssh_url"]} ]}'`
- `curl -s https://api.github.com/orgs/twitter/repos\?per_page\=200 | perl -ne 'print "$1\n" if (/"ssh_url": "([^"]+)/)' | xargs -n 1 git clone`
- [Gitim](https://github.com/muhasturk/gitim) - Clone all of your Github repositories, just single command from your terminal.

# Clone all repos for a user
- `curl -u [[USERNAME]] -s https://api.github.com/users/[[USERNAME]]/repos?per_page=200 | ruby -rubygems -e 'require "json"; JSON.load(STDIN.read).each { |repo| %x[git clone #{repo["ssh_url"]} ]}'`

# Famous accounts
- https://github.com/apple
- https://github.com/google
- https://github.com/facebook
- https://github.com/twitter
- https://github.com/oracle
- https://github.com/aws
- https://github.com/ibm
