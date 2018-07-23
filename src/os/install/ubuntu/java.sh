#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Java\n\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_package "maven" "mvn"
install_package "gradle" "gradle"
install_package "ant" "ant"
install_package  "VisualVM" "visualvm"

if ! package_is_installed "oracle-java8-installer"; then

    add_ppa "webupd8team/java" \
        || print_error "Java 8 (add ppa)"

    update &> /dev/null \
        || print_error "Java 8 (resync package index files)"

fi

install_package "Java 8" "oracle-java8-installer"

if ! package_is_installed "oracle-java10-installer"; then

    add_ppa "linuxuprising/java" \
        || print_error "Java 10 (add ppa)"

    update &> /dev/null \
        || print_error "Java 10 (resync package index files)"

fi

install_package "Java 10" "oracle-java10-installer"

if ! package_is_installed "intellij-idea-community"; then

    add_ppa "ubuntuhandbook1/apps" \
        || print_error "IntelliJ (add ppa)"

    update &> /dev/null \
        || print_error "IntelliJ (resync package index files)"

fi

install_package "IntelliJ" "intellij-idea-community"