# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/manishprivet/.oh-my-zsh"

# Path to Flutter
export PATH="$PATH:/home/manishprivet/development/flutter/bin"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dracula"
# ZSH_THEME="jispwoso"
SPACESHIP_TIME_SHOW=true
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_BATTERY_SHOW=always

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git npm docker vscode zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
bindkey '^ ' autosuggest-accept

function gitp() {
    git add .
    git cz -s
    git push -u origin HEAD
}

function compress_to_webp() {
    squoosh-cli --webp '{"quality":70,"target_size":0,"target_PSNR":0,"method":5,"sns_strength":50,"filter_strength":60,"filter_sharpness":0,"filter_type":1,"partitions":0,"segments":4,"pass":1,"show_compressed":0,"preprocessing":0,"autofilter":0,"partition_limit":0,"alpha_compression":1,"alpha_filtering":1,"alpha_quality":100,"lossless":0,"exact":0,"image_hint":0,"emulate_jpeg_size":0,"thread_level":0,"low_memory":0,"near_lossless":100,"use_delta_palette":0,"use_sharp_yuv":0}' "$*"
}

function run-update() {
    sudo apt update && sudo apt upgrade
}

function update_fork() {
    git fetch upstream && git merge upstream/master master
}

export PATH=$PATH:/usr/local/go/bin
export LANG=en_US.utf8
export LC_CTYPE="en_US.utf8"
export LC_NUMERIC="en_US.utf8"
export LC_TIME="en_US.utf8"
export LC_COLLATE="en_US.utf8"
export LC_MONETARY="en_US.utf8"
export LC_MESSAGES="en_US.utf8"
export LC_PAPER="en_US.utf8"
export LC_NAME="en_US.utf8"
export LC_ADDRESS="en_US.utf8"
export LC_TELEPHONE="en_US.utf8"
export LC_MEASUREMENT="en_US.utf8"
export LC_IDENTIFICATION="en_US.utf8"
export LC_ALL=en_US.utf8

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/manishprivet/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/manishprivet/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/manishprivet/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/manishprivet/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="/home/manishprivet/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=$PATH:$HOME/.cargo/bin

export DENO_INSTALL="/home/manishprivet/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

fpath=($fpath "/home/manishprivet/.zfunctions")


source ~/.zplug/init.zsh
