if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/gabriel/.oh-my-zsh"
export EDITOR='vim'
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
)

export PATH="$PATH:$HOME/.rvm/bin"
export NVM_DIR="$HOME/.nvm"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/gems/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rustup/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
export ANDROID_HOME=$HOME/Android/Sdk
export GEM_HOME="$HOME/gems"
export PATH=$HOME/.config/rofi/bin:$PATH

### Added by Zplugin's installer

source "$HOME/.zplugin/bin/zplugin.zsh"
zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk
# Install Ruby Gems to ~/gems


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/.config/zsh/plugins/completion.zsh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/plugins/history_search.zsh
source $HOME/.config/zsh/aliases/aliasrc
source $ZSH/oh-my-zsh.sh
source ~/.rvm/scripts/rvm

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh