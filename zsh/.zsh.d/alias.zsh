# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias c="clear"
alias sz="source ~/.zshrc; echo '~/.zshrc sourced'"
alias vz="vi ~/.zshrc"

alias ls='exa'
alias ll='exa -alh'
alias tree='exa --tree'



## Add nvim config switcher
alias nvim-lazy="NVIM_APPNAME=lazyvim nvim"
alias nvim-lazy="NVIM_APPNAME=astronvim nvim"
alias nvim-lazy="NVIM_APPNAME=matthnvim nvim"
#shortcut tolazyvim
bindkey -s ^a "nvims\n"

