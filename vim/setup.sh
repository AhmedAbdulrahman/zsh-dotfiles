#!/usr/bin/env bash
################################################################################
#  Author: Ahmed Abdulrahman
#  Email: a.kasapbashi@gmail.com
#  Created: 2018-12-30 09:25
################################################################################

# get the dir of the current script
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd) && cd "$SCRIPT_DIR" || return 1

echo "\\n → Creating VIM folder in root directory..."
mkdir -p $HOME/.vim
echo "✓ ZSH folder created successfully!\\n"

echo "→ Creating COC folder inside ~/.config directory..."
mkdir -p $HOME/.config/coc
echo "✓ ZSH folder created successfully!\\n"

echo "→ Copying COC snippets..."
cp -a "$SCRIPT_DIR/snippets/." $HOME/.config/coc/ultisnips/
echo "✓ COC snippets copied successfully!\\n"

echo "→ Creating VIM cache folder..."
mkdir -p $HOME/.vim/cache
echo "✓ ZSH folder created successfully!\\n"

echo "→ Copying VIM cache folders..."
cp -a "$SCRIPT_DIR/cache/." $HOME/.vim/cache/
echo "✓ VIM cache copied successfully!\\n"