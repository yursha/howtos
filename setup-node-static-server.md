# Set up NVM and Node.js

Use `nvm` to manage node versions and install node.js. Go to [NVM website](https://github.com/creationix/nvm) to find out the latest command to download and install NVM as it changes over time.

Don't forget to `source ~/.bashrc`, once `nvm` is installed.

Check that installation was successful with `command -v nvm`. It should output `nvm`.

Install node with:
```
nvm install node
nvm use node
```

# Create a Node.js project
```
npm init
npm install express --save # for a web MVC framework
npm install serve-static --save # for a static web server
```
