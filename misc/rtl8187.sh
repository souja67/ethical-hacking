#!/bin/bash

echo Remove RTL8187 Module
rmmod rtl8187
sleep 1
rfkill block all
sleep 1
rfkill unblock all
sleep 1
echo Add RTL8187 Module
modprobe rtl8187
sleep 1
rfkill unblock all
sleep 1
echo Bring wlan0 Up
ifconfig wlan0 up