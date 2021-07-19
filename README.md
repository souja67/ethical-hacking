## Getting Started

### Prerequisites

This is the list of prerequisite software you need to deploy the sandbox ethical hacking environment.

Git
* Download Git from here: https://github.com/git-for-windows/git/releases/download/v2.32.0.windows.2/Git-2.32.0.2-64-bit.exe

Vagrant
* Download Vagrant from here: https://releases.hashicorp.com/vagrant/2.2.17/vagrant_2.2.17_x86_64.msi

Oracle VirtualBox
* Download VirtaulBox from here: https://download.virtualbox.org/virtualbox/6.1.22/VirtualBox-6.1.22-144080-Win.exe


### Deployment

1. Clone the repo
   ```sh
   git clone https://github.com/souja67/ethical-hacking.git

2. Change to repository directory
   ```sh
   cd /ethcical-hacking

3. Deploy Ethical Hacking Environment (Will take some time depending on internet connection)
   ```sh
   vagrant up; vagrant ssh kali

## Demo #1

1. Turn on monitor mode
    ```sh
    airmon-ng start wlan0

2. Set Wireless Card Offline 
    ```sh
    sudo ifconfig wlan0 down

3. Change MAC Address
    ```sh
    macchanger -r wlan0
    
## Demo #2

1. 

## Demo #3

1. 