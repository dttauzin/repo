
	/target/bin/cp sudoers /target/etc;
	#in-target /bin/cp http://sideustech.github.io/repo/SiDEUS-SiLOX-OS-SPLASH.png /boot/grub;
	#in-target /bin/cp lsb-release /etc ;     \
	#in-target /bin/cp grub /etc/default ;     \
	#in-target /bin/cp sources.list /etc/apt ;     \
	#in-target /bin/mkdir /home/user/.config ;     \
	#in-target /bin/mkdir /home/user/.config/autostart ;     \
	#in-target /bin/cp Start\ SiLOX\ OS\ Setup.desktop /home/user/.config/autostart ;     \
	#in-target /bin/chown -R user:user /home/user/.config
	#in-target /bin/mkdir /home/user/System ;     \
	#in-target /bin/mkdir /home/user/System/Scripts ;     \
	#in-target /bin/cp siboot.sh /home/user/System/Sctipts ;     \
	#in-target /bin/chown -R user:user /home/user/System

