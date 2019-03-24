[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

. ~/.dotfiles/bash/config
. ~/.dotfiles/bash/colors
. ~/.dotfiles/bash/functions
. ~/.dotfiles/bash/z.sh
. ~/.dotfiles/bash/bash_completion_tmux.sh
. ~/.dotfiles/git/git-completion.bash

[[ -f ~/.aliases ]] && source ~/.aliases

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
