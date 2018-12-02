#!/bin/bash
/usr/bin/apt update
/usr/bin/apt upgrade -y
/usr/bin/apt dist-upgrade -y
/bin/cp sudoers /target/etc
/bin/cp SiDEUS-SiLOX-OS-SPLASH.png /boot/grub
/bin/cp lsb-release /etc
/bin/cp grub /etc/default
/bin/cp sources.list /etc/apt
/bin/mkdir /home/user/.config
/bin/mkdir /home/user/.config/autostart
/bin/cp Start\ SiLOX\ OS\ Setup.desktop /home/user/.config/autostart
/bin/chown -R user:user /home/user/.config
/bin/mkdir /home/user/System
/bin/mkdir /home/user/System/Scripts
/bin/cp siboot.sh /home/user/System/Sctipts
/bin/chown -R user:user /home/user/System
