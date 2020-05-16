# DenOS - Arch Linux build from scratch with pacstrap
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 05.15.20

# 03_denos_chroot.sh - Customize your Distro
# As root in chroot. Execute the script in a Terminal 
# ./03_denos_chroot.sh

source /denos_config.txt

# vim /etc/locale.gen
# Uncomment ur damn language on that file(remove #)
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen

echo "LANG=en_US.UTF-8" > /etc/locale.conf
export LANG=en_US.UTF-8

# Locale
locale-gen

# Time zone
ln -s /usr/share/zoneinfo/$DISTRO_TIMEZONE /etc/localtime

# Hardware Clock
hwclock --systohc

# Set Hostname
echo $DISTRO_NAME > /etc/hostname 

# Setup Network Automatically
systemctl enable NetworkManager

# Set root password
passwd root

# Install Grub
pacman -S grub os-prober
grub-install --recheck /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

# Clean files
rm /03_*.sh 
rm /denos_config.txt 

exit
