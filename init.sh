#!/usr/bin/env bash
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# install plugins
git clone --depth=1 https://git.coding.net/fyibmsd/zsh.git ~/.zsh
cd ~/.zsh
git submodule init
git submodule update
echo "source ~/.zsh/.zsh_profile" >> ~/.zshrc
zsh
