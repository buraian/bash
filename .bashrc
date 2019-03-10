#!/usr/bin/env bash

if [ -f ./.settings.bash ]; then
  source ./.settings.bash
else
  BC_BASH="$HOME/.config/bash"
  export BC_BASH
fi

source "$BC_BASH/functions/load_startup_files.bash"
load_startup_files '.bashrc'


#                 Auto Placed By Scripts                  #
#                  Move To Local/OSType                   #
# ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ #
