#!/usr/bin/env bash

bold() {
  echo -e "$(tput bold)${1}$(tput sgr0)"
}

error() {
  echo -e "\033[0;31m$(bold "${1}")\033[0m"
}

import_file() {
  local file_to_import=${1}

  if [ -f "$file_to_import" ]; then
    source "$file_to_import"
  else
    error "ERROR: File not found: $file_to_import"
  fi
}

load_startup_files() {
  FILENAME=${1}

  # Load OS Shared Script
  case "$OSTYPE" in
    darwin*) import_file "$BC_BASH/ostype/osx/$FILENAME" ;;
    linux*) import_file "$BC_BASH/ostype/linux/$FILENAME" ;;
    *) echo 'An OSTYPE import could not be found.' ;;
  esac

  # Load Host-Specific Script
  case "$HOSTNAME" in
    Brian*.local) import_file "$BC_BASH/local/brian/$FILENAME" ;;
    *) import_file "$BC_BASH/local/$HOSTNAME/$FILENAME" ;;
  esac
}
