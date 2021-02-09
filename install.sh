echo "Deleting Old Configuration Files"
rm -f ~/.zshrc
rm -f ~/.gitconfig

echo "Creating Symlinks for existing config files"
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.zshrc ~/.zshrc

echo "Installing packages"
chmod +x ~/.dotfiles/package_install_scripts.sh
~/.dotfiles/package_install_scripts.sh
