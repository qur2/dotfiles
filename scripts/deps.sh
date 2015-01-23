#!/usr/bin/env bash

# install homebrew
# http://brew.sh/#install
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

# install nvm
# https://github.com/creationix/nvm
if [[ -z "$(which nvm)" ]]; then
  curl https://raw.githubusercontent.com/creationix/nvm/v0.23.0/install.sh | bash
fi

# install virtualenv
# https://github.com/brainsik/virtualenv-burrito
if [[ -z "$(which virtualenv-burrito)" ]]; then
  curl -sL https://raw.githubusercontent.com/brainsik/virtualenv-burrito/master/virtualenv-burrito.sh | $SHELL
fi
