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

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# gibo {{{=$HOME/gibo:$PATH
# }}}

# # nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# pyenv && virtualenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# pipenv
# プロジェクト直下に仮想環境を作成
export PIPENV_VENV_IN_PROJECT=1

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Vagrat
export VAGRANT_HOME=/mnt/HDD01/.vagrant.d=$VAGRANT_HOME:$PATH

# # Add path to yarn global
# export PATH="$PATH:`yarn global bin`"

# neovim
export XDG_CONFIG_HOME=~/.config
export TERM=xterm

# rust="$HOME/.cargo/bin:$PATH"
# Initialization for FDK command line tools.Fri May 25 16:21:29 2018
FDK_EXE="/home/yuro/bin/FDK/Tools/linux"
PATH=${PATH}:"/home/yuro/bin/FDK/Tools/linux"
export PATH
export FDK_EXE

export PATH="$HOME/.cargo/bin:$PATH"

# linuxbrew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"

# goenv
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH

# golagn
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# rust
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# java
export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64
export JUNIT_HOME=~/junit

# direnv
eval "$(direnv hook bash)"
eval "$(goenv init -)"
