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
echo user | cd /home/user/Downloads
echo user | wget https://www.dropbox.com/s/jvhlfm8uoplxvia/SiLOX\ OS\ Setup.zip -O /home/user/Downloads/SiLOX\ OS\ Setup.zip -q --show-progress 
echo user | wget https://www.dropbox.com/s/qm5ja8hjgprapxu/siskel.zip -O /home/user/Downloads/siskel.zip -q --show-progress
echo user | wget https://www.dropbox.com/s/uecvxo1b8g9cstb/packages.zip -O /home/user/Downloads/packages.zip -q --show-progress
echo user | wget https://www.dropbox.com/s/wsesj1gw3ojonsu/programs.zip -O /home/user/Downloads/programs.zip -q --show-progress
echo user | unzip /home/user/Downloads/SiLOX\ OS\ Setup.zip -d /home/user/Downloads/SiLOX\ OS\ Setup
echo user | unzip /home/user/Downloads/siskel.zip -d /home/user/Downloads/SiLOX\ OS\ Setup/SiLOX-OS/etc/skel
echo user | unzip /home/user/Downloads/packages.zip -d /home/user/Downloads/SiLOX\ OS\ Setup/SiLOX-OS/etc/skel/System/Packages
echo user | unzip /home/user/Downloads/programs.zip -d /home/user/Downloads/SiLOX\ OS\ Setup/SiLOX-OS/etc/skel/System/Programs
echo user | rm /home/user/Downloads/SiLOX\ OS\ Setup.zip
echo user | rm /home/user/Downloads/siskel.zip
echo user | rm /home/user/Downloads/packages.zip
echo user | rm /home/user/Downloads/programs.zip
echo user | rm /home/user/Downloads/*.zip
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
echo user | mv /home/user/Downloads/SiLOX\ OS\ Setup/SiLOX-OS /home/user/.SiLOX-OS
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
echo user | sudo -S cp /home/user/.SiLOX-OS/etc/modules /etc/
echo user | sudo -S cp /home/user/.SiLOX-OS/usr/* /usr/
#
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



