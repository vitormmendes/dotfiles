#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Java\n\n"

# java
brew_install "Java 11" "java11" "caskroom/cask" "cask"
brew_install "Java" "java" "caskroom/cask" "cask"
brew_install "Java 8" "java8" "caskroom/versions" "cask"


# build tools
brew_install "maven" "maven"
brew_install "gradle" "gradle"
brew_install "ant" "ant"

# many env java
brew_install "jenv" "jenv"

# tools
brew_install "VisualVM" "visualvm" "caskroom/cask" "cask"

# ide
brew_install "IntelliJ CE" "intellij-idea-ce" "caskroom/cask" "cask"