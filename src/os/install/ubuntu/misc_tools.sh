#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

install_package "cURL" "curl"
install_package "ShellCheck" "shellcheck"
install_package "xclip" "xclip"

if [ -d "$HOME/.nvm" ]; then

    if ! package_is_installed "yarn"; then

        add_key "https://dl.yarnpkg.com/debian/pubkey.gpg" \
            || print_error "Yarn (add key)"

        add_to_source_list "https://dl.yarnpkg.com/debian/ stable main" "yarn.list" \
            || print_error "Yarn (add to package resource list)"

        update &> /dev/null \
            || print_error "Yarn (resync package index files)"

    fi

    install_package "Yarn" "yarn" "--no-install-recommends"
fi

if ! package_is_installed "sublime-text"; then

    add_key "https://download.sublimetext.com/sublimehq-pub.gpg" \
        || print_error "sublime-text (add key)"

    add_to_source_list "https://download.sublimetext.com/ apt/stable/" "sublime-text.list" \
        || print_error "sublime-text (add to package resource list)"

    update &> /dev/null \
        || print_error "sublime-text (resync package index files)"

fi

install_package "Sublime text" "sublime-text"


if ! package_is_installed "dbeaver-ce"; then

    add_ppa "serge-rider/dbeaver-ce" \
        || print_error "dbeaver-ce (add ppa)"

    update &> /dev/null \
        || print_error "dbeaver-ce (resync package index files)"

fi

if ! package_is_installed "code"; then

    sudo add-apt-repository -y "deb https://packages.microsoft.com/repos/vscode stable main"

    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF

    update &> /dev/null \
        || print_error "dbeaver-ce (resync package index files)"

fi

install_package "Visual Studio Code" "code"
