#!/usr/bin/env bash
# clear all
rm -rf ~/.zsh ~/.oh-my-zsh ~/.zshrc
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# install plugins
git clone --depth=1 https://git.coding.net/fyibmsd/zsh.git ~/.zsh
cd ~/.zsh
# local config
touch .zsh_local
# submodule
git submodule init
git submodule update
echo "source ~/.zsh/.zsh_profile" >> ~/.zshrc
zsh

