# Esta maquina virtual se utilizara como cliente .

config.vm.provision "shell", inline: <<-SHELL # En esta maquina instalaremos nuestro gestor de base de datos.
apt-get update
apt-get upgrade
apt-get install -y maridb 