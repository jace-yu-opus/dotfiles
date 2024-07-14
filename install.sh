#!/bin/sh
echo "🍉 Setting up your machine"

DOTFILES="$HOME/dotfiles"

echo "🍉 Setting up vim"
VIMRC="$HOME/.vimrc"
if [ -f "$VIMRC" ]; then
  rm "$VIMRC"
fi
ln -s "$DOTFILES"/.vimrc "$VIMRC"

if [ "$(uname)" = "Darwin" ]; then
  . "$DOTFILES"/macos/install.sh
fi

. "$DOTFILES"/zsh/install.sh

echo "🍉 Setting up git"
GITCONFIG="$HOME/.gitconfig"
if [ -f "$GITCONFIG" ]; then
  rm "$GITCONFIG"
fi
ln -s "$DOTFILES"/.gitconfig "$GITCONFIG"

MAGICNUMBER="$HOME/.magicnumber"
echo "🍉 Setting up magic numbers"
if [ -f "$MAGICNUMBER" ]; then
  rm "$MAGICNUMBER"
fi
ln -s "$DOTFILES"/.magicnumber "$MAGICNUMBER"
