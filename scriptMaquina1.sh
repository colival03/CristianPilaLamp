# Esta es la maquina virtual que se utilizara como servidor.

config.vm.network "private_network", ip: "192.168.33.10" # Configurar las opciones de la red.

config.vm.provision "shell", path: "script.sh" # Esta parte va en el vagrantfile.

config.vm.provision "shell", inline: <<-SHELL # En esta maquina instalaremos nuestro servidor apache.
apt-get update
apt-get upgrade
apt-get install -y apache2  