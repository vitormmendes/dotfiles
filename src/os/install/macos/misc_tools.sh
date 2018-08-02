#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

brew_install "ShellCheck" "shellcheck"
brew_install "Visual Studio Code" "visual-studio-code" "caskroom/cask" "cask"
brew_install "Sublime-Text" "sublime-text" "caskroom/cask" "cask"
brew_install "Dbeaver" "dbeaver-community" "caskroom/cask" "cask"
brew_install "Cord app" "cord" "caskroom/cask" "cask"
brew_install "Authy Desktop" "authy" "caskroom/cask" "cask"

if [ -d "$HOME/.nvm" ]; then
    brew_install "Yarn" "yarn" "" "" "--without-node"
fi
