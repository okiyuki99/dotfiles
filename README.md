# My Dotfiles

自分用のdotfileのレポジトリ

## \_vimrc

- シンプルに最低限必要なものだけ
- プラグインマネージャーも`vundle`で、このファイルに記述

## \_tmux.conf
- シンプルに最低限必要なものだけ

## _bashrc and \_bash\_profile
- シンプルに最低限必要なものだけ

## \_gitconfig
- alias等は他の人のを参考に最低限使いそうなものだけ

## 導入方法

1. 本レポジトリを `git clone ~` 
1. `bash install.sh`して、ホームディレクトリにデプロイ
1. vundleをgit clone : `git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
1. `:PluginInstall` でプラグインインストール

