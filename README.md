# Getting Started

## Information  

**Kali Linux** is a Debian-derived Linux distribution designed for digital forensics and penetration testing. It is maintained and funded by Offensive Security.

* https://www.kali.org/docs/

## Prerequisites

This is the list of prerequisite software you need to deploy the sandbox ethical hacking environment.

Git
* Download Git from here: https://github.com/git-for-windows/git/releases/download/v2.32.0.windows.2/Git-2.32.0.2-64-bit.exe

Vagrant
* Download Vagrant from here: https://releases.hashicorp.com/vagrant/2.2.17/vagrant_2.2.17_x86_64.msi

Oracle VirtualBox
* Download VirtaulBox from here: https://download.virtualbox.org/virtualbox/6.1.22/VirtualBox-6.1.22-144080-Win.exe

## Needed Hardware

Wireless Adapter that supports monitor mode and packet injection
* Suggested: 
    * https://amzn.to/3ilyAmq
    * https://amzn.to/2TkbJz5


# Deployment

1. Clone the repo
   ```sh
   git clone https://github.com/souja67/ethical-hacking.git

2. Change to repository directory
   ```sh
   cd .\ethcical-hacking\

3. Deploy Ethical Hacking Environment (Will take some time depending on internet connection)
   ```sh
   vagrant up; vagrant ssh kali

# Demo #1

## Demo Questions

* How many channels are available on 2.4Ghz Wifi frequency?

* What's the purpose of changing the MAC Address of the wireless adapter used to perform wireless attacks?

* Does hiding your SSID protect your wireless network from wireless attacks?

* What measures can be taken to secure a wireless network?
<br>
<br>

## Wireless Penetration Testing Demo

1. Login to Kali Linux virtual machine <br>
    ```sh
    username: vagrant
    password: vagrant

![Alt text](/screenshots/image001.png?raw=true)

2. Open Terminal; Check to make sure wireless adapter exist
    ```sh
    sudo ifconfig

3. Change wireless adapter to monitor mode 
    ```sh
    sudo airmon-ng start wlan0

4. Set wireless adapter offline
    ```sh
    sudo ifconfig wlan0 down    

5. Change MAC Address
    ```sh
    sudo macchanger -r wlan0

6. Start wireless sniffing session
    ```sh
    sudo airodump-ng wlan0