#!/bin/zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  if [[ ! -s ${ZDOTDIR:-$HOME}/.${rcfile:t} ]]; then
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  fi
done
rm "${ZDOTDIR:-$HOME}/.zshrc"
cp "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshrc" "${ZDOTDIR:-$HOME}/.zshrc"
