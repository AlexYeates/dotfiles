# ---------------------------------
# Common aliases
# ---------------------------------

alias home='cd ~'
alias dev='cd $PATH_TO_DEVELOPMENT'
alias code-dev='code $PATH_TO_DEVELOPMENT'

# ---------------------------------
# Git 
# ---------------------------------

alias g='git'
# Note: these aliases have been moved to .gitconfig

# ---------------------------------
# NPM 
# ---------------------------------

alias nr='npm run'
alias ni='npm install'
alias nid='npm install -D'
alias nip='npm install --only=prod'

# ---------------------------------
# AEM 
# ---------------------------------

alias s-build='mvn install && mvn crx:install && mvn crx:install -Dinstance.url=http://localhost:4503'

