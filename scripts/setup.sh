./symlink.sh
./aptinstall.sh
./programs.sh
./desktop.sh

# Get all upgrades
sudo apt upgrade -y

# Restore Gnome settings
dconf load / < .dotfiles/gnome.conf