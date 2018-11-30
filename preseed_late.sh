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
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Downloading the SiLOX OS compressed repo, please wait...
echo
echo
echo
cd /home/user/Downloads
wget https://www.dropbox.com/s/ucenpdblgodkh68/SiLOX\ OS\ Setup.zip -q --show-progress
unzip /home/user/Downloads/SiLOX\ OS\ Setup.zip
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Performing 1st superuser tasks, please wait...
echo
echo
echo
#
mv /home/user/Downloads/SiLOX\ OS\ Setup/SiLOX-OS /home/user/.SiLOX-OS
echo user | sudo cp -R /home/user/.SiLOX-OS/etc/apt/* /etc/apt/
sudo -S dpkg --add-architecture i386
sudo -S apt update
sudo -S apt upgrade
sudo -S apt dist-upgrade
sudo -S apt install -y alacarte debian-keyring preload sudo gksu laptop-detect gnome-system-tools gdebi guake gnome-system-tools gparted gpart nvidia-detect firmware-amd-graphics firmware-linux firmware-linux-free firmware-linux-nonfree firmware-misc-nonfree intel-microcode linux-headers-4.9.0-8-all linux-headers-4.9.0-8-all-i386:i386 build-essential automake clonezilla
#
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Performing 2nd superuser tasks, please wait...
echo
echo
echo
echo user | sudo cp /home/user/.SiLOX-OS/etc/sudoers /etc/
sudo -S cp /home/user/.SiLOX-OS/etc/sysctl.conf /etc/
sudo -S cp /home/user/.SiLOX-OS/etc/gdm3/daemon.conf /etc/gdm3/
sudo -S cp /home/user/.SiLOX-OS/etc/pam.d/gdm-password /etc/pam.d/
sudo -S cp /home/user/.SiLOX-OS/etc/default/grub /etc/default/
sudo -S cp /home/user/.SiLOX-OS/etc/modules /etc/
sudo -S cp -R /home/user/.SiLOX-OS/usr/* /usr/
#
sudo -S cp /home/user/.SiLOX-OS/etc/lsb-release /etc/
sudo -S cp /home/user/.SiLOX-OS/boot/grub/SiDEUS-SiLOX-OS-SPLASH.png /boot/grub/
mkdir /home/user/System
mkdir /home/user/System/Scripts
cp /home/user/.SiLOX-OS/etc/skel/System/Scripts/SiLOX-OS-Install /home/user/System/Scripts/
mkdir /home/user/.config/autostart
cp /home/user/.SiLOX-OS/etc/skel/System/Packages/SiLOX-OS-Install.desktop /home/user/.config/autostart/
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Performing superuser tasks.......... COMPLETED
echo ----- Preparing default user profile, please wait...
echo
echo
echo
echo user | sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/* /etc/skel/
sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.config /etc/skel/
sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.conkyrc /etc/skel/
sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.fonts /etc/skel/
sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.gconf /etc/skel/
sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.gimp-2.8 /etc/skel/
sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.icons /etc/skel/
sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.local /etc/skel/
sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.mozilla /etc/skel/
sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.themes /etc/skel/
sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.vnc /etc/skel/
#
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Performing superuser tasks.......... COMPLETED
echo ----- Preparing default user profile...... COMPLETED
echo ----- Preparing root desktop profile, please wait...
echo
echo
echo
#
echo user | sudo -S cp -R /home/user/.SiLOX-OS/root/* /root/
sudo -S cp -R /home/user/.SiLOX-OS/root/.config /root/
sudo -S cp -R /home/user/.SiLOX-OS/root/.conkyrc /root/
sudo -S cp -R /home/user/.SiLOX-OS/root/.fonts /root/
sudo -S cp -R /home/user/.SiLOX-OS/root/.gconf /root/
sudo -S cp -R /home/user/.SiLOX-OS/root/.gimp-2.8 /root/
sudo -S cp -R /home/user/.SiLOX-OS/root/.icons /root/
sudo -S cp -R /home/user/.SiLOX-OS/root/.local /root/
sudo -S cp -R /home/user/.SiLOX-OS/root/.mozilla /root/
sudo -S cp -R /home/user/.SiLOX-OS/root/.themes /root/
#
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Performing superuser tasks.......... COMPLETED
echo ----- Preparing default user profile...... COMPLETED
echo ----- Preparing root desktop profile...... COMPLETED
echo
echo
echo
echo --------------------- Preinstall process is now complete... -------------------
echo
echo ----------------------- CONFIGURING BOOT... PLEASE WAIT... --------------------
echo
echo
echo
echo user | sudo -S update-grub
sudo -S update-initramfs -u
sudo -S reboot | rm /home/user/.config/autostart/preseed_late.sh

