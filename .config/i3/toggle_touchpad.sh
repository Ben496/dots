#!/bin/bash

device_name="SYNA1202:00 06CB:CD65 Touchpad"

device_state=`xinput list-props "$device_name" | gawk '/Device Enabled/ { print $4}'`
if [ $device_state -eq 0 ]
then
	echo Enabling touchpad
	`xinput enable "SYNA1202:00 06CB:CD65 Touchpad"`
else
	echo Disabling touchpad
	`xinput disable "SYNA1202:00 06CB:CD65 Touchpad"`
fi
