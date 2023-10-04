#!/bin/zsh
# Symbolic link all the other configs - run from within dotfiles folder

# Vim
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc 
ln -sf ~/dotfiles/vim/init.vim ~/.config/nvim/init.vim 

# Zsh
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc 
ln -sf ~/dotfiles/zsh/zshenv ~/.zshenv

# R
ln -sf ~/dotfiles/R/Rprofile ~/.Rprofile
ln -sf ~/dotfiles/R/Renviron ~/.Renviron

# Zathura
ln -sf ~/dotfiles/zathurarc ~/.config/zathura/zathurarc

# Tmux
ln -sf ~/dotfiles/tmux.conf ~/.config/tmux/tmux.conf

