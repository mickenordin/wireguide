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
It is no longer recommended to install using pip or the previous created appimage, since this project uses dependencies that are not easily packaged using universal binaries or python packaging. Instead the native debian package is recommended:
[wireguide_0.2.0_all.deb](https://github.com/mickenordin/wireguide/releases/download/0.2.0/wireguide_0.2.0_all.deb)

In a future release, a rpm-package will also be supplied.

## Screenshots
![No config](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot0.png)
![Open dialog](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot1.png)
![Activate](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot2.png)
![Deactivate](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot3.png)
