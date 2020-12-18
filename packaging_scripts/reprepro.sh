#!/usr/bin/env bash
# Where I keep the sources
BASEDIR=~/sources
# Version of wireguide
VERSION=$(awk -F '"' '/self.version =/ {print $2}' ${BASEDIR}/wireguide/src/wireguide)

# Change to source dir
cd ${BASEDIR}/wireguide

# Build deb
dpkg-buildpackage -us -uc

# Add binary and source to repo
reprepro --basedir ${BASEDIR}/debian includedeb unstable ${BASEDIR}/wireguide_${VERSION}_all.deb
reprepro --basedir ${BASEDIR}/debian -S net --priority optional includedsc unstable ${BASEDIR}/wireguide_${VERSION}.dsc
