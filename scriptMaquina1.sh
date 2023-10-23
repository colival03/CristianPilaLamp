# Esta es la maquina virtual que se utilizara como servidor.

 config.vm.box = "debian/buster64"

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

apt-get update
apt-get install -y apache2
apt-get install -y php libapache2-mod-php php-mysql
sudo /etc/init.d/apache2 restart
cd /var/www/html
wget https://github.com/vrana/adminer/releases/download/v4.3.1/adminer
-4.3.1-mysql.php
mv adminer-4.3.1-mysql.php adminer.php