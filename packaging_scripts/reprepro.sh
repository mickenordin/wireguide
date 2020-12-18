#!/usr/bin/env bash
# Version of wireguide
VERSION=$(awk -F '"' '/self.version =/ {print $2}' ~/sources/wireguide/src/wireguide)

# Where i keep the sources
cd ~/sources

# Build deb
dpkg-buildpackage -us -uc

# Add binary and source to repo
reprepro --basedir ~/sources/debian includedeb unstable ~/sources/wireguide_${VERSION}_all.deb
reprepro --basedir ~/sources/debian -S net --priority optional includedsc unstable ~/sources/wireguide_${VERSION}.dsc
