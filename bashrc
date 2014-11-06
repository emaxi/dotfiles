[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

. ~/bin/dotfiles/bash/env
. ~/bin/dotfiles/bash/config
. ~/bin/dotfiles/bash/aliases
. ~/bin/dotfiles/bash/colors
. ~/bin/dotfiles/bash/functions
#. ~/bin/dotfiles/bash/z.sh
. ~/bin/dotfiles/bash/bash_completion_tmux.sh
. ~/bin/dotfiles/git/git-completion.bash


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
