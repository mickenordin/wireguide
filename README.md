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

Also: make sure you are using resolvconf and systemd-resolvd otherwise NetworkManager might empty /etc/resolv.conf when you remove the last tunnel:
```
sudo apt install resolvconf
sudo systemctl restart systemd-resolved.service
```

## Installation
It is no longer recommended to install using pip or the previous created appimage, since this project uses dependencies that are not easily packaged using universal binaries or python packaging (infact appimages and pip project has been removed). Instead the native debian/rpm package is recommended.

rpm-package is generated using alien, please let me know if it does not work for you.

### DEB
```
curl https://repo.mic.ke/PUBLIC.KEY | sudo apt-key add -
curl https://repo.mic.ke/debian/debian-micke-unstable.list | sudo tee /etc/apt/sources.list.d/debian-micke-unstable.list
sudo apt update && sudo apt install wireguide
```

### RPM
```
wget https://repo.mic.ke/PUBLIC.KEY
sudo rpm --import PUBLIC.KEY
sudo dnf config-manager --add-repo https://repo.mic.ke/rpm/rpm-micke.repo
sudo dnf install wireguide
```

## sha256sums
**sha256sum**|**File**
:-----:|:-----:
0b10445b1cd9f23edac3d8b25ac3a444d332b50ad63dd05c826e71f50c1d0f61|wireguide-0.2.1-1.x86_64.rpm
1cb81e579f7e2717c5b8901dbc392377cabbdebdeb36d158081b7796a93cbfac|wireguide_0.2.1_all.deb
e8cb29b5e8a54165e94133324ac90193269c0c5e54e355d6f8e52c8fc404d537|wireguide_0.2.1_amd64.buildinfo
3f32d95e882c783fd0b8dfa86894fa0a4ba4be8c16e7e90ef7e14b1d5cd31da7|wireguide_0.2.1_amd64.changes
70459c058ccfa02a3482c1bf79088b712dd72bbdf578507527c69e95981e019b|wireguide_0.2.1.dsc
328340e76b3c4024863fdbaac0cd0ef5ccdd4e312ce2f739022536ec98fd028e|wireguide_0.2.1.git

## Screenshots
![No config](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot0.png)
![Open dialog](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot1.png)
![Activate](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot2.png)
![Deactivate](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot3.png)
