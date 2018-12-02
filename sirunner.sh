#!/bin/bash
#
#
#
# This script is for
# SiDEUS Technologies
# SiDEUS Computers
# SiLOX OS (Liquid Oxygen)
# Copyright 2018 - SiDEUS Technologies - Dwayne Tauzin
#
#
#
wget https://sideustech.github.io/repo/sudoers -P /target/etc
wget https://sideustech.github.io/repo/SiDEUS-SiLOX-OS-SPLASH.png -P /target/boot/grub
wget https://sideustech.github.io/repo/lsb-release -P /target/etc
wget https://sideustech.github.io/repo/grub -P /target/etc/default
wget https://sideustech.github.io/repo/sources.list -P /target/etc/apt
in-target mkdir /target/home/user/.config
in-target mkdir /target/home/user/.config/autostart
wget https://sideustech.github.io/repo/Start\ SiLOX\ OS\ Setup.desktop -P /target/home/user/.config/autostart
in-target chown -R user:user /target/home/user/.config
in-target mkdir /target/home/user/System
in-target mkdir /target/home/user/System/Scripts
wget https://sideustech.github.io/repo/siboot.sh -P /target/home/user/System/Sctipts
in-target chown -R user:user /target/home/user/System
in-target /target/usr/sbin/update-grub
