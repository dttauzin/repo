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
	/target/bin/cp sudoers /target/etc;     \
	/target/bin/cp SiDEUS-SiLOX-OS-SPLASH.png /target/boot/grub;     \
	/target/bin/cp lsb-release /target/etc;     \
	/target/bin/cp grub /target/etc/default;     \
	/target/bin/cp sources.list /target/etc/apt;     \
	/target/bin/mkdir /target/home/user/.config;     \
	/target/bin/mkdir /target/home/user/.config/autostart;     \
	/target/bin/cp Start\ SiLOX\ OS\ Setup.desktop /target/home/user/.config/autostart;     \
	/target/bin/chown -R user:user /target/home/user/.config;     \
	/target/bin/mkdir /target/home/user/System;     \
	/target/bin/mkdir /target/home/user/System/Scripts;     \
	/target/bin/cp siboot.sh /target/home/user/System/Sctipts;     \
	/target/bin/chown -R user:user /target/home/user/System;     \

