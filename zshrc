# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx svn rvm ruby rails brew bundler gem rake heroku mvn gradle ant adb pip python zeus npm go golang ant docker nvm npm bower colored-man-pages)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Load completions.
# Source: https://github.com/zsh-users/zsh-completions/
[[ -s "$HOME/zsh-completions/src" ]] && fpath=($HOME/zsh-completions/src $fpath)
[[ -s "/usr/local/share/zsh-completions" ]] && fpath=(/usr/local/share/zsh-completions $fpath)

# Init zsh-completions in ~/.oh-my-zsh/custom/plugins/zsh-completions
autoload -U compinit && compinit

# Useful function should be loaded first of all!
[[ -s "$HOME/dotfiles/essentials" ]] && . "$HOME/dotfiles/essentials"



# PATH
# Put /usr/local/{sbin,bin} first
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# Put homebrew first
[[ -s /usr/local/Cellar ]] && export PATH=/usr/local/Cellar:$PATH


# Load SVN extensions.
[[ -s "$HOME/dotfiles/svnextensions" ]] && . "$HOME/dotfiles/svnextensions"


# Restrict tab completion to local files.
# Should speed up the shell, hopefully. Was pretty slow on MacOS.
__git_files () {
    _wanted files expl 'local files' _files
}

# ---------------------------------------------------
for file in ~/.{functions,exports,environment}; do
    [ -r "$file" ] && source "$file"
done
unset file


# Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.rvm/bin


# Test existence of exports and load them.
[[ -s "$HOME/.exports" ]] && . "$HOME/.exports"

# Test existence of local exports and load them.
[[ -s "$HOME/.exports.local" ]] && . "$HOME/.exports.local"

# Test existence of local environment settings and load them.
[[ -s "$HOME/.environment.local" ]] && . "$HOME/.environment.local"

# Test existence of paths and load them.
[[ -s "$HOME/.paths" ]] && . "$HOME/.paths"

# Test existence of local paths and load them.
[[ -s "$HOME/.paths.local" ]] && . "$HOME/.paths.local"

# Test existence of local aliases and load them.
[[ -s "$HOME/.aliases.local" ]] && . "$HOME/.aliases.local"

# Test existence of aliases and load them.
[[ -s "$HOME/.aliases" ]] && . "$HOME/.aliases"

# Text existence of local Android aliases and load them.
[[ -s "$HOME/.android-aliases" ]] && . "$HOME/.android-aliases"

# Completion for git-flow.
[[ -s "$HOME/.git-flow-completion.zsh" ]] && . "$HOME/.git-flow-completion.zsh"

# Custom credentials.
[[ -s "$HOME/.credentials.local" ]] && . "$HOME/.credentials.local"

# Python virtualenvwrapper.
# Depends on `WORKON_HOME` being set before. See exports.
[[ -s "/usr/local/bin/virtualenvwrapper.sh" ]] && . "/usr/local/bin/virtualenvwrapper.sh"
