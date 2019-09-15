#! /bin/bash

anyenv install --init

anyenv install nodenv
anyenv install goenv

exec $SHELL -l
