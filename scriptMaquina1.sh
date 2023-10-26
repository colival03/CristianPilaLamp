# Esta es la maquina virtual que se utilizara como servidor.

config.vm.provision "shell", inline: <<-SHELL # En esta maquina instalaremos nuestro servidor apache.
apt-get update
apt-get upgrade
apt-get install -y apache2
apt-get install -y php libapache2-mod-php php-mysql
sudo /etc/init.d/apache2 restart