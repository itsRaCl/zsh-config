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
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-completions

antigen theme aussiegeek

antigen apply
fpath+=~/.zfunc

# Created by `pipx` on 2023-12-31 18:58:49
export PATH="$PATH:/home/racl/.local/bin"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/racl/tmp/google-cloud-sdk/path.zsh.inc' ]; then . '/home/racl/tmp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/racl/tmp/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/racl/tmp/google-cloud-sdk/completion.zsh.inc'; fi

bindkey -v
