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
cp https://sideustech.github.io/repo/sudoers /target/etc
cp https://sideustech.github.io/repo/SiDEUS-SiLOX-OS-SPLASH.png /target/boot/grub
cp https://sideustech.github.io/repo/lsb-release /target/etc
cp https://sideustech.github.io/repo/grub /target/etc/default
cp https://sideustech.github.io/repo/sources.list /target/etc/apt
in-target mkdir /target/home/user/.config
in-target mkdir /target/home/user/.config/autostart
cp https://sideustech.github.io/repo/Start\ SiLOX\ OS\ Setup.desktop /target/home/user/.config/autostart
in-target chown -R user:user /target/home/user/.config
in-target mkdir /target/home/user/System
in-target mkdir /target/home/user/System/Scripts
cp https://sideustech.github.io/repo/siboot.sh /target/home/user/System/Sctipts
in-target chown -R user:user /target/home/user/System
in-target /target/usr/sbin/update-grub
