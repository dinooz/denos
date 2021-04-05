# DenOS - Debian Linux build from scratch with Debootstrap#
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 11.27.18

# 02_denos_debootstrap.sh - Debootstrap our Distro
# As user Execute the script in a Terminal 

# export LIVE_BOOT=LIVE_BOOT64
source denos_config.txt

mkdir $HOME/$LIVE_BOOT

sudo debootstrap \
--arch=amd64 \
--variant=minbase \
stable \
$HOME/$LIVE_BOOT/chroot \
http://ftp.us.debian.org/debian

sudo cp ./03_*.sh $HOME/$LIVE_BOOT/chroot
sudo cp ./denos_config.txt $HOME/$LIVE_BOOT/chroot

sudo chroot $HOME/$LIVE_BOOT/chroot
