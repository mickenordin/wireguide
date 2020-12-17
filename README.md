# WireGUIde
WireGUIde is a graphical user interface for WireGuard: https://www.wireguard.com/

It makes use of:
 * libnm (https://developer.gnome.org/libnm/stable/usage.html)
 * wxPython (https://wxpython.org/)
 * GObject Introspection (https://gi.readthedocs.io/en/latest/)

Thanks to Jan Bodnar of zetcode.com for the valuable tutorial on wxPython dialogs:
* http://zetcode.com/wxpython/dialogs/

Thanks to CoreUI for providing a free and open source WireGuard Icon:
* https://github.com/coreui/coreui-icons

## Prerequisites
WireGUIde requires a fairly recent version of network-manager, and of course wireguard support. For example, while wireguard is available from buster-backports, network-manager for Debian Buster is too old (1.14.6). WireGUIde is known to work on Debian and Ubuntu versions with network-manager >= 1.22.10. That means that it will work on Debian Bullseye, Ubuntu Focal and Ubuntu Groovy. Other distros have not been tested yet, but should work if the software running is sufficiently new.

Also: make sure you are using resolvconf and systemd-resolvd otherwise NetworkManager might empty /etc/resolv.conf when you remove the last tunnel:
```
sudo apt install resolvconf
sudo systemctl restart systemd-resolved.service
```

## Installation
It is no longer recommended to install using pip or the previous created appimage, since this project uses dependencies that are not easily packaged using universal binaries or python packaging (infact appimages and pip project has been removed). Instead the native debian/rpm package is recommended:
* [wireguide_0.2.0_all.deb](https://github.com/mickenordin/wireguide/releases/download/0.2.0/wireguide_0.2.0_all.deb)
* [wireguide-0.2.0-1.noarch.rpm](https://github.com/mickenordin/wireguide/releases/download/0.2.0/wireguide-0.2.0-1.noarch.rpm)

rpm-package is generated using alien, please let me know if it does not work for you.

## sha256sums
**sha256sum**|**File**
:-----:|:-----:
6c364077cbe26281dc0abe6b2d7e53b5e5409be87953ad6133a901b8e36d5dba|[wireguide_0.2.0_all.deb](https://github.com/mickenordin/wireguide/releases/download/0.2.0/wireguide_0.2.0_all.deb)
8662dde8a7f7cfc6d21e3619398a089acbff3662174d493245d7e2e1b8f88dcb|[wireguide_0.2.0_amd64.buildinfo](https://github.com/mickenordin/wireguide/releases/download/0.2.0/wireguide_0.2.0_amd64.buildinfo)
32b291e2c419db68bbc9d21127c59626fe9035b0b1071bbc007fb4dc7c415719|[wireguide_0.2.0_amd64.changes](https://github.com/mickenordin/wireguide/releases/download/0.2.0/wireguide_0.2.0_amd64.changes)
d8ca89905b6b94a3b4d073409ddc27d5b6ffa3e97278b6057d103b76080009ca|[wireguide_0.2.0.dsc](https://github.com/mickenordin/wireguide/releases/download/0.2.0/wireguide_0.2.0.dsc)
1a5ea92bad68a55628094bccbbf4a6c35a64becccc3f6c9a57373c76f01b0ac6|[wireguide_0.2.0.git](https://github.com/mickenordin/wireguide/releases/download/0.2.0/wireguide_0.2.0.git)
e7d229c8cdfa8a101968ee9047b771d443f15b02bacfdb82901cf3ffe01cca66|[wireguide-0.2.0-1.noarch.rpm](https://github.com/mickenordin/wireguide/releases/download/0.2.0/wireguide-0.2.0-1.noarch.rpm)

## Screenshots
![No config](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot0.png)
![Open dialog](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot1.png)
![Activate](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot2.png)
![Deactivate](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot3.png)
