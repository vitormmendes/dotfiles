#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Java\n\n"

# java 8
brew_install "Java 8" "java8" "caskroom/versions" "cask"

#today java 10 is latest version ;)
brew_install "Java 10" "java" "caskroom/cask" "cask"

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