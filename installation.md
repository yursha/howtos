A software distribution is a file system directory. The installation process is as follows:
- Copy the directory into your file system.
- Set up $DISTRO_HOME environment variable to point to the directory.
- Add $DISTRO_HOME/bin to your $PATH

Then when you call commands then know where to load libs from by looking into the evironment variables.

Golang also looks into $GOPATH where all of your local projects source code and target artifacts should live.
