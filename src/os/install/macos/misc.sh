#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

brew_install "Android File Transfer" "android-file-transfer" "caskroom/cask" "cask"
brew_install "Spectacle" "spectacle" "caskroom/cask" "cask"
brew_install "VLC" "vlc" "caskroom/cask" "cask"
brew_install "iterm2" "iterm2" "caskroom/cask" "cask"
