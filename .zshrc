# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.local/bin:$HOME/.config/composer/vendor/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias reloadzsh="source ~/.zshrc"
alias art="php artisan"
alias mixwp="npm run watch --watch-poll"
alias clr="clear"
alias i3config="nano ~/.config/i3/config"
alias i3stconfig="nano ~/.config/i3status/config"
alias alaconf="nano ~/.config/alacritty/alacritty.yml"
alias polyconf="nano ~/.config/polybar/config"
alias polysh="nano ~/.config/polybar/launch.sh"

# Git Aliases
alias gst="git status"
alias ga="git add"
alias gA="git add -A"
alias gcm="git commit -m"
alias gps="git push"
alias gpsf="git push --force-with-lease"
alias gpl="git pull --rebase"
alias gbr="git branch"
alias gck"git checkout"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 

fpath+=${ZDOTDIR:-~}/.zsh_functions

# Dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
