#!/bin/bash

export PYENV_ROOT=$HOME/.pyenv

if [[ ! -e $PYENV_ROOT ]];then
    git clone https://github.com/pyenv/pyenv.git $PYENV_ROOT
    git clone https://github.com/pyenv/pyenv-virtualenv.git $PYENV_ROOT/plugins/pyenv-virtualenv
    git clone https://github.com/pyenv/pyenv-update.git $PYENV_ROOT/plugins/pyenv-update
fi
