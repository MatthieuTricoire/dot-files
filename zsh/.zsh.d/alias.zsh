alias c="clear"
alias sz="source ~/.zshrc; echo '~/.zshrc sourced'"
alias vz="vi ~/.zshrc"

# ---- Eza (better ls) -----
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias ll="eza -alh --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias tree="eza --tree --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"


# # ---- Nvim config switcher -----
alias nvim-lazy="NVIM_APPNAME=LazyVim nvim"
alias nvim-astro="NVIM_APPNAME=AstroNvim nvim"


# ---- Replace cd with zoxide -----
alias cd="z"

