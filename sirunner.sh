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
	in-target /target/bin/cp sudoers /target/etc;     \
	in-target /target/bin/cp SiDEUS-SiLOX-OS-SPLASH.png /target/boot/grub;     \
	in-target /target/bin/cp lsb-release /target/etc;     \
	in-target /target/bin/cp grub /target/etc/default;     \
	in-target /target/bin/cp sources.list /target/etc/apt;     \
	in-target /target/bin/mkdir /target/home/user/.config;     \
	in-target /target/bin/mkdir /target/home/user/.config/autostart;     \
	in-target /target/bin/cp Start\ SiLOX\ OS\ Setup.desktop /target/home/user/.config/autostart;     \
	in-target /target/bin/chown -R user:user /target/home/user/.config;     \
	in-target /target/bin/mkdir /target/home/user/System;     \
	in-target /target/bin/mkdir /target/home/user/System/Scripts;     \
	in-target /target/bin/cp siboot.sh /target/home/user/System/Sctipts;     \
	in-target /target/bin/chown -R user:user /target/home/user/System;     \

