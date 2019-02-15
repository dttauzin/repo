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
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Download SiLOX OS Enterprise, please wait...
echo
cd /home/user/Downloads
wget https://www.dropbox.com/s/jvhlfm8uoplxvia/SiLOX\ OS\ Setup.zip -q --show-progress
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
echo ----- Download SiLOX OS Enterprise........ COMPLETED
echo
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Download SiLOX OS Enterprise........ COMPLETED
echo ----- Performing 1st superuser tasks, please wait...
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
echo ----- Download SiLOX OS Enterprise........ COMPLETED
echo ----- Performing 1st superuser tasks...... COMPLETED
echo ----- Performing 2nd superuser tasks, please wait...
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
cp /home/user/.SiLOX-OS/etc/skel/System/Packages/SiLOX-OS-Install.desktop /home/user/.config/autostart/
chmod +777 /home/user/.config/autostart/*
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Download SiLOX OS Enterprise........ COMPLETED
echo ----- Performing 1st superuser tasks...... COMPLETED
echo ----- Performing 2nd superuser tasks...... COMPLETED
echo ----- Preparing default user profile, please wait...
echo
cd /home/user/Downloads
wget https://www.dropbox.com/s/uecvxo1b8g9cstb/packages.zip -q --show-progress
unzip /home/user/Downloads/packages.zip -d /home/user/System/Packages/
wget https://www.dropbox.com/s/wsesj1gw3ojonsu/programs.zip -q --show-progress
unzip /home/user/Downloads/programs.zip -d /home/user/System/Programs/
echo user | sudo -S unzip /home/user/Downloads/packages.zip -d /etc/skel/System/Packages/
echo user | sudo -S unzip /home/user/Downloads/programs.zip -d /etc/skel/System/Programs/
echo user | chmod +777 /home/user/System/Packages/*
echo user | chmod +777 /home/user/System/Programs/*
echo user | chmod +777 /etc/skel/System/Packages/*
echo user | chmod +777 /etc/skel/System/Programs/*
rm /home/user/Downloads/*.zip
#
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Download SiLOX OS Enterprise........ COMPLETED
echo ----- Performing 1st superuser tasks...... COMPLETED
echo ----- Performing 2nd superuser tasks...... COMPLETED
echo ----- Preparing default user profile...... COMPLETED
echo ----- Preparing root desktop profile, please wait...
echo
#
echo user | sudo -S cp /home/user/.SiLOX-OS/root/* /root/
echo user | sudo -S cp /home/user/.SiLOX-OS/root/.* /root/
echo user | chmod +777 /root/System/Scripts/*
echo user | chmod +777 /root/System/Packages/*
echo user | chmod +777 /root/System/Programs/*
echo user | sudo -S chown root:root /root/*
echo user | sudo -S chown root:root /root/.*
#
clear
echo
echo ---------------- SiLOX OS Liquid Oxygen by SiDEUS Technologies ----------------
echo
echo --------------------- Copyright 2018 - SiDEUS Technologies --------------------
echo
echo
echo
echo ----- Download SiLOX OS Enterprise........ COMPLETED
echo ----- Performing 1st superuser tasks...... COMPLETED
echo ----- Performing 2nd superuser tasks...... COMPLETED
echo ----- Preparing default user profile...... COMPLETED
echo ----- Preparing root desktop profile...... COMPLETED
echo ----- Configuring menu, please wait...
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
echo ----- Download SiLOX OS Enterprise........ COMPLETED
echo ----- Performing 1st superuser tasks...... COMPLETED
echo ----- Performing 2nd superuser tasks...... COMPLETED
echo ----- Preparing default user profile...... COMPLETED
echo ----- Preparing root desktop profile...... COMPLETED
echo ----- Configuring menu.................... COMPLETED
echo ----- Initializing installation, please wait...
echo
sleep 5
rm /home/user/.config/autostart/Start-SiLOX-OS-Setup.desktop
sh /home/user/System/Scripts/SiLOX-OS-Install



