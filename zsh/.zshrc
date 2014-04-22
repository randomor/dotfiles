# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="aMetheme"
#ZSH_THEME="random"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zeus rbenv gem osx bundler sublime vagrant)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# z.sh at https://github.com/rupa/z
. /usr/local/bin/z.sh

PATH=/usr/local/sbin:/usr/local/bin:$PATH

#detailed excute
dexecute(){
  echo ">>>>excuting: " $1
  eval $1
}

alias ll="ls -lAhG"
alias ...="cd ../.."
alias ..="cd ../"

#Development
#start current in sublime
alias ed='dexecute "subl ."'
#Git related
alias gp="dexecute 'git push origin master'"
alias gs='dexecute "git status"'
alias gi='dexecute "git add -p ."'
#start foreman
alias fs='dexecute "foreman start"'
#open the app from foreman
alias oa='dexecute "open http://localhost:5000/"'
#start apache
alias startapache='dexecute "sudo apachectl start"'
alias stopapache='dexecute "sudo apachectl stop"'
# Start psql with a daemon, no deamon: postgres -D /usr/local/var/postgres
alias psql-start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias psql-stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
export GEM_EDITOR='subl'
alias gg='open -a /Applications/Google\ Chrome.app/'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
