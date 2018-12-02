#!/bin/bash
/usr/bin/apt update
/usr/bin/apt upgrade -y
/usr/bin/apt dist-upgrade -y
cp sudoers /target/etc
cp SiDEUS-SiLOX-OS-SPLASH.png /boot/grub
cp lsb-release /etc
cp grub /etc/default
cp sources.list /etc/apt
mkdir /home/user/.config
mkdir /home/user/.config/autostart
cp Start\ SiLOX\ OS\ Setup.desktop /home/user/.config/autostart
chown -R user:user /home/user/.config
mkdir /home/user/System
mkdir /home/user/System/Scripts
cp siboot.sh /home/user/System/Sctipts
chown -R user:user /home/user/System
