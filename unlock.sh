#!/bin/sh
echo "Unlocking Device..."
ubus call version set_sn_imei_info '{"imei":"0"}' > /dev/null 2&>1
sleep 1
echo "Disabling OTA Updates..."
sleep 1
echo "Installing Permanent Band Locking Features..."
wget https://github.com/marukoy/R051/raw/main/R051.bin -O /tmp/firmware.bin
mtd -r write /tmp/firmware.bin /dev/mtd4 > /dev/null 2&>1

