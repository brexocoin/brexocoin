
Debian
====================
This directory contains files used to package brexocoind/brexocoin-qt
for Debian-based Linux systems. If you compile brexocoind/brexocoin-qt yourself, there are some useful files here.

## brexocoin: URI support ##


brexocoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install brexocoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your brexocoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/brexocoin128.png` to `/usr/share/pixmaps`

brexocoin-qt.protocol (KDE)

