# DenOS - Debian Linux build from scratch with Debootstrap#
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 11.27.18

# 05_denos_BiosUEFI_ISO.sh - Create your Distro ISO
# As user. Execute the script in a Terminal 
# ./05_denos_BiosUEFI_ISO.sh

# export LIVE_BOOT=LIVE_BOOT64
source ./denos_config.txt

grub-mkstandalone \
    --format=x86_64-efi \
    --output=$HOME/$LIVE_BOOT/scratch/bootx64.efi \
    --locales="" \
    --fonts="" \
    "boot/grub/grub.cfg=$HOME/$LIVE_BOOT/scratch/grub.cfg"

(cd $HOME/$LIVE_BOOT/scratch && \
    dd if=/dev/zero of=efiboot.img bs=1M count=10 && \
    mkfs.vfat efiboot.img && \
    mmd -i efiboot.img efi efi/boot && \
    mcopy -i efiboot.img ./bootx64.efi ::efi/boot/
)

grub-mkstandalone \
    --format=i386-pc \
    --output=$HOME/$LIVE_BOOT/scratch/core.img \
    --install-modules="linux normal iso9660 biosdisk memdisk search tar ls" \
    --modules="linux normal iso9660 biosdisk search" \
    --locales="" \
    --fonts="" \
    "boot/grub/grub.cfg=$HOME/$LIVE_BOOT/scratch/grub.cfg"

cat \
    /usr/lib/grub/i386-pc/cdboot.img \
    $HOME/$LIVE_BOOT/scratch/core.img \
> $HOME/$LIVE_BOOT/scratch/bios.img

xorriso \
    -as mkisofs \
    -iso-level 3 \
    -full-iso9660-filenames \
    -volid "DEBIAN_CUSTOM" \
    -eltorito-boot \
        boot/grub/bios.img \
        -no-emul-boot \
        -boot-load-size 4 \
        -boot-info-table \
        --eltorito-catalog boot/grub/boot.cat \
    --grub2-boot-info \
    --grub2-mbr /usr/lib/grub/i386-pc/boot_hybrid.img \
    -eltorito-alt-boot \
        -e EFI/efiboot.img \
        -no-emul-boot \
    -append_partition 2 0xef ${HOME}/$LIVE_BOOT/scratch/efiboot.img \
    -output "${HOME}/$LIVE_BOOT/$DISTRO_NAME-$VERSION.iso" \
    -graft-points \
        "${HOME}/$LIVE_BOOT/image" \
        /boot/grub/bios.img=$HOME/$LIVE_BOOT/scratch/bios.img \
        /EFI/efiboot.img=$HOME/$LIVE_BOOT/scratch/efiboot.img


ls -lh $HOME/$LIVE_BOOT/*.iso
