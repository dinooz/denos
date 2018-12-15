echo -e "o\nn\np\n1\n\n\nw" | sudo fdisk /dev/sda

echo -e "a\nw\n" | sudo fdisk /dev/sda

mkfs.ext4 /dev/sda1

mkdir -p /mnt/denos
mount /dev/sda1 /mnt/denos

debootstrap \
--arch=i386 \
--variant=minbase \
stretch /mnt/denos http://ftp.us.debian.org/debian/

mount -o bind /dev /mnt/dev

mount -t proc /proc /mnt/proc

chroot /mnt/denos
