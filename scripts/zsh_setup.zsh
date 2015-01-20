#!/usr/bin/env zsh

# install prezto
setopt EXTENDED_GLOB
if [[ ! -d zsh/.zprezto ]]; then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git zsh/.zprezto
  for rcfile in zsh/.zprezto/runcoms/z*; do
    ln -s "$(basename $PWD)/$rcfile" "$HOME/.${rcfile:t}"
  done
  ln -s "$(basename $PWD)/zsh/.zprezto" "$HOME/.zprezto"
fi

# make zsh the default shell
if [[ -z $(cat /etc/shells | grep $(which zsh)) ]]; then
  echo "$(which zsh)" | sudo tee -a /etc/shells
fi
if [[ "$SHELL" != "$(which zsh)" ]]; then
  chsh -s $(which zsh)
fi

# install zsh-autoenv
if [[ ! -d zsh/zsh-autoenv ]]; then
  git clone https://github.com/Tarrasch/zsh-autoenv zsh/zsh-autoenv
  echo "source $PWD/zsh/zsh-autoenv/autoenv.zsh" >> "${HOME}/.zshrc"
fi

# source custom aliases
if [[ -z $(cat "${HOME}/.zshrc" | grep "${PWD}/zsh/.aliases") ]]; then
  echo "source ${PWD}/zsh/.aliases" >> "${HOME}/.zshrc"
fi
