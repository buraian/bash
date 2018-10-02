# Include ~/.bashrc
source ~/.config/bash/.bashrc

#===============================================================================
# Custom Command Prompt
#-------------------------------------------------------------------------------

PS1='\n\[\033[1;31m\]\u\[\033[m\] on \[\033[1;7m\] \h \[\033[m\] in \[\033[1;33m\]\W\[\033[m\]\n\[\033[1;33m\]$ \033[m\]'


#===============================================================================
# $PATH Variables for Development
#-------------------------------------------------------------------------------

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# MAMP
export PATH=$PATH:/Applications/MAMP/Library/bin

# MAMP PHP
export PATH=/Applications/MAMP/bin/php/php5.5.10/bin:$PATH

# Drupal Drush
export PATH=$PATH:/Users/brian/.composer/vendor/drush/drush:/usr/local/bin

# Mongo DB
export PATH=$PATH:/usr/local/mongodb/bin

# PHP (added here for SublimeLinter-php)
export PATH=$PATH:/usr/bin/php


#===============================================================================
# Aliases
#-------------------------------------------------------------------------------

# OS X Finder: Alias' to Show/Hide hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'


#===============================================================================
# Auto/Script Placed
#-------------------------------------------------------------------------------
export PATH="$PATH:/Applications/DevDesktop/tools"
