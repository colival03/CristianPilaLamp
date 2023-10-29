# CristianPilaLamp

## Índice

1. [Configuración del servidor apache](#configuración-del-servidor-apache)
  2. [Paso 1](#paso-1)
  3. [Paso 2](#paso-2)
  4. [Paso 3](#paso-3)
  5. [Configuración del servidor mariadb](#configuración-del-servidor-mariadb)
  6. [Creación de usuario](#creación-de-usuario-y-permisos)
  7. [Modificar ficheros](#modificar-ficheros)
  8. [Pruebas finales](#pruebas-finales) 

# Configuración del servidor Apache

## Paso 1

Una vez configurado el Vagrantfile e iniciado los scripts, en la máquina en la que hemos configurado el servidor apache (CristianOlivaApache) tendremos que crear el fichero info.php, para después comprobar si funciona el servidor.

![Captura1-servidor apache](https://github.com/colival03/CristianPilaLamp/assets/146434716/c69fdfed-b8e8-4bcf-9b28-09381f505304)
![image](https://github.com/colival03/CristianPilaLamp/assets/146434716/0f059684-836b-4d1e-8d54-0eb18afb23ba)
![image](https://github.com/colival03/CristianPilaLamp/assets/146434716/6db7b88c-3020-41f0-8c2f-88d150b5340d)

## Paso 2

Después hay que realizar el comando git clone en la ruta (/var/www/html) y una vez que lo tengamos le cambiamos el nombre que le vayamos a poner en el DocumentRoot. 

![image](https://github.com/colival03/CristianPilaLamp/assets/146434716/45e25fa6-604a-49fb-8491-a198a25ea8f1)

## Paso 3

En este fichero 000-default.conf encontraremos la ruta que queremos editar (DocumentRoot), en mi caso al cambiarle el nombre anteriormente le he puesto Usuario que es el nombre que tendremos que poner. 

![image](https://github.com/colival03/CristianPilaLamp/assets/146434716/cb7379cf-3ea6-43ce-a76e-ff4954e65730)
![image](https://github.com/colival03/CristianPilaLamp/assets/146434716/46b141f1-53a7-453a-9653-b0ff4e674bbf)

# Configuración del servidor mariadb

## Creación de usuario y permisos

Tenemos que entrar en mariadb como root y copiar la base de datos, para después crear un usuario y darle todos los permisos.

![image](https://github.com/colival03/CristianPilaLamp/assets/146434716/c7494bc6-1771-4b9e-8ba6-1000cb0439dc)
![image](https://github.com/colival03/CristianPilaLamp/assets/146434716/bc7df15d-ae65-4ad0-8cf7-33bd779b96cd)

## Modificar ficheros 

Una vez hayamos hecho lo anterior debemos modificar el fichero 50-server.cnf y una vez estemos dentro irnos a bind-address y ponerle la ip del servidor mysql.

Una vez que hayamos editado el fichero tendremos que reiniciar el mysql.

![image](https://github.com/colival03/CristianPilaLamp/assets/146434716/9562c83f-9eea-4bf3-a85a-ed876004bf6c)
![image](https://github.com/colival03/CristianPilaLamp/assets/146434716/9c9a31a2-881f-43a7-a7fb-2e7be19d8c6f)

## Pruebas finales

A continuación nos iremos al servidor apache (también tenemos que reiniciamos el servidor apache y después ya podremos insertar datos en nuestra aplicación.

![image](https://github.com/colival03/CristianPilaLamp/assets/146434716/a566ef60-47e9-4dae-bd5d-32c3d2e6bca8)

### Prueba en consola

![image](https://github.com/colival03/CristianPilaLamp/assets/146434716/be61b6d9-50d2-4da5-aaf1-4d00f847bed7)

### Prueba en web

![image](https://github.com/colival03/CristianPilaLamp/assets/146434716/14e9c94b-8406-40fc-9854-0fc442e0218d)

![image](https://github.com/colival03/CristianPilaLamp/assets/146434716/739f6ff9-1ed5-4201-a168-87cf78be9925)

