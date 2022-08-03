export EDITOR='vim'

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

export NVM_DIR="$HOME/.nvm"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/gems/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rustup/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export ANDROID_HOME=$HOME/Android/Sdk
export GEM_HOME="$HOME/gems"
export PATH=$HOME/.config/rofi/bin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
eval "$(starship init zsh)"

# source ~/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/.config/zsh/plugins/completion.zsh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/plugins/history_search.zsh
source $HOME/.config/zsh/aliases/aliasrc
#source $ZSH/oh-my-zsh.sh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
 zinit light-mode for \
     zdharma-continuum/zinit-annex-rust \
     zdharma-continuum/zinit-annex-readurl \
     zdharma-continuum/zinit-annex-patch-dl \
     zdharma-continuum/zinit-annex-bin-gem-node \
     zsh-users/zsh-autosuggestions \
     zdharma-continuum/fast-syntax-highlighting \
     zdharma-continuum/history-search-multi-word \

# Load starship theme

zinit light starship/starship

zinit ice from"gh-r" as"program"
zinit light junegunn/fzf

zinit ice as"program" pick"$ZPFX/bin/git-*" make"PREFIX=$ZPFX"
zinit light tj/git-extras

zinit ice wait"2" lucid from"gh-r" as"program" mv"exa* -> exa"
zinit light ogham/exa

# diff-so-fancy
zinit ice wait"2" lucid as"program" pick"bin/git-dsf"
zinit load zdharma-continuum/zsh-diff-so-fancy

zinit ice wait"1" lucid
zinit load b4b4r07/enhancd
source /home/gabriel/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
