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

## Usage
```
sudo apt get install libnm0 wxpython gir1.2-nm-1.0
git clone https://github.com/mickenordin/wireguide.git
cd wireguide/
./wireguide
``
