#! /bin/zsh

cp .deploy.zsh ~
cp .git-checkout.zsh ~
cp .zshrc ~

source ~/.zshrc
zsh .deploy.zsh