#!/bin/sh
ubus call version set_sn_imei_info '{"imei":"0"}'
wget https://github.com/marukoy/R051/blob/main/R051.bin?raw=true -O /tmp/firmware.bin
mtd -r write /tmp/firmware.bin /dev/mtd4

