# WireGUIde
WireGUIde is a free and open source graphical user interface for WireGuard: https://www.wireguard.com/. Using WireGUIde you will be able to easily manage you Wireguard client connections on GNU/Linux without the need to use the terminal. WireGUIde uses NetworkManager as a backend, so it is compatible with connections set up with nmcli.

It makes use of:
 * libnm (https://developer.gnome.org/libnm/stable/usage.html)
 * wxPython (https://wxpython.org/)
 * GObject Introspection (https://gi.readthedocs.io/en/latest/)

Thanks to Jan Bodnar of zetcode.com for the valuable tutorial on wxPython dialogs:
* http://zetcode.com/wxpython/dialogs/

Thanks to CoreUI for providing a free and open source WireGuard Icon:
* https://github.com/coreui/coreui-icons

## Prerequisites
WireGUIde requires a fairly recent version of network-manager, and of course wireguard support. For example, while wireguard is available from buster-backports, network-manager for Debian Buster is too old (1.14.6). WireGUIde is known to work on Debian, Ubuntu and Fedora versions with network-manager >= 1.22.10. That means that it will work on Debian Bullseye, Ubuntu Focal, Ubuntu Groovy and Fedora 33 or later.

## Installation
Please use supplied debian and rpm repos. Packages are signed with gpg.

### DEB
```
curl https://repo.mic.ke/PUBLIC.KEY | sudo apt-key add -
curl https://repo.mic.ke/debian/debian-micke-unstable.list | sudo tee /etc/apt/sources.list.d/debian-micke-unstable.list
sudo apt update && sudo apt install wireguide
```
Unless you are using resolvconf and systemd-resolvd, NetworkManager might empty /etc/resolv.conf when you remove the last tunnel. This step is optional, but recommended:
```
sudo apt install resolvconf
sudo systemctl restart systemd-resolved.service
```

### RPM
```
wget https://repo.mic.ke/PUBLIC.KEY
sudo rpm --import PUBLIC.KEY
sudo dnf config-manager --add-repo https://repo.mic.ke/rpm/rpm-micke.repo
sudo dnf install wireguide
```

## Screenshots
![No config](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot0.png)
![Open dialog](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot1.png)
![Activate](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot2.png)
![Deactivate](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot3.png)
