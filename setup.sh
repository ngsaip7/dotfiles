# download and install oh-my-zsh
# If already installed it won't do anything
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# remove .zshrc from root directory
# symblink .zshrc in dotfiles directory to root folder
rm ~/.zshrc
sh -c "$(ln -sv ~/workspace/dotfiles/.zshrc ~)"
