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

## Installation
```
sudo apt install python3-wxgtk4.0 network-manager
pip install wireguide
```
## Packaging
![pypi](https://img.shields.io/pypi/v/WireGUIde)

## Screenshots
![No config](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot0.png)
![Open dialog](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot1.png)
![Activate](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot2.png)
![Deactivate](https://raw.githubusercontent.com/mickenordin/wireguide/main/screenshots/scrot3.png)
