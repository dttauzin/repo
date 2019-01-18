#!/bin/bash
#
# This script is for
# SiDEUS Technologies
# SiDEUS Computers
# SiLOX OS (Liquid Oxygen)
# Copyright 2018 - SiDEUS Technologies - Dwayne Tauzin - d.tauzin@gmail.com
#
in-target /usr/bin/wget https://www.dropbox.com/s/qm5ja8hjgprapxu/siskel.zip -O /tmp/siskel.zip ;     \
in-target /usr/bin/unzip /tmp/siskel.zip -d /etc/skel/ ;     \
in-target /usr/bin/unzip /tmp/siskel.zip -d /home/user/ ;     \
in-target /bin/chmod +777 /etc/skel/System/Scripts/* ;     \
in-target /bin/chmod +777 /etc/skel/.local/share/nautilus/scripts/* ;     \
in-target /bin/chmod +777 /home/user/System/Scripts/* ;     \
in-target /bin/chmod +777 /home/user/.local/share/nautilus/scripts/* ;     \
in-target /bin/rm /tmp/siskel.zip ;     \
in-target /bin/chown -R user:user /home/user/* ;     \
in-target /bin/chown -R user:user /home/user/.*







