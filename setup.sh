#!/bin/bash

DOTFILES_DIRECTORY="$HOME/.dotfiles"

function check_dotfiles() {
  if [[ ! -d "$DOTFILES_DIRECTORY" ]]; then
      echo "$HOME/.dotfiles directory does NOT exists"
      echo "Make sure you have cloned the repository as $DOTFILES_DIRECTORY"
      exit 1;
  fi 

  if [[ ! -r "$DOTFILES_DIRECTORY" ]]; then
      echo "You do NOT have read permission on $HOME/.dotfiles"
      echo "try: chmod +r $HOME/.dotfiles"
      exit 1;
  fi
  
  if [[ ! -w $HOME/.dotfiles ]]; then
      echo "You do NOT have write permission on $HOME/.dotfiles"
      echo "try: chmod +w $HOME/.dotfiles"
      exit 1;
  fi
}

function default_setup() {
  # zsh
  ln -sf "$DOTFILES_DIRECTORY/.zsh_functions" ~/.zsh_functions
  ln -sf ~/.dotfiles/.aliases ~/.aliases
  ln -sf ~/.dotfiles/.zshrc ~/.zshrc

  # git
  ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

  # tmux
  ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
  
  # vim
  ln -sf ~/.dotfiles/.vimrc ~/.vimrc
}

check_dotfiles
default_setup
