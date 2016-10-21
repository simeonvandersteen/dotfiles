#!/bin/sh

# zsh

diff custom.zsh ~/.oh-my-zsh/custom/custom.zsh
if [ "$?" -eq 1 ]; then
    echo ""
    echo "repo <-> installed"
    echo ""
    echo "Changes ok? (y/n)"
    read CONFIRM

    if [ "$CONFIRM" = "y" ]; then
        cp custom.zsh ~/.oh-my-zsh/custom/ || exit 1
    fi
else
    echo "No changes to zsh"
fi

# vim
diff .vimrc ~/.vimrc
if [ "$?" -eq 1 ]; then
    echo ""
    echo "repo <-> installed"
    echo ""
    echo "Changes ok? (y/n)"
    read CONFIRM

    if [ "$CONFIRM" = "y" ]; then
        cp .vimrc ~/ || exit 1
    fi
else
    echo "No changes to vim"
fi
