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
in-target echo user | sudo -S cp sudoers /target/etc
in-target sudo -S cp SiDEUS-SiLOX-OS-SPLASH.png /target/boot/grub
in-target sudo -S cp lsb-release /target/etc
in-target sudo -S cp grub /target/etc/default
in-target sudo -S cp sources.list /target/etc/apt
in-target mkdir /target/home/user/.config
in-target mkdir /target/home/user/.config/autostart
in-target sudo -S cp Start\ SiLOX\ OS\ Setup.desktop /target/home/user/.config/autostart
in-target sudo -S chown -R user:user /target/home/user/.config
in-target mkdir /target/home/user/System
in-target mkdir /target/home/user/System/Scripts
in-target sudo -S cp siboot.sh /target/home/user/System/Sctipts
in-target sudo -S chown -R user:user /target/home/user/System
in-target sudo /target/usr/sbin/update-grub


