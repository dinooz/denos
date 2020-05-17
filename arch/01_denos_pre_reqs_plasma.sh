# DenOS - Arch Linux build from scratch with pacstrap
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 05.15.20

# 01_denos_pre_reqs_xfce.sh - Arch Pre-Req Installation
# As root Execute the following command in a Terminal to get started the 

pacstrap /mnt base base-devel linux linux-firmware grub grub-bios os-prober net-tools networkmanager mtr dhcp mkinitcpio dracut openssh vim wget screen htop xorg xorg-xinit xorg-twm xorg-xclock xterm xfce4 xfce4-goodies

echo " "
echo "Edit  ./denos_config.txt to customize your Distro Settings"
echo "Execute as root ./02_denos_genfstab.sh"
echo " "