# Path to your oh-my-zsh installation.
export ZSH="/Users/AY784892/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

export PATH="$HOME/bin:$PATH"

# Source this first since it contains the locations of directories needed by funcitons
source .exports
source .aliases

# Oh My Zsh plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh
