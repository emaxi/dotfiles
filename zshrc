# Path to your oh-my-zsh installation.
export ZSH=/Users/maxi/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys" # agnoster, ys, rkj, random

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew bundler common-aliases compleat extract gem git git-flow osx rake ruby web-search zsh-syntax-highlighting z zeus)

# User configuration

export PATH="/usr/local/bin:/Users/maxi/.rbenv/shims:/Users/maxi/bin:/usr/local/heroku/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ez='vim ~/.zshrc'
alias sz='source ~/.zshrc'
alias c='clear'
alias ..='cd ..'

alias g="git status"
alias gc="git commit"
alias gr="git reset"
alias grd="git reset diff"
alias gl="git log"
alias gaa="git add -A"
alias ga="git add ."
alias gdc="git diff"
alias gdc="git diff --cached"
alias gco="git checkout"
alias gb="git branch"

alias b="bundle install"

#
# Functions

function trash() { mv $1 ~/.Trash }
function mkcd() { mkdir $1 && cd $1 }
function mkgit() { mkdir $1 && cd $1 && git init }
function mkclone() { git clone $1 && cd $( echo "$1" | sed -E 's|.*/(.*).git$|\1|' ) }

__git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf "%s" "${b##refs/heads/}";
    fi
}
pull() {
	  git pull origin $(__git_ps1)
}
push() {
	  git push origin $(__git_ps1)
}

# Load .env file into shell session for config vars
function envup {
  if [ -f .env ]; then
    export `cat .env`
  else
    return 1
  fi
}

copy-last-command() {
  history | tail -1 | cut -c 8- | pbcopy
}

export DISABLE_AUTO_UPDATE="true" # Don't let oh-my-zsh auto update

