#!/bin/sh
ubus call version set_sn_imei_info '{"imei":"0"}'
wget http://192.168.1.5/R051.bin -O /tmp/firmware.bin
mtd -r write /tmp/firmware.bin /dev/mtd4

