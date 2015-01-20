#!/usr/bin/env bash

# install homebrew
if [[ -z "$(which brew)" ]]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install git
if [[ -z "$(which git)" ]]; then
  brew install git
fi

# install zsh
if [[ -z "$(which zsh)" ]]; then
  brew install zsh
fi
