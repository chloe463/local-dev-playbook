#!/bin/bash

export PLENV_ROOT=$HOME/.plenv

if [[ ! -e $PLENV_ROOT ]];then
    git clone https://github.com/tokuhirom/plenv.git $PLENV_ROOT
    git clone https://github.com/tokuhirom/Perl-Build.git $PLENV_ROOT/plugins/perl-build/
fi
$PLENV_ROOT/bin/plenv install 5.24.0
$PLENV_ROOT/bin/plenv rehash
$PLENV_ROOT/bin/plenv global 5.24.0
$PLENV_ROOT/bin/plenv install-cpanm
$PLENV_ROOT/bin/plenv rehash
#echo 'export PATH="$HOME/.plenv/bin:$PATH"' >> $HOME/.bash_profile
#echo 'eval "$(plenv init -)"' >> $HOME/.bash_profile
#$HOME/.plenv/shims/cpanm Carton
