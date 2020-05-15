# DenOS - Arch Linux build from scratch with pacstrap
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 05.15.20

# denos_get_started.sh - Initial Pre-Req Download Script.
# Execute the following command in a Terminal to get started the DenOS download scripts...
# wget https://raw.githubusercontent.com/dinooz/denos/arch/master/denos_get_started.sh
# chmod 755 denos_get_started.sh
# ./denos_get_started.sh

wget https://github.com/dinooz/denos/arch/raw/master/Denos_HowTo.txt
wget https://github.com/dinooz/denos/arch/raw/master/01_denos_pre_reqs.sh
wget https://github.com/dinooz/denos/arch/raw/master/02_denos_genfstab.sh
wget https://github.com/dinooz/denos/arch/raw/master/03_denos_chroot.sh
wget https://github.com/dinooz/denos/raw/master/denos_config.txt
wget https://github.com/dinooz/denos/raw/master/denos_clean.sh

chmod 755 *.sh

