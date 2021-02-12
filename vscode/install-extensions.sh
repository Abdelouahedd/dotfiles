#!/bin/bash

extensions=(
  CoenraadS.bracket-pair-colorizer-2
  dsznajder.es7-react-js-snippets
  esbenp.prettier-vscode
  formulahendry.auto-rename-tag
  Gruntfuggly.todo-tree
  ms-azuretools.vscode-docker
  ms-vscode-remote.remote-containers
  ms-vscode-remote.remote-ssh
  ms-vscode-remote.remote-ssh-edit
  PKief.material-icon-theme
  pnp.polacode
  vscodevim.vim
)

if [[ ! -f "/usr/bin/code" ]]; then
  echo "Make sure vscode is installed in your computer"
  echo "try: which code"
  exit 1;
fi

for extension in "${extensions[@]}"; do
  code --install-extension "$extension"
done
