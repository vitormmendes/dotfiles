#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Compression Tools\n\n"

brew_install "Brotli" "brotli"
brew_install "Zopfli" "zopfli"
brew_install "p7zip" "p7zip"
brew_install "pigz" "pigz"
brew_install "rpm" "rpm"
