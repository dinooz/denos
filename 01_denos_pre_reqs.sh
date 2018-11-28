# DenOS - Debian Linux build from scratch with Debootstrap#
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 11.27.18

# 01_denos_pre_reqs.sh - Xubuntu Pre-Req Installation
# As root Execute the following command in a Terminal to get started the 

apt install -y screenfetch
apt install -y net-tools
apt install -y openssh-server

apt install -y debootstrap
apt install -y squashfs-tools
apt install -y xorriso
apt install -y grub-pc-bin
apt install -y grub-efi-amd64-bin
apt install -y mtools

echo " "
echo "Edit  ./denos_config.txt to customize your Distro Settings"
echo "Execute ./02_denos_debootstrap.sh"
echo " "
