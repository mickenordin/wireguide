#!/usr/bin/env bash
# This is where I keep my sources
BASEDIR=~/sources
# Version of wireguide
VERSION=$(awk -F '"' '/self.version =/ {print $2}' ${BASEDIR}/wireguide/src/wireguide)

cd ${BASEDIR}

# Import signing key
sudo rpm --import ${BASEDIR}/repo/PUBLIC.KEY 

# Convert deb to rpm
sudo alien -g -r ${BASEDIR}/wireguide_${VERSION}_all.deb

# Remove generated specfile
sudo rm ${BASEDIR}/wireguide-${VERSION}/wireguide-*.spec

# Replace with our own
sed "s/##VERSION##/${VERSION}/" ${BASEDIR}/wireguide/rpm/wireguide-TEMPLATE.spec | sudo tee ${BASEDIR}/wireguide-${VERSION}/wireguide-${VERSION}.spec

# Change to build dir
cd wireguide-${VERSION}

# Build rpm and put in repo
cp ${BASEDIR}/wireguide/rpm/macros ~/.rpmmacros
sudo rpmbuild --buildroot=$(pwd) -bb wireguide-${VERSION}.spec
sudo chown ${USER}:${USER} ${BASEDIR}/wireguide-${VERSION}.noarch.rpm 
rpm --addsign ${BASEDIR}/wireguide-${VERSION}.noarch.rpm
cp ${BASEDIR}/wireguide-${VERSION}.noarch.rpm ${BASEDIR}/repo/rpm/
createrepo_c ${BASEDIR}/repo/rpm/
