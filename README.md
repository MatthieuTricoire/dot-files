# Dotfiles - Matthieu

This folder contains the various utilities / configuration files I use on a daily basis: iTerm2, zsh shell, nvim(Lazyvim).

Symbolic links to the various system locations are managed using [Stow](https://www.gnu.org/software/stow/).

## Installation

```
git clone https://github.com/MatthieuTricoire/dot-files ~/.dotfiles
cd $HOME/.dotfiles
bash install.sh
```

### Tmux plugins

To install plugins, run the command : `prefix + I`  
To update plugins, run the command : `prefix + U`

## Stow usage

Go to `~/.dotfiles` directory.  
To create a symbolic link : `stow folderName`
