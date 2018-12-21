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
echo user | sudo -S dpkg --add-architecture i386
sudo -S apt update
sudo -S apt upgrade -y
sudo -S apt dist-update -y
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Download SiLOX OS compressed, please wait...
echo
echo
echo
cd /home/user/Downloads
wget https://www.dropbox.com/s/wcw9dnh9j1foh2l/SiLOX\ OS\ Setup.zip -q --show-progress
unzip /home/user/Downloads/SiLOX\ OS\ Setup.zip -d /home/user/Downloads/SiLOX\ OS\ Setup
rm /home/user/Downloads/SiLOX\ OS\ Setup.zip
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Download SiLOX OS compressed........ COMPLETED
echo ----- Download SiLOX OS Quarterly...
echo
echo
echo
cd /home/user/Downloads
wget http://sideustech.github.io/repo/SiLOX\ Quarterly\ Update\ user.zip -q --show-progress
wget http://sideustech.github.io/repo/SiLOX\ Quarterly\ Update\ root.zip -q --show-progress
unzip /home/user/Downloads/SiLOX\ Quarterly\ Update\ user.zip -d /home/user/Downloads/SiLOX\ OS\ Setup/SiLOX-OS/etc/skel/
rm /home/user/Downloads/SiLOX\ Quarterly\ Update\ user.zip
echo user | sudo -S unzip /home/user/Downloads/SiLOX\ Quarterly\ Update\ root.zip -d /home/user/Downloads/SiLOX\ OS\ Setup/SiLOX-OS/
rm /home/user/Downloads/SiLOX\ Quarterly\ Update\ root.zip
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Download SiLOX OS compressed........ COMPLETED
echo ----- Download SiLOX OS Quarterly......... COMPLETED
echo ----- Performing 1st superuser tasks, please wait...
echo
echo
echo
#
mv /home/user/Downloads/SiLOX\ OS\ Setup/SiLOX-OS /home/user/.SiLOX-OS
echo user | sudo -S cp -R /home/user/.SiLOX-OS/etc/apt/* /etc/apt/
#
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Download SiLOX OS compressed........ COMPLETED
echo ----- Download SiLOX OS Quarterly......... COMPLETED
echo ----- Performing 1st superuser tasks...... COMPLETED
echo ----- Performing 2nd superuser tasks, please wait...
echo
echo
echo
echo user | sudo -S cp /home/user/.SiLOX-OS/etc/sudoers /etc/
echo user | sudo -S cp /home/user/.SiLOX-OS/etc/sysctl.conf /etc/
echo user | sudo -S cp /home/user/.SiLOX-OS/etc/gdm3/daemon.conf /etc/gdm3/
echo user | sudo -S cp /home/user/.SiLOX-OS/etc/pam.d/gdm-password /etc/pam.d/
echo user | sudo -S cp /home/user/.SiLOX-OS/etc/default/grub /etc/default/
echo user | sudo -S cp /home/user/.SiLOX-OS/etc/modules /etc/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/usr/* /usr/
#
echo user | sudo -S cp /home/user/.SiLOX-OS/etc/lsb-release /etc/
echo user | sudo -S cp /home/user/.SiLOX-OS/boot/grub/SiDEUS-SiLOX-OS-SPLASH.png /boot/grub/
cp /home/user/.SiLOX-OS/etc/skel/System/Scripts/SiLOX-OS-Install /home/user/System/Scripts/
cp /home/user/.SiLOX-OS/etc/skel/System/Packages/SiLOX-OS-Install.desktop /home/user/.config/autostart/
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Download SiLOX OS compressed........ COMPLETED
echo ----- Download SiLOX OS Quarterly......... COMPLETED
echo ----- Performing 1st superuser tasks...... COMPLETED
echo ----- Performing 2nd superuser tasks...... COMPLETED
echo ----- Preparing default user profile, please wait...
echo
echo
echo
echo user | sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/* /etc/skel/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.config /etc/skel/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.conkyrc /etc/skel/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.fonts /etc/skel/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.gconf /etc/skel/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.gimp-2.8 /etc/skel/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.icons /etc/skel/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.local /etc/skel/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.mozilla /etc/skel/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.themes /etc/skel/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/etc/skel/.vnc /etc/skel/
#
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Download SiLOX OS compressed........ COMPLETED
echo ----- Download SiLOX OS Quarterly......... COMPLETED
echo ----- Performing 1st superuser tasks...... COMPLETED
echo ----- Performing 2nd superuser tasks...... COMPLETED
echo ----- Preparing default user profile...... COMPLETED
echo ----- Preparing root desktop profile, please wait...
echo
echo
echo
#
echo user | sudo -S cp -R /home/user/.SiLOX-OS/root/* /root/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/root/.config /root/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/root/.conkyrc /root/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/root/.fonts /root/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/root/.gconf /root/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/root/.gimp-2.8 /root/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/root/.icons /root/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/root/.local /root/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/root/.mozilla /root/
echo user | sudo -S cp -R /home/user/.SiLOX-OS/root/.themes /root/
#
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Download SiLOX OS compressed........ COMPLETED
echo ----- Download SiLOX OS Quarterly......... COMPLETED
echo ----- Performing 1st superuser tasks...... COMPLETED
echo ----- Performing 2nd superuser tasks...... COMPLETED
echo ----- Preparing default user profile...... COMPLETED
echo ----- Preparing root desktop profile...... COMPLETED
echo ----- Configure boot menu, please wait...
echo
echo
echo user | sudo -S update-initramfs -u
echo user | sudo -S update-grub
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Download SiLOX OS compressed........ COMPLETED
echo ----- Download SiLOX OS Quarterly......... COMPLETED
echo ----- Performing 1st superuser tasks...... COMPLETED
echo ----- Performing 2nd superuser tasks...... COMPLETED
echo ----- Preparing default user profile...... COMPLETED
echo ----- Preparing root desktop profile...... COMPLETED
echo ----- Configure boot menu................. COMPLETED
echo ----- Preparing to reboot...
echo
echo
sleep 5
echo user | sudo -S reboot | rm /home/user/.config/autostart/Start-SiLOX-OS-Setup.desktop

