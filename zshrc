export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8

source ~/.config/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme aussiegeek

antigen apply

# Created by `pipx` on 2023-12-31 18:58:49
export PATH="$PATH:/home/racl/.local/bin"

autoload -U bashcompinit
bashcompinit

eval "$(register-python-argcomplete pipx)"
