#!/usr/bin/env bash
BASEDIR=~/sources
sha256sum ${BASEDIR}/wireguide{-,_}*|sed "s_  ${HOME}/sources/_|_" | wl-copy
vim ${BASEDIR}/wireguide/README.md
