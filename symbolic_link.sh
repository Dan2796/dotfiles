#!/bin/zsh
# Symbolic link all the other configs - run from within dotfiles folder

# Vim
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc 
ln -sf ~/dotfiles/vim/init.vim ~/.config/nvim/init.vim 

# Zsh
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc 
ln -sf ~/dotfiles/zsh/zshenv ~/.zshenv

# R
ln -sf ~/dotfiles/Rprofile ~/.Rprofile

# Picom
ln -sf ~/dotfiles/picom.conf ~/.config/picom.conf 

# Newsboat
ln -sf ~/dotfiles/newsboat/config ~/.newsboat/config
ln -sf ~/dotfiles/newsboat/urls ~/.newsboat/urls

# Xprofile
ln -sf ~/dotfiles/xprofile ~/.xprofile

# Xmodmap
ln -sf ~/dotfiles/xmod/Xmodmap ~/.Xmodmap

# Zathura
ln -sf ~/dotfiles/zathurarc ~/.config/zathura/zathurarc

# Ranger
ln -sf ~/dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
ln -sf ~/dotfiles/ranger/rifle.conf ~/.config/ranger/rifle.conf

# Tmux
ln -sf ~/dotfiles/tmux.conf ~/.config/tmux/tmux.conf

