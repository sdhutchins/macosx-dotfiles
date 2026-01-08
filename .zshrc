# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/.local/bin:$HOME/bin

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ----------------------
# Navigation Aliases
# ----------------------
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias home='cd $HOME'
alias userdir='cd /Users/shutchens'

# ----------------------
# Git Aliases
# ----------------------
alias gbranches='git branch --list'
alias gfetch='git fetch --all'
alias gstat='git status'
alias gcom='git commit -m'

# ----------------------
# File Management
# ----------------------
alias dir='ls -lah'
alias mkdirv='mkdir -pvm 2770'
alias mkdirme='mkdir -pvm 0700'
alias rmtar='rm -rf *.tar.gz'
alias mvtar='mv *.tar.gz ~/archive/'

# ----------------------
# SSH & Server
# ----------------------
alias sshcheaha='ssh shutchin@cheaha.rc.uab.edu -p 22 -X'

# ----------------------
# History & Commands
# ----------------------
alias h='history'
alias reload='source ~/.zshrc'

# ----------------------
# Date and Time
# ----------------------
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

# ----------------------
# Download
# ----------------------
alias wget='wget -c'

# ----------------------
# Text Manipulation
# ----------------------
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias untar='tar -zxvf' # Unzip and extract tar.gz files
alias df='df -h'        # Disk usage in human-readable format
alias du='du -ch'       # Directory sizes and total directory size

# ----------------------
# System Operations
# ----------------------
alias showhidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

# ----------------------
# File Operations
# ----------------------
alias open-folder='open -R .' # Reveal the current directory in Finder
alias desktop='cd ~/Desktop'
alias docs='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias gitrepos='cd ~/Documents/Git-Repos'
alias open-rstudio='open -a RStudio *.Rproj'

export PATH="/usr/local/opt/ruby/bin:$PATH"

alias addpygitignore='curl -o .gitignore https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore'export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias addrgitignore='curl -o .gitignore https://raw.githubusercontent.com/github/gitignore/main/R.gitignore'export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias mkvenv='python -m venv'

export PATH=$PATH:/Users/shutchens/Library/Python/3.8/bin
export PATH=$PATH:/Users/shutchens/Library/Python/3.9/bin
export PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/shutchens/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/shutchens/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/shutchens/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/shutchens/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

