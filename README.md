# Tobias Preuss dotfiles

A collection of configuration files to setup various systems the way I like it.


## Installation

First, grant execute permissions to the included shell script.
Then run the script to install the configuration files.

```bash
$ chmod +x INSTALL.sh
$ ./INSTALL.sh
```

The install script creates a soft link for each configuration file using 
the following command.

```bash
$ ln -sv ~/dotfiles/gitconfig ~/.gitconfig
```
