# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ================================================
#  Alias
# ================================================

# ls  ––––––––––––––––––––––––––––––––––––––––––––
alias ls='ls --color=auto'  # for WSL
alias la='ls -lA'

# grep –––––––––––––––––––––––––––––––––––––––––––
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# cd –––––––––––––––––––––––––––––––––––––––––––––
alias ..='cd ..'
alias ...='cd ../../'

# ================================================
#  Variables
# ================================================

# XDG ––––––––––––––––––––––––––––––––––––––––––––
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# editor –––––––––––––––––––––––––––––––––––––––––
export EDITOR=nvim
export VISUAL=nvim

# pager ––––––––––––––––––––––––––––––––––––––––––
export PAGER=less

# path  ––––––––––––––––––––––––––––––––––––––––––
export PATH="$PATH:\
~/.local/bin:\
~/go/bin:\
/usr/local/opt/node@18/bin"

## brew –––––––––––––––––––––––––––––––––––––––––––
#if type brew &>/dev/null; then
#  HOMEBREW_PREFIX="$(brew --prefix)"
#  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
#    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
#  else
#    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
#      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
#    done
#  fi
#fi
#
## Added by Amplify CLI binary installer
#export PATH="$HOME/.amplify/bin:$PATH"
#
## Android Studio
#export ANDROID_HOME=$HOME/Library/Android/sdk
#export PATH=$PATH:$ANDROID_HOME/emulator
#export PATH=$PATH:$ANDROID_HOME/platform-tools
#export PATH="/usr/local/sbin:$PATH"
