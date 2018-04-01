# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# gibo {{{
export PATH=$HOME/gibo:$PATH
# }}}

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# pyenv && virtualenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Vagrat
export VAGRANT_HOME=/mnt/HDD01/.vagrant.d
export PATH=$VAGRANT_HOME:$PATH

# Add path to yarn global
export PATH="$PATH:`yarn global bin`"

# neovim
export XDG_CONFIG_HOME=~/.config

export PATH="$HOME/.cargo/bin:$PATH"
