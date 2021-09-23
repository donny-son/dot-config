#!/usr/bin/env bash
dst=$HOME/.config
echo "Adding default configurations to ${dst}..."

cp -r nvim $dst
echo "Copied nvim/ to ${dst}"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && \
echo "Installed vim-plug to ${dst}"


cp -r ranger $dst
echo "Copied ranger/ to ${dst}"

cp logo $dst/logo
echo "Copied logo to ${dst}"

echo "Complete..!"
