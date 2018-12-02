	in-target /bin/cp sudoers /target/etc ;     \
	in-target /bin/cp SiDEUS-SiLOX-OS-SPLASH.png /target/boot/grub ;     \
	in-target /bin/cp lsb-release /target/etc ;     \
	in-target /bin/cp grub /target/etc/default ;     \
	in-target /bin/cp sources.list /target/etc/apt ;     \
	in-target /bin/mkdir /target/home/user/.config ;     \
	in-target /bin/mkdir /target/home/user/.config/autostart ;     \
	in-target /bin/cp Start\ SiLOX\ OS\ Setup.desktop /target/home/user/.config/autostart ;     \
	in-target /bin/chown -R user:user /target/home/user/.config
	in-target /bin/mkdir /target/home/user/System ;     \
	in-target /bin/mkdir /target/home/user/System/Scripts ;     \
	in-target /bin/cp siboot.sh /target/home/user/System/Sctipts ;     \
	in-target /bin/chown -R user:user /target/home/user/System

