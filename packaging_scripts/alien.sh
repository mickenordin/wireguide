#!/usr/bin/env bash
# Verision of wireguide
VERSION=$(awk -F '"' '/self.version =/ {print $2}' ~/sources/wireguide/src/wireguide)

# Convert deb to rpm
sudo alien -g -r ~/sources/wireguide_${VERSION}_all.deb

# Remove generated specfile
sudo rm ~/sources/wireguide-${VERSION}/wireguide-*.spec

# Replace with our own
sed "s/##VERSION##/${VERSION}/" ~/sources/wireguide/rpm/wireguide-TEMPLATE.spec > ~/sources/wireguide-${VERSION}/wireguide-${VERSION}.spec

# Change to build dir
cd ~/sources/wireguide-${VERSION}

# Build rpm
sudo rpmbuild --buildroot=~/sources/wireguide-${VERSION} -bb wireguide-${VERSION}.spec
