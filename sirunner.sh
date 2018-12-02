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
echo user | sudo -S cp sudoers /target/etc
sudo -S cp SiDEUS-SiLOX-OS-SPLASH.png /target/boot/grub
sudo -S cp lsb-release /target/etc
sudo -S cp grub /target/etc/default
sudo -S cp sources.list /target/etc/apt
mkdir /target/home/user/.config
mkdir /target/home/user/.config/autostart
sudo -S cp Start\ SiLOX\ OS\ Setup.desktop /target/home/user/.config/autostart
sudo -S chown -R user:user /target/home/user/.config
mkdir /target/home/user/System
mkdir /target/home/user/System/Scripts
sudo -S cp siboot.sh /target/home/user/System/Sctipts
sudo -S chown -R user:user /target/home/user/System
in-target sudo /target/usr/sbin/update-grub


