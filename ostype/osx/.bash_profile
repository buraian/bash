#!/usr/bin/env bash

#--- Functions ----------------------------------------------------------------
test -e ""$BC_BASH/functions/man.bash"" && source "$BC_BASH/functions/man.bash"

#--- 3rd Party Integrations ---------------------------------------------------
test -e "$HOME/.iterm2_shell_integration.bash" && source "$HOME/.iterm2_shell_integration.bash"
