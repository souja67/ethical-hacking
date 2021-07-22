#!/bin/bash -v

echo Remove RTL8187 Module
rmmod rtl8187
rfkill block all
rfkill unblock all
echo Add RTL8187 Module
modprobe rtl8187
rfkill unblock all
echo Bring wlan0 Up
ifconfig wlan0 up