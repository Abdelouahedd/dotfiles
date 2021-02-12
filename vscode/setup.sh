#!/bin/bash

VSCODE_DIRECTORY="$HOME/.config/Code/User"
DOTFILES_DIRECTORY="$HOME/.dotfiles/vscode"

function check_arguments() {
  if [[ ! -d "$VSCODE_DIRECTORY" ]]; then
    mkdir -p "$VSCODE_DIRECTORY"
    echo "Created $VSCODE_DIRECTORY"
  fi

  if [[ ! -d "$DOTFILES_DIRECTORY" ]]; then
    echo "$DOTFILES_DIRECTORY does NOT exist"
    echo "Make sure you have cloned the repository as ~/.dotfiles"
    exit 1;
  fi
}

function setup() {
  ln -sf "$DOTFILES_DIRECTORY/settings.json" "$VSCODE_DIRECTORY/settings.json"
  ln -sf "$DOTFILES_DIRECTORY/keybindings.json" "$VSCODE_DIRECTORY/keybindings.json"
}

check_arguments
setup
