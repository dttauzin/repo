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
# You must be su in order to run this script.
#
cp sudoers /target/etc
cp SiDEUS-SiLOX-OS-SPLASH.png /target/boot/grub
cp lsb-release /target/etc
cp grub /target/etc/default
cp sources.list /target/etc/apt
mkdir /target/home/user/.config
mkdir /target/home/user/.config/autostart
cp Start\ SiLOX\ OS\ Setup.desktop /target/home/user/.config/autostart
chown -R user:user /target/home/user/.config
mkdir /target/home/user/System
mkdir /target/home/user/System/Scripts
cp siboot.sh /target/home/user/System/Sctipts
chown -R user:user /target/home/user/System
cp /target/usr/sbin/update-grub

