# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export DB_BRANCH=master

# import z, still need this even installed from brew, not needed anymore since zshrc has it.
#. /usr/local/Cellar/z/1.8/etc/profile.d/z.sh

# chruby
source /usr/local/share/chruby/chruby.sh
# And to autoload ruby
source /usr/local/share/chruby/auto.sh
# To set default ruby version, create ~/.ruby-version with 'ruby-2.1.1'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="aMetheme"

export PG_DATA="/usr/local/var/postgres"

# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias phpunit="vendor/bin/phpunit"
alias sequelize="node_modules/.bin/sequelize"
alias laravel="php artisan"
alias xmysql="sudo /Applications/XAMPP/xamppfiles/share/mysql/mysql.server"
alias x="sudo /Applications/XAMPP/xamppfiles/xampp"
alias xstart="sudo /Applications/XAMPP/xamppfiles/xampp startapache; sudo /Applications/XAMPP/xamppfiles/xampp startmysql"
alias xstop="sudo /Applications/XAMPP/xamppfiles/xampp stop"
alias gre="git pull --rebase"
alias dumpclass="composer dump-autoload"
alias whichphp="lsof -i tcp:8000 | grep php | awk '{ print $2 }'"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx z github gitignore postgres)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='emacs'
# else
#   export EDITOR='memacs'
# fi

export EDITOR='emacs'

#detailed excute
dexecute(){
  echo ">>>>excuting: " $1
  eval $1
}
#start apache
alias startapache='dexecute "sudo apachectl start"'
alias stopapache='dexecute "sudo apachectl stop"'

# Start psql with a daemon, no deamon: postgres -D /usr/local/var/postgres
# alias psql-start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
# alias psql-stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias reload='dexecute "source ~/.zshrc"'
alias memacs='/Applications/Emacs.app/Contents/MacOS/Emacs'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
