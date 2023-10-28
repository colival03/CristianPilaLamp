# CristianPilaLamp
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
