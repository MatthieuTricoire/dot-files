
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## NVM
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# You can change the theme with another one from https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="powerlevel10k/powerlevel10k"

CASE_SENSITIVE="false"
ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 13



## HISTORY
HISTSIZE=50000                # How many lines of history to keep in memory
HISTFILE=~/.zsh_history       # Where to save histoiry to disk
SAVEHIST=50000                # Number of histoiry entries to save to disk


# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
          git
          gitfast
          zsh-autosuggestions
          zsh-syntax-highlighting
          ohmyzsh-full-autoupdate
          you-should-use
          zoxide
          colored-man-pages
          )

# Actually load Oh-my-zsh
source $ZSH/oh-my-zsh.sh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Load custom configs
typeset -a sources

sources+="$ZSH_CONFIG_DIR/alias.zsh"
sources+="$ZSH_CONFIG_DIR/exports.zsh"
sources+="$ZSH_CONFIG_DIR/functions.zsh"
sources+="$ZSH_CONFIG_DIR/private.zsh"

for file in $sources[@]; do
  if [[-a $file]]; then
    source $file
  fi
done

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# override with local settings
source ~/.zshrc.local

PATH=~/.console-ninja/.bin:$PATH
