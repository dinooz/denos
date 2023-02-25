# DenOS - Debian Linux build from scratch with Debootstrap#
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 11.27.18

# 03_denos_chroot.sh - Customize your Distro
# As root in chroot. Execute the script in a Terminal 
# ./03_denos_chroot.sh

# export LIVE_BOOT=LIVE_BOOT64
source ./denos_config.txt

#  > /etc/hostname
echo $DISTRO_HOSTNAME > /etc/hostname 

apt-cache search linux-image

apt-get update && \
apt-get install -y --no-install-recommends \
    linux-image-amd64 \
    live-boot \
    systemd-sysv

apt-get install -y --no-install-recommends \
    network-manager net-tools wireless-tools wpagui \
    curl openssh-server openssh-client \
    blackbox xserver-xorg-core xserver-xorg xinit xterm \
    screenfetch screen lxterminal vim iputils-ping \
    psmisc htop nmap wget git ca-certificates \
    nano fdisk && \
apt-get clean

echo -e "127.0.0.1\tlocalhost" > /etc/hosts
echo -e "127.0.0.1\t$DISTRO_HOSTNAME" >> /etc/hosts

# Create live user
#useradd -m live -s /bin/bash
# Change user live password to : newpassword
#echo 'live:live' | chpasswd  

passwd root

exit
