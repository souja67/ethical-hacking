# to be able to configure typed triggers
#ENV['VAGRANT_EXPERIMENTAL'] = 'typed_triggers'

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 6024
    vb.cpus = 2
  end
  
  config.ssh.insert_key = false
  config.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key"]  

  config.vm.define "kali" do |kali|
    kali.vm.box = "kalilinux/rolling"
    kali.vm.hostname = "kali"
    #kali.vm.box_url = "ubuntu/groovy64"

    kali.vm.network "private_network", ip: "192.168.22.10"
    kali.vm.provision "file", source: "~/.vagrant.d/insecure_private_key", destination: "~/.ssh/insecure_private_key"
    kali.vm.provision "file", source: "~/.vagrant.d/insecure_private_key", destination: "/home/vagrant/.ssh/insecure_private_key"
    kali.vm.provision "shell", inline: <<-EOF
    apt-get update
    apt-get -y install git
     cd /home/vagrant
    git clone https://github.com/souja67/ethical-hacking.git
    EOF
  end

  config.vm.define "win2k8" do |ubuntu|
    ubuntu.vm.box = "rapid7/metasploitable3-win2k8"
    ubuntu.vm.hostname = "win2k8"
    ubuntu.vm.network "private_network", ip: "192.168.22.11"
    ubuntu.vm.provision "shell", inline: <<-EOF
    EOF
    
  end
end
