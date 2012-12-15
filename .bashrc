#detailed excute
dexecute(){
	echo ">>>>excuting: " $1
  eval $1
}

alias ll="ls -lahG"
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
alias st='dexecute "foreman start"'
#open the app from foreman
alias oa='dexecute "open http://localhost:5000/"'
#start apache
alias startapache='dexecute "sudo apachectl start"'
alias stopapache='dexecute "sudo apachectl stop"'
# Start psql with a daemon, no deamon: postgres -D /usr/local/var/postgres
alias psql-start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias psql-stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias reload='dexecute "source ~/.bashrc ~/bash_profile"'
alias editbash='dexecute "vim ~/.bashrc"'
export GEM_EDITOR='subl'

. /usr/local/bin/z.sh
. ~/bin/nvm/nvm.sh
PATH=/usr/local/sbin:/usr/local/bin:$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
#check who is using port 8081: sudo lsof -i :8081

#log useful command
logCommand(){
	echo "logging command into ~/.bashrc"
	echo "#" $1 ":" $2 >> ~/.bashrc
}

