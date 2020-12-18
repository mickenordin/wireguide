#!/usr/bin/env bash
BASEDIR=~/sources
${BASEDIR}/wireguide/packaging_scripts/version.sh
${BASEDIR}/wireguide/packaging_scripts/reprepro.sh
${BASEDIR}/wireguide/packaging_scripts/alien.sh
