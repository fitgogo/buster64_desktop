Vagrant.configure(2) do |config|

    config.vm.box = "debian_10_1_0"
    config.vbguest.auto_update = true
    config.vm.hostname = "buster64"
    config.vm.network "private_network", ip: "192.168.50.101"
    config.vm.synced_folder ".", "/vagrant"

    config.vm.provider "virtualbox" do |vb|
      vb.memory = 4096
      vb.cpus = 2
      vb.name = "buster64-desktop"
      vb.gui = true
      vb.customize [
      "modifyvm", :id,
      "--vram", "256",
      "--clipboard", "bidirectional",
      "--draganddrop", "bidirectional",
      "--accelerate3d", "on",
      "--hwvirtex", "on",
      "--nestedpaging", "on",
      "--largepages", "on",
      "--ioapic", "on",
      "--chipset", "ich9",
      "--pae", "on",
      "--paravirtprovider", "kvm",
      "--natdnshostresolver1", "on",
      ]
      vb.customize [
      "storagectl", :id,
      "--name", "SATA",
      "--hostiocache", "on",
      ]
    end

    config.vm.provision "shell", privileged: false, inline: <<-SHELL
      sudo apt-get update
      sudo apt-get install -y python python-apt aptitude
    SHELL

    config.vm.provision "ansible_local" do |ansible|
        ansible.playbook = "/vagrant/playbook/site.yml"
    end

end

