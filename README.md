Tobias Preuss dotfiles
======================

A collection of configuration files to setup various systems the way I like it.

Installation
------------

First, grand execute permissions to the included shell script.
Then run the script to install the configuration files.

    chmod +x INSTALL.sh
    ./INSTALL.sh


The install script creates a soft link for each configuration file using 
the following command.

    ln -sv ~/dotfiles/gitconfig ~/.gitconfig
