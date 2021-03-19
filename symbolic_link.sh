#!/bin/zsh
# Symbolic link all the other configs - run from within dotfiles folder

# Vim
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc 
ln -sf ~/dotfiles/vim/init.vim ~/.config/nvim/init.vim 

# Zsh
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc 

# R
ln -sf ~/dotfiles/Rprofile ~/.Rprofile

# Wallpaper
ln -sf ~/dotfiles/wallpaper_randomiser.sh ~/.config/wallpaper_randomiser.sh 

# Picom
ln -sf ~/dotfiles/picom.conf ~/.config/picom.conf 

# Newsboat
ln -sf ~/dotfiles/newsboat/config ~/.config/newsboat 

# Status bar
ln -sf ~/dotfiles/dwmStatusBar.sh ~/.config/dwmStatusBar.sh 


