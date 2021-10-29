
# Prepare Pi4 for PXE boot

##  Auto:
>   wget https://github.com/repo/scripts/script.sh

##  Manual:
-   Run this command to see the current boot order configuration
>   vcgencmd bootloader_config | grep BOOT_ORDER | cut -d '=' -f 2

#### The BOOT_ORDER codes are as follows:
-   0xf41 - Try SD first, followed by USB-MSD then repeat (default if BOOT_ORDER is empty)
-   0xf14 - Try USB first, followed by SD then repeat
-   0xf21 - Try SD first, followed by NETWORK then repeat

#### Grab a copy of a netboot compatible bootloader
>   wget https://github.com/raspberrypi/rpi-eeprom/raw/master/firmware/stable/pieeprom-2020-07-31.bin

#### Extract bootconf.txt
>   sudo rpi-eeprom-config pieeprom-2020-07-31.bin > bootconf.txt

#### Update BOOT_ORDER
>   sed -i 's/BOOT_ORDER=.*/BOOT_ORDER=0xf21/g' bootconf.txt
>   sudo rpi-eeprom-config --out bootloader.bin --config bootconf.txt pieeprom-2020-07-31.bin