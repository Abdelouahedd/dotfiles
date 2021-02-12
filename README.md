# Dotfile

This repository serves as my quick way to setup my dotfiles on a new machine.

**some benefits**

* all dotfiles are grouped in one place.
* all dotfiles are tracked by git, if your screw up, you could `git restore`
* all dotfiles are independant of the host machine.
* one quick command and you could setup all your dotfiles

### Description

**Setup scripts**

Every script called `setup.sh` is responsible for setting up the dotfiles
inside the same directory.

It will link symbolically all dotfiles to your home directory or the appropriate
directory (eg: config directory of *vscode* is `~/.config/Code` ).

For example the script `vscode/setup.sh` will setup all the dotfiles that are
included in `vscode/`.

**Install scripts**

Every script with the following pattern `install-*.sh` is repsonsible for
installing a specific program or group of programs.

For example `vscode/install-extensions.sh` will install some vscode extensions.

These scripts has nothing to do with setup files, they should be called manually.

### Usage

1. Clone the repo to `~/.dotfiles`
2. Call `~/.dotfiles/setup.sh` to setup the basic dotfiles (zsh, git, tmux)
3. Re-open your terminal to see the changes

### References

