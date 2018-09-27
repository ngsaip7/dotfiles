# download and install oh-my-zsh
# If already installed it won't do anything
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# rename .zshrc from root directory
# symblink .zshrc in dotfiles directory to root folder
# mv ~/.zshrc ~/.old_zshrc
sh -c "$(ln -sv ~/workspace/dotfiles/.zshrc ~)"

# rename .vimrc from root directory
# symlink .vimrc in dotfiles to root folder
sh -c "$(ln -sv ~/workspace/dotfiles/.vimrc ~)"

# symlink .zsh_profile in dotfiles to root folder
sh -c "$(ln -sv ~/workspace/dotfiles/.zsh_profile ~)"

# symlink .aliases in dotfiles to root folder
sh -c "$(ln -sv ~/workspace/dotfiles/.aliases ~)"

source ~/.zshrc
