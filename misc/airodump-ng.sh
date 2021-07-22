#!/bin/bash

ifconfig | grep wlan0 && ifconfig wlan0 down
sleep 1
ifconfig wlan0 up
sleep 1
airmon-ng check kill
sleep 1
airmon-ng start wlan0
sleep 1
ifconfig wlan0 down
sleep 1
macchanger -r wlan0
sleep 1
ifconfig wlan0 up
sleep 1
airodump-ng wlan0