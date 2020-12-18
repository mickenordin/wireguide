Buildroot: /home/micke/sources/wireguide-##VERSION##
Name: wireguide
Version: ##VERSION##
Release: 1
Requires: python3-wxpython4
Summary: WireGUIde is a graphical user interface for WireGuard
License: GPLv3+ 
Distribution: Fedora

%define _binary_filedigest_algorithm 2
%define _rpmdir ../
%define _rpmfilename %%{NAME}-%%{VERSION}.noarch.rpm
%define _unpackaged_files_terminate_build 0

%description

WireGUIde is a free and open source graphical user interface for WireGuard:
https://www.wireguard.com/. Using WireGUIde you will be able to easily manage
you Wireguard client connections on GNU/Linux without the need to use the
terminal. WireGUIde uses NetworkManager as a backend, so it is compatible with
connections set up with nmcli.

%files
"/usr/bin/wireguide"
"/usr/share/applications/wireguide.desktop"
%dir "/usr/share/doc/wireguide/"
"/usr/share/doc/wireguide/changelog.gz"
"/usr/share/doc/wireguide/copyright"
"/usr/share/icons/hicolor/256x256/ke.mic.wireguide.png"
