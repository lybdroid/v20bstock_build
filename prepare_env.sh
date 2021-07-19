#!/bin/bash
curl -fsSL "https://repo.archlinuxcn.org/x86_64/glibc-linux4-2.33-4-x86_64.pkg.tar.zst" | bsdtar -C / -xvf - &>/dev/null
pacman -Syu --needed --noconfirm wget base-devel xmlto inetutils bc bison cpio git zip unzip python2 dtc
wait
