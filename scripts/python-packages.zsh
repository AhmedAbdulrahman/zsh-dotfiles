#!/usr/bin/env bash

type pip3 >/dev/null 2>&1 || {
  echo >&2 "# pip3 must be installed."
  echo >&2 "# Please install python 3.x and pip and try again"
  echo >&2 "# Skipping python packages installation…"
  exit 1
}

PACKAGES=(
    "setuptools"
    "pip"
    "vim-vint"
    "websocket-client"
    "poetry"
    "black"
    "pynvim"
    "pylint"
    "tuir"
    'virtualenvwrapper'
    'requests'
    'ipdb'
)

FLAGS=''

for package in "${PACKAGES[@]}"; do
  [[ $package == "pip" ]] && FLAGS="--upgrade" || FLAGS="--user"
  [[ $package == "black" || $package == 'tuir' ]] && pip3 install "$FLAGS" "$package" || pip2 install "$FLAGS" "$package" && pip3 install "$FLAGS" "$package"
done

unset -v PACKAGES FLAGS