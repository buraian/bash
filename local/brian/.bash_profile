#!/usr/bin/env bash

#--- $PATH Variables For Development ---------------------#

# nvm
source ~/.nvm/nvm.sh
[[ -r $NVM_DIR/bash_completion ]] && \. "$NVM_DIR/bash_completion"

# deno
export PATH="/Users/brian/.deno/bin:$PATH"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Drupal Drush
export PATH=$PATH:/Users/brian/.composer/vendor/drush/drush:/usr/local/bin

# Mongo DB
export PATH=$PATH:/usr/local/mongodb/bin

# PHP (added here for SublimeLinter-php)
export PATH=$PATH:/usr/bin/php


#--- Aliases ---------------------------------------------#

# Applications
alias stree="/Applications/SourceTree.app/Contents/Resources/stree" # SourceTree
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code" # Visual Studio Code

# OS X Finder: Alias' to Show/Hide hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Clear DNS Cache (OS X)
alias clear_dns_cache="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# Disable Sticky Keys (OS X)
alias disable_sticky_keys_brave="defaults write com.brave.Browser ApplePressAndHoldEnabled -bool false" # Brave Browser
alias disable_sticky_keys_sublime="defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false" # Sublime Text 3
alias disable_sticky_keys_vscode="defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false" # Visual Studio Code

# Get Folder/Project's Code Line Count
alias get_code_line_count="git ls-files | grep '\.\(php\|sass\|scss\|js\|json\|coffee\|txt\|editorconfig\|gitignore\)\$' | xargs wc -l"


#--- VS Code on Mojave Tweaks (Temporary) ----------------#

# defaults write com.microsoft.VSCode CGFontRenderingFontSmoothingDisabled 0
# defaults write com.microsoft.VSCode.helper CGFontRenderingFontSmoothingDisabled 0
# defaults write com.microsoft.VSCode.helper.EH CGFontRenderingFontSmoothingDisabled 0
# defaults write com.microsoft.VSCode.helper.NP CGFontRenderingFontSmoothingDisabled 0


#--- Project Paths ---------------------------------------#

export PROJECT_PATHS=~/Documents/Developer


#--- Bash-it ---------------------------------------------#

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='sexy'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh
