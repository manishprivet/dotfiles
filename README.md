# Installation Instructions

## Clone the repo in your home folder

```bash
cd ~
git clone git@github.com:manishprivet/dotfiles.git ~/.dotfiles
```

## Go into the folder and run the install script

```bash
cd .dotfiles
find ~/.dotfiles -type f -iname "*.sh" -exec chmod +x {} \;
~/.dotfiles/scripts/setup.sh
```
