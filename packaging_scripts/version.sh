#!/usr/bin/env bash
BASEDIR=~/sources
version="${1}"
chlog_msg="${2}"
if [[ "x${version}" == "x" ]]; then
    echo -n "Enter version (x.x.x): "
    read version
fi
if [[ "x${chlog_msg}" == "x" ]]; then
    echo -n "Enter changelog message: "
    read chlog_msg
fi
# Code
echo sed -i -E 's/self\.version = "[0-9]+\.[0-9]+\.[0-9]+/self.version = "'${version}'/' ${BASEDIR}/wireguide/src/wireguide

# Changelog
echo 'wireguide ('${version}') unstable; urgency=low

    * '${chlog_msg}'

 -- Micke Nordin <hej@mic.ke>  '$(LC_ALL=C date "+%a, %d %b %Y %T %z")'
'| wl-copy

vim ${BASEDIR}/wireguide/debian/changelog
