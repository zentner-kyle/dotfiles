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

# set PATH so it includes the script folder
if [ -d "$HOME/.oosoom/scripts" ] ; then
    PATH="$HOME/.oosoom/scripts:$PATH"
fi

# set PATH so it includes the Ruby gem folder
if [ -d "$HOME/.gem/ruby/1.9.1/bin" ] ; then
    PATH="$HOME/.gem/ruby/1.9.1/bin:$PATH"
fi

# set PATH so it includes the Ruby gem folder
if [ -d "$HOME/.gem/ruby/1.9.3/bin" ] ; then
    PATH="$HOME/.gem/ruby/1.9.3/bin:$PATH"
fi

# set PATH so it includes the Ruby gem folder
if [ -d "$HOME/.gem/ruby/2.0.0/bin" ] ; then
    PATH="$HOME/.gem/ruby/2.0.0/bin:$PATH"
fi

# set PATH so it includes the Ruby gem folder
if [ -d "$HOME/.gem/ruby/2.1.0/bin" ] ; then
    PATH="$HOME/.gem/ruby/2.1.0/bin:$PATH"
fi

# set PATH so it includes the Haskell cabal folder
if [ -d "$HOME/.cabal/bin" ] ; then
    PATH="$HOME/.cabal/bin:$PATH"
fi

# set PATH so it includes the Project Tenshi Toolchains
if [ -d "$HOME/Projects/Tenshi/arm-toolchain/bin" ] ; then
    PATH="$HOME/Projects/Tenshi/arm-toolchain/bin:$PATH"
fi

# set PATH so it includes the Project Tenshi Toolchains
if [ -d "$HOME/Projects/Tenshi/avr-toolchain/bin" ] ; then
    PATH="$HOME/Projects/Tenshi/avr-toolchain/bin:$PATH"
fi


# set PATH so it includes the npm bin folder
if [ -d "$HOME/node_modules/.bin" ] ; then
    PATH="$HOME/node_modules/.bin:$PATH"
fi

# set PATH so it includes the apache-spark bin folder
if [ -d "/usr/share/apache-spark/bin" ] ; then
    PATH="/usr/share/apache-spark/bin:$PATH"
fi


export EDITOR=vim
export VISUAL="/usr/bin/vim -p -X"

unset SSH_ASKPASS

if [ x$XAUTHORITY != x ]; then
	wmname LG3D
fi

#eval $(keychain --eval --quick --quiet --nogui ~/.ssh/id_rsa)
#eval $(keychain --eval --quick --quiet ~/.ssh/id_rsa)
#eval $(ssh-agent -t 120)

#export KDEDIRS=$HOME/kde4/inst:$KDEDIRS
#export PATH=$HOME/kde4/inst/bin:$PATH
