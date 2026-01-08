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


## ALIASES ##
alias h='history'
alias dir='ls -lah'
alias home='cd $HOME'
alias gbranches='git branch --list'
alias gfetch='git fetch --all'
alias gstat='git status'
alias gcom='git commit -m'
alias mkdirv='mkdir -pvm 2770'
alias mkdirme='mkdir -pvm 0700'
alias rmtar='rm -rf *.tar.gz'
alias ls='ls --color=auto'
alias ll='ls -la'
alias l.='ls -d .* --color=auto'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias wget='wget -c'
alias reload='source $HOME/.profile'
alias mkvenv='python -m venv'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dir_colors && eval "$(dircolors -b ~/.dir_colors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/shutchens/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/shutchens/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/shutchens/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/shutchens/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH=$PATH:/Users/shutchens/Library/Python/3.8/bin
export PATH=$PATH:/Users/shutchens/Library/Python/3.9/bin
export PATH="/usr/local/opt/ruby/bin:$PATH"