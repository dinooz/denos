apt-cache search linux-image

apt-get update && \
apt-get install -y --no-install-recommends \
linux-image-686 systemd-sysv

apt-get install -y --no-install-recommends \
    network-manager net-tools wireless-tools wpagui \
    tcpdump wget openssh-client openssh-server \
    blackbox xserver-xorg-core xserver-xorg x11-xserver-utils \
    xinit xterm \
    pciutils usbutils gparted nano \
    screen screenfetch psmisc htop

# UUID=`blkid -s UUID -o value /dev/sda1` && \
# echo "UUID=${UUID} / ext4 defaults 1 1" > /etc/fstab

echo -e "/dev/sda1\t/\text4\tdefaults\t1\t1" > /etc/fstab

apt-get install -y grub2

passwd root

exit
