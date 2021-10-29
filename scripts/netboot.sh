# Grab a copy of a netboot compatible bootloader
wget https://github.com/raspberrypi/rpi-eeprom/raw/master/firmware/stable/pieeprom-2020-07-31.bin
# Extract bootconf.txt
sudo rpi-eeprom-config pieeprom-2020-07-31.bin > bootconf.txt
# Update BOOT_ORDER
sed -i 's/BOOT_ORDER=.*/BOOT_ORDER=0xf21/g' bootconf.txt
sudo rpi-eeprom-config --out bootloader.bin --config bootconf.txt pieeprom-2020-07-31.bin