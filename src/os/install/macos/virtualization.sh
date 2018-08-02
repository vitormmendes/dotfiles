#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Virtualization\n\n"

# docker
brew_install "docker" "docker"
brew_install "docker-compose" "docker-compose"

# otherside
brew_install "Virtual Box" "virtualbox" "caskroom/cask" "cask"
brew_install "vagrant" "vagrant" "caskroom/cask" "cask"