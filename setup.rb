#!/usr/bin/env ruby
PWD = File.dirname(__FILE__)

#Install HomeBrew
#`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

`brew update`
`brew tap homebrew/versions`
`brew install git hub postgresql redis cask z ag chruby ruby-install tig git-cal git-flow nvm tree aspell --with-lang-en`
`brew cask install atom spectacle`

#Install Oh-my-zsh
`curl -L http://install.ohmyz.sh | sh`
`ln -s ~/.dotfiles/zsh ~/.oh-my-zsh`

#Link my custom zsh theme
system("cp #{PWD}/zsh/themes/aMetheme.zsh-theme ~/.oh-my-zsh/themes/aMetheme.zsh-theme")

#Link .zshrc
`mv ~/.zshrc ~/.zshrc.old`
system "ln -s #{PWD}/.zshrc ~/.zshrc"

#Create sublime text link
# system("ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl")

#link .emacs.d
system "ln -s $PWD/emacs/ ~/.emacs.d"

#link .gitignore_global
system("ln -s #{PWD}/.gitignore_global ~/.gitignore_global") unless File.exists?('~/.gitignore_global')
system "git config --global core.excludesfile '~/.gitignore_global'"
`git config --global user.name 'Shaomeng Zhang'`
`git config --global user.email randomor@gmail.com`
