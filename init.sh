#!/usr/bin/env bash
# clear all
rm -rf ~/.zsh ~/.oh-my-zsh ~/.zshrc
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# check os release
git clone --depth=1 https://github.com/nimrc/dotzsh.git ~/.zsh

cd ~/.zsh
# local config
touch .zsh_local
# submodule
git submodule init

git submodule update

sed -i 's/robbyrussell/agnoster/' ~/.zshrc

echo "source ~/.zsh/.zsh_profile" >> ~/.zshrc

/bin/zsh
