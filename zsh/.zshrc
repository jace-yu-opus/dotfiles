export PATH="/usr/local/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# oh-my-zsh plugins
source ~/.oh-my-zsh/lib/directories.zsh
source ~/.oh-my-zsh/lib/git.zsh
source ~/.oh-my-zsh/plugins/git/git.plugin.zsh
source ~/.oh-my-zsh/plugins/z/z.plugin.zsh

source ~/.non_public_commands.sh
