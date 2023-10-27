# Esta maquina virtual se utilizara como cliente .

echo "Actualizacion del sistema."
echo "******************************"
apt-get update
apt-get upgrade

echo "Por ultimo se va a instalar el gestor de base de datos."
apt-get install -y mariadb-server-10.3