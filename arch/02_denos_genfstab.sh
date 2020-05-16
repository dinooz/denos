# DenOS - Arch Linux build from scratch with pacstrap
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 05.15.20

# 02_denos_pacstrap.sh - Arch Pre-Req Installation
# As root Execute the following command in a Terminal to get started the 

# genfstab -U -p /mnt >> /mnt/etc/fstab
genfstab -U -p /mnt >> /mnt/etc/fstab

cp denos_config.txt /mnt
cp 03*.sh /mnt

echo " "
echo "Execute /03_denos_chroot.sh"
echo " "

arch-chroot /mnt
