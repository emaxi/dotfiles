export MY_RUBY_HOME=/Users/maxjgon/.rbenv/shims/ruby

## Aliases
# Directories
alias cd6d='cd ~/dreepi/double6deals'
alias cdd='cd ~/dreepi/dmn'
alias cdo='cd ~/dreepi/ofertona'
alias cda='cd ~/dreepi/alcupone'
alias cdmv='cd ~/projects/mosca_verde'

alias a="autotest"

alias b="bundle"
alias bu="b update"
alias be="b exec"
alias compile="be rake assets:precompile"

alias bi='bundle install --path .bundle/gems --binstubs .bundle/bin'

function newdb {
  be rake db:drop:all
  be rake db:create:all
  be rake db:setup
  be rake db:test:prepare
}

# Git
alias g="git status"
alias ga="git add"
alias gaa="git add ."
alias gd="git diff"
alias gdc="git diff --cached"
alias gc="git commit"
alias gl='git log --graph --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset"'
alias gll= "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)%Creset' --abbrev-commit"
alias gr='git reset'
alias gco='git checkout'

# DB
alias up_mysql='/usr/local/Cellar/mysql/5.5.10/bin/mysqld_safe'
alias up_postgres='/usr/local/Cellar/postgresql/9.0.3/bin/postgres -D /usr/local/var/postgres -r /usr/local/var/postgres/server.log'

#General
alias c="clear"
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias v="vi"

# Useful commands
alias bundle_bench='bundle exec ruby -e "$(curl -fsSL https://gist.github.com/raw/2588879/benchmark.rb)" | sort -n -k4'

# Scripts
gg(){ lynx -dump http://www.google.com/search?q=$@ | sed '/[0-9]*\..http:\/\/www.google.com\/search?q=related:/!d;s/...[0-9]*\..http:\/\/www.google.com\/search?q=related://;s/&hl=//';}
