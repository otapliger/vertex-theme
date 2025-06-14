This is a fork of https://github.com/horst3180/vertex-theme

# Vertex Theme

### Requirements

* Gnome/GTK 3.10+. This theme works with all versions up to 3.24.
* The murrine engine. This has different names depending on your distro:
  * `gtk-murrine-engine` (Fedora)
  * `gtk-engine-murrine` (Arch Linux)
  * `gtk-engine-murrine` (Void Linux)

### Installation

**Important:** Remove all older versions of the theme from your system before you proceed any further:

    sudo rm -rf /usr/share/themes/{Vertex,Vertex-Dark,Vertex-Light,Vertex-Gnome-Shell*}
    rm -rf ~/.local/share/themes/{Vertex,Vertex-Dark,Vertex-Light,Vertex-Gnome-Shell*}

To build the theme you need:
* `autoconf`
* `automake`
* `pkg-config` (`pkgconf` on Fedora)
* GTK 3 development package
  * `gtk3-devel` (Fedora)
  * `gtk+3-devel` (Void Linux)

If your distribution doesn't ship a separate GTK 3 development package you just need GTK 3.

**1. Get the source**

```sh
git clone https://github.com/otapliger/vertex-theme --depth 1 && cd vertex-theme
```

**2. Build**

```sh
./autogen.sh --prefix=$HOME/.local
```

**3. Install**

```sh
make install
```
