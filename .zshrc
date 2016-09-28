# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#autoload -U compinit promptinit
autoload -U compinit
compinit
#promptinit

setopt completealiases

zstyle ':completion:*' menu select

#bindkey -e # Enable this for emacs line editing
bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# ZYL custom keybindings
bindkey "^[p" history-search-backward
bindkey "^[n" history-search-forward

bindkey "^r" history-incremental-pattern-search-backward
bindkey "^?" backward-delete-char

bindkey "^a" beginning-of-line
bindkey "^e" end-of-line

autoload -U colors && colors

# This will set the default prompt to the walters theme
#prompt adam2


#PROMPT=$'%B%F{cyan}%n %b%f%F{cyan}<>%f> '
PROMPT=$'%F{blue}%n %f%F{blue}<%~>%f%B>%b '

#RPROMPT='%F{green}%~ on %M at (%T %W)%f'
#Date Prompt

#RPROMPT='%F{green}%~ [%M (%T)]%f'
#RPROMPT='%F{green}%~ [%M %T]%f'
#RPROMPT='%F{green} [%M %T]%f'


# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
    #xterm-color) color_prompt=yes;;
#esac
color_prompt=yes
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

#if [ -n "$force_color_prompt" ]; then
    #if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	## We have color support; assume it's compliant with Ecma-48
	## (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	## a case would tend to support setf rather than setaf.)
	#color_prompt=yes
    #else
	#color_prompt=
    #fi
#fi

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

## set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/.local/bin" ] ; then
    #PATH="$HOME/.local/bin:$PATH"
#fi

## set PATH so it includes the script folder
#if [ -d "$HOME/.oosoom/scripts" ] ; then
    #PATH="$HOME/.oosoom/scripts:$PATH"
#fi

# Fix ^s
stty stop ''

# Use keychain to save ssh keys.
#alias ssh='eval $(/usr/bin/keychain --eval --agents ssh -Q --quiet ~/.ssh/id_rsa) && ssh'
#alias rsync='eval $(/usr/bin/keychain --eval --agents ssh -Q --quiet ~/.ssh/id_rsa) && rsync'
alias fm='dbus-launch pcmanfm'
#alias ssh='envoy-exec ssh'
#alias git='envoy-exec git'
#alias rsync='envoy-exec rsync'

#export GEM_HOME=~/.gem/ruby/1.9.3

#gibo=/usr/share/zsh/site-functions/_gibo
gibo=/etc/gibo/gibo-completion.zsh
if [ -e $gibo ]; then
        . $gibo
fi

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export WORKON_HOME=$HOME/.virtualenvs

source /usr/bin/virtualenvwrapper.sh

#source /usr/share/cdargs/cdargs-bash.sh
source ~/.cdargs-zsh.sh

source ~/.rvm/scripts/rvm

envoy -t ssh-agent
source <(envoy -p)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
