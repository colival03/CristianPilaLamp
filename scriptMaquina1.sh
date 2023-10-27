# Esta es la maquina virtual que se utilizara como servidor.

# En esta maquina instalaremos nuestro servidor apache.

echo "Actualizacion del sistema"
echo "****************************"
apt-get update
apt-get upgrade

echo "Ahora se va a instalar el servidor apache y php"
apt-get install -y apache2
apt-get install -y php libapache2-mod-php php-mysql

echo "Por ultimo se va a reiniciar el seervidor para guardar cambios."
sudo /etc/init.d/apache2 restart