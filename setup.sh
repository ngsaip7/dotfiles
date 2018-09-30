# download and install oh-my-zsh
# If already installed it won't do anything
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# installing rvm & stable ruby version
curl -sSL https://get.rvm.io | bash -s stable --ruby

source ~/.zshrc
