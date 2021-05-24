echo "Deleting Old Configuration Files"
rm -f ~/.zshrc
rm -f ~/.gitconfig
rm -rf ~/.themes

echo "Creating Symlinks for existing config files"
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.themes ~/
