#!/bin/bash
pacman -Syu base-devel --noconfirm
pacman -S yajl --noconfirm
curl -O https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz
tar zxvf package-query.tar.gz
cd package-query
makepkg -si --asroot --noconfirm
cd ..
curl -O https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz
tar zxvf yaourt.tar.gz
cd yaourt
makepkg -si --asroot --noconfirm
cd ..
yaourt -S puppet --noconfirm
