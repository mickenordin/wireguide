#!/usr/bin/env bash
BASEDIR=~/sources
${BASEDIR}/wireguide/pakaging_scripts/version.sh
${BASEDIR}/wireguide/pakaging_scripts/reprepro.sh
${BASEDIR}/wireguide/pakaging_scripts/alien.sh
${BASEDIR}/wireguide/pakaging_scripts/shasums.sh
