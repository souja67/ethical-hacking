# DISCLAIMER

This information provided as knowledge is for informational and educational purpose only. Please do not attempt to violate the law with anything obtained from here. The misuse of the information in this repository can result in criminal charges brought against any person(s) in question.

**DON'T BE EVIL!** 

## What is Ethical Hacking?

Ethical hacking involves an authorized attempt to gain unauthorized access to a computer system, application, or data. Carrying out an ethical hack involves duplicating strategies and actions of malicious attackers. This practice helps to identify security vulnerabilities which can then be resolved before a malicious attacker has the opportunity to exploit them.

Also known as “white hats,” ethical hackers are security experts that perform these assessments. The proactive work they do helps to improve an organization’s security posture. With prior approval from the organization or owner of the IT asset, the mission of ethical hacking is opposite from malicious hacking.

* source: https://www.synopsys.com/glossary/what-is-ethical-hacking.html

# Getting Started

## Information & Resources

**Kali Linux** - Debian-derived Linux distribution designed for digital forensics and penetration testing. It is maintained and funded by Offensive Security.

* https://www.kali.org/docs/

**Aircrack-NG** - Aircrack-ng is a complete suite of tools to assess WiFi network security. It focuses on multiple areas of WiFi security: Monitoring, Attacking, Testing, and Cracking.

* https://www.aircrack-ng.org/

**Metasploit** - Knowledge is power, especially when it’s shared. A collaboration between the open source community and Rapid7, Metasploit helps security teams do more than just verify vulnerabilities, manage security assessments, and improve security awareness; it empowers and arms defenders to always stay one step (or two) ahead of the game.

* https://www.metasploit.com/

**Metaspoloitable3** - a free virtual machine that allows you to simulate attacks largely using Metasploit. It has been used by people in the security industry for a variety of reasons: such as training for network exploitation, exploit development, software testing, technical job interviews, sales demonstrations, or CTF junkies who are looking for kicks, etc :-)

* https://www.rapid7.com/blog/post/2016/11/15/test-your-might-with-the-shiny-new-metasploitable3/


# Prerequisites

This is the list of prerequisite software you need to deploy the sandbox ethical hacking environment.

**Git**
* Download Git from here: https://github.com/git-for-windows/git/releases/download/v2.32.0.windows.2/Git-2.32.0.2-64-bit.exe

**Vagrant**
* Download Vagrant from here: https://releases.hashicorp.com/vagrant/2.2.17/vagrant_2.2.17_x86_64.msi

**Oracle VirtualBox**
* Download VirtaulBox from here: https://download.virtualbox.org/virtualbox/6.1.22/VirtualBox-6.1.22-144080-Win.exe

## Needed Hardware

A wireless Adapter that supports monitor mode and packet injection
* Suggested: 
    * Alfa AWUS036ACS 802.11ac AC600 Wi-Fi Wireless Network Adapter - https://amzn.to/2TkbJz5
    * Alfa AWUS036NHA - Wireless B/G/N USB Adaptor - https://amzn.to/3ilyAmq
    


# Deployment

1. Open Powershell; Clone the repo
   ```sh
   git clone https://github.com/souja67/ethical-hacking.git

2. Change to repository directory
   ```sh
   cd .\ethcical-hacking\

3. Install Virtualbox Extension Pack
    ```sh
    & "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" extpack install .\misc\Oracle_VM_VirtualBox_Extension_Pack-6.1.24.vbox-extpack

4. Accept License Agreement
    ```sh
    Type 'y' to accept; press Enter

5. Deploy initial Ethical Hacking Environment (Will take some time depending on internet connection)
   ```sh
   vagrant up

6. Need to shutdown our virtual environment temporarily
   ```sh
   vagrant halt

7. Enable USB access to our Kali Linux virtual machine
   

# Demo #1

## Demo Questions

* How many channels are available on 2.4Ghz Wifi frequency?

* Why do we need to change the mode of the wireless adapter used for wireless attacks?

* What's the purpose of changing the MAC Address of the wireless adapter used to perform wireless attacks?

* Does hiding your SSID protect your wireless network from wireless attacks?

* What measures can be taken to secure a WiFi network?
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
    sudo ifconfig | grep wlan0

3. Kill any potential problem processes within Kali Linux virtual machine
    ```sh
    sudo airmon-ng check kill

4. Set wireless adapter to monitor mode (Managed mode by default)
    ```sh
    sudo airmon-ng start wlan0

5. Set wireless adapter offline
    ```sh
    sudo ifconfig wlan0 down    

6. Change MAC Address
    ```sh
    sudo macchanger -r wlan0

7. Start sniffing wireless packets
    ```sh
    sudo airodump-ng wlan0

8. Find target wifi access point to be PWND!
