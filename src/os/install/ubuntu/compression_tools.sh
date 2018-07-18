#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Compression Tools\n\n"

install_package "Brotli" "brotli"
install_package "Zopfli" "zopfli"
install_package "p7zip" "p7zip"
install_package "pigz" "pigz"


