#!/bin/sh
ubus call version set_atcmd_info '{"atcmd":"AT*PROD=2"}'
ubus call version set_atcmd_info '{"atcmd":"AT*MRD_MEP=D"}
ubus call version set_atcmd_info '{"atcmd":"AT*PROD=0"}'
echo -e "AT*PROD=2\r\n" > /dev/ttyACM0
sleep 1
echo -e "AT*MRD_MEP=D\r\n" > /dev/ttyACM0
sleep 1
echo -e "AT*PROD=0\r\n" > /dev/ttyACM0
