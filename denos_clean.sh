# DenOS - Debian Linux build from scratch with Debootstrap#
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 11.27.18

# denos_clean.sh - Clean DenOS Installation
# As user Execute the script in a Terminal 

# export LIVE_BOOT=LIVE_BOOT64
source denos_config.txt

 
sudo rm -R -f $HOME/$LIVE_BOOT

sudo rm -R -f ./0*.sh
sudo rm -R -f ./*.txt
