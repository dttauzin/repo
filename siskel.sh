#!/bin/bash
#
# This script is for
# SiDEUS Technologies
# SiDEUS Computers
# SiLOX OS (Liquid Oxygen)
# Copyright 2018 - SiDEUS Technologies - Dwayne Tauzin - d.tauzin@gmail.com
#
wget https://www.dropbox.com/s/qm5ja8hjgprapxu/siskel.zip -O /tmp/siskel.zip ;     \
unzip /tmp/siskel.zip -d /etc/skel/ ;     \
unzip /tmp/siskel.zip -d /home/user/ ;     \
chmod +777 /etc/skel/System/Scripts/* ;     \
chmod +777 /etc/skel/.local/share/nautilus/scripts/* ;     \
chmod +777 /home/user/System/Scripts/* ;     \
chmod +777 /home/user/.local/share/nautilus/scripts/* ;     \
rm /tmp/siskel.zip ;     \
chown -R user:user /home/user/* ;     \
chown -R user:user /home/user/.*







