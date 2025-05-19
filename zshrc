export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8
export ANTIGEN_LOG=/home/racl/antigen.log

source ~/.config/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-completions

antigen theme aussiegeek

antigen apply

fpath+=~/.zfunc

# Created by `pipx` on 2023-12-31 18:58:49
export PATH="$PATH:/home/racl/.local/bin"

eval "$(zoxide init zsh)"

bindkey -v

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/racl/tmp/google-cloud-sdk/path.zsh.inc' ]; then . '/home/racl/tmp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/racl/tmp/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/racl/tmp/google-cloud-sdk/completion.zsh.inc'; fi


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/racl/.opam/opam-init/init.zsh' ]] || source '/home/racl/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init -)"
