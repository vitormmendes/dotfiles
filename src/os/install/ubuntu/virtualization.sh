#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Virtualization\n\n"

if ! package_is_installed "yarn"; then

    add_key "https://download.docker.com/linux/ubuntu/gpg" \
        || print_error "Docker (add key)"

    add_apt_repository "[arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs)" \
        || print_error "Docker (add to repository)"

    update &> /dev/null \
        || print_error "Docker (resync package index files)"

fi

install_package "Docker" "docker-ce"
