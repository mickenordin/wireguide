# WireGUIde
WireGUIde is a graphical user interface for WireGuard: https://www.wireguard.com/

It makes use of:
 * libnm (https://developer.gnome.org/libnm/stable/usage.html)
 * wxPython (https://wxpython.org/)
 * GObject Introspection (https://gi.readthedocs.io/en/latest/)

For packaging a debian package you can use these dependencies:
* libnm0
* wxpython
* gir1.2-nm-1.0

Thanks to Jan Bodnar of zetcode.com for the valuable tutorial on wxPython dialogs:
* http://zetcode.com/wxpython/dialogs/

## Prerequisites
WireGUIde requires a fairly recent version of network-manager, and of course wireguard support. For example, while wireguard is available from buster-backports, network-manager for Debian Buster is too old (1.14.6). WireGUIde is known to work on Debian and Ubuntu versions with network-manager >= 1.22.10. That means that it will work on Debian Bullseye, Ubuntu Focal and Ubuntu Groovy. Other distros have not been tested yet, but should work if the software running is sufficiently new.

Also: make sure you are using resolvconf and systemd-resolvd otherwise NetworkManager might empty /etc/resolv.conf when you remove the last tunnel:
```
sudo apt install resolvconf
sudo systemctl restart systemd-resolved.service
```

## Installation
You can install using pip:
```
sudo apt install python3-wxgtk4.0 network-manager
pip install wireguide
```
or you can download appimage: [WireGUIde-0.1.0.glibc2.32-x86_64.AppImage](https://github.com/mickenordin/wireguide/releases/download/0.1.0/WireGUIde-0.1.0.glibc2.32-x86_64.AppImage)

NOTICE: In the future, WireGUIde will be distributed as debian and rpm-packages as it has proven difficult to handle dependecies using universal binaries and pip. For now though, pip and the appimage is what is available.

## Packaging
![pypi](https://img.shields.io/pypi/v/WireGUIde)

## Screenshots
![No config](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot0.png)
![Open dialog](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot1.png)
![Activate](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot2.png)
![Deactivate](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot3.png)
