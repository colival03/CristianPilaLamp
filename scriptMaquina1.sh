# Esta es la maquina virtual que se utilizara como servidor.

config.vm.define "Maquina2" do |m1|
	m1.vm.hostname = "Cristian"
	m1.vm.network "forwarded_port", guest: 80, host: 8001
        m1.vm.network "private_network", ip:  "192.168.3.3"
 end

config.vm.network "private_network", ip: "192.168.33.10" # Configurar las opciones de la red.

config.vm.provision "shell", path: "script.sh" # Esta parte va en el vagrantfile.

config.vm.provision "shell", inline: <<-SHELL # En esta maquina instalaremos nuestro servidor apache.
apt-get update
apt-get upgrade
apt-get install -y apache2
apt-get install -y php libapache2-mod-php php-mysql