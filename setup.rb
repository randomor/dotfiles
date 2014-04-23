#!/usr/bin/env ruby
PWD = File.dirname(__FILE__)

#Install HomeBrew
#`ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`

# system("brew bundle #{PWD}/Brewfile")

#Install Oh-my-zsh
#`curl -L http://install.ohmyz.sh | sh`
# `ln -s ~/.dotfiles/zsh ~/.oh-my-zsh`

#Link my custom zsh theme
system("ln -s #{PWD}/zsh/themes/aMetheme.zsh-theme ~/.oh-my-zsh/themes/aMetheme.zsh-theme")

#Link .zshrc
# `mv ~/.zshrc ~/.zshrc.old`
# system "ln -s #{PWD}/.zshrc ~/.zshrc"

#Create sublime text link
system("ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl")
