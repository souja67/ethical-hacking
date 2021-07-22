#!/bin/bash -x

ifconfig | grep wlan0 && ifconfig wlan0 down
ifconfig wlan0 up
airmon-ng check kill
airmon-ng start wlan0
ifconfig | grep wlan0 && ifconfig wlan0 down && macchanger -r wlan0
ifconfig wlan0 up
airodump-ng wlan0