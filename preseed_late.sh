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
clear
echo
echo ------------- Copyright 2018 - SiDEUS Technologies - Dwayne Tauzin ------------
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo
echo
echo ----- Performing superuser tasks, please wait.......
echo
echo
echo
#
mkdir /home/user
mkdir /home/user/Downloads
mkdir /home/user/.config
mkdir /home/user/.config/autostart
cd /home/user/Downloads
wget https://www.dropbox.com/s/ucenpdblgodkh68/SiLOX%20OS%20Setup.zip
unzip *.zip
chown -R user:user /home/user/Downloads
chown -R user:user /home/user/.config
#
mv /home/user/Downloads/SiLOX\ OS\ Setup/SiLOX-OS /home/user/.SiLOX-OS
chown -R user:user /home/user/.SiLOX-OS
cp -R /home/user/.SiLOX-OS/etc/apt/* /etc/apt/
cd /home/user
dpkg --add-architecture i386
apt update
apt upgrade
apt dist-upgrade
apt-install alacarte debian-keyring preload sudo gksu laptop-detect gnome-system-tools gdebi guake gnome-system-tools gparted gpart nvidia-detect firmware-amd-graphics firmware-linux firmware-linux-free firmware-linux-nonfree firmware-misc-nonfree intel-microcode linux-headers-4.9.0-8-all linux-headers-4.9.0-8-all-i386:i386 build-essential automake clonezilla
#
clear
echo
echo ------------- Copyright 2018 - SiDEUS Technologies - Dwayne Tauzin ------------
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo
echo
echo ----- Performing superuser tasks, please wait.......
echo
echo
echo
cp /home/user/.SiLOX-OS/etc/sudoers /etc/
cp /home/user/.SiLOX-OS/etc/sysctl.conf /etc/
cp /home/user/.SiLOX-OS/etc/gdm3/daemon.conf /etc/gdm3/
cp /home/user/.SiLOX-OS/etc/pam.d/gdm-password /etc/pam.d/
cp /home/user/.SiLOX-OS/etc/default/grub /etc/default/
cp /home/user/.SiLOX-OS/etc/modules /etc/
cp -R /home/user/.SiLOX-OS/usr/* /usr/
#
cp /home/user/.SiLOX-OS/etc/lsb-release /etc/
cp /home/user/.SiLOX-OS/boot/grub/SiDEUS-SiLOX-OS-SPLASH.png /boot/grub/
mkdir /home/user/System
mkdir /home/user/System/Scripts
cp /home/user/.SiLOX-OS/etc/skel/System/Scripts/SiLOX-OS-Install /home/user/System/Scripts/
chown -R user:user /home/user/System
mkdir /home/user/.config/autostart
cp /home/user/.SiLOX-OS/etc/skel/System/Packages/SiLOX-OS-Install.desktop /home/user/.config/autostart/
chown -R user:user /home/user/.config
clear
echo
echo ------------- Copyright 2018 - SiDEUS Technologies - Dwayne Tauzin ------------
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo
echo
echo ----- Performing superuser tasks, please wait....... COMPLETED
echo ----- Preparing default user profile, please wait...
echo
echo
echo
cp -R /home/user/.SiLOX-OS/etc/skel/* /etc/skel/
cp -R /home/user/.SiLOX-OS/etc/skel/.config /etc/skel/
cp -R /home/user/.SiLOX-OS/etc/skel/.conkyrc /etc/skel/
cp -R /home/user/.SiLOX-OS/etc/skel/.fonts /etc/skel/
cp -R /home/user/.SiLOX-OS/etc/skel/.gconf /etc/skel/
cp -R /home/user/.SiLOX-OS/etc/skel/.gimp-2.8 /etc/skel/
cp -R /home/user/.SiLOX-OS/etc/skel/.icons /etc/skel/
cp -R /home/user/.SiLOX-OS/etc/skel/.local /etc/skel/
cp -R /home/user/.SiLOX-OS/etc/skel/.mozilla /etc/skel/
cp -R /home/user/.SiLOX-OS/etc/skel/.themes /etc/skel/
cp -R /home/user/.SiLOX-OS/etc/skel/.vnc /etc/skel/
#
clear
echo
echo ------------- Copyright 2018 - SiDEUS Technologies - Dwayne Tauzin ------------
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo
echo
echo ----- Performing superuser tasks, please wait....... COMPLETED
echo ----- Preparing default user profile, please wait... COMPLETED
echo ----- Preparing root desktop profile, please wait...
echo
echo
echo
#
cp -R /home/user/.SiLOX-OS/root/* /root/
cp -R /home/user/.SiLOX-OS/root/.config /root/
cp -R /home/user/.SiLOX-OS/root/.conkyrc /root/
cp -R /home/user/.SiLOX-OS/root/.fonts /root/
cp -R /home/user/.SiLOX-OS/root/.gconf /root/
cp -R /home/user/.SiLOX-OS/root/.gimp-2.8 /root/
cp -R /home/user/.SiLOX-OS/root/.icons /root/
cp -R /home/user/.SiLOX-OS/root/.local /root/
cp -R /home/user/.SiLOX-OS/root/.mozilla /root/
cp -R /home/user/.SiLOX-OS/root/.themes /root/
#
clear
echo
echo ------------- Copyright 2018 - SiDEUS Technologies - Dwayne Tauzin ------------
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo
echo
echo ----- Performing superuser tasks, please wait....... COMPLETED
echo ----- Preparing default user profile, please wait... COMPLETED
echo ----- Preparing root desktop profile, please wait... COMPLETED
echo
echo
echo
echo --------------------- Preinstall process is now complete... -------------------
echo
echo ----------------------- CONFIGURING BOOT... PLEASE WAIT... --------------------
echo
echo
echo
update-grub
update-initramfs -u
exit

