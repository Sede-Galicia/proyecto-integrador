# Zabbix-Server y Cliente
# 1-Server

# *Actualiza el sistema e instala MariaDB*

apt update && apt upgrade

Añade el repositorio de MariaDB:
`
apt -y install software-properties-common curl
curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
bash mariadb_repo_setup
`
(https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-1+ubuntu20.04_all.deb)
**Instala MariaDB**
`
 apt update   
 apt -y install mariadb-server mariadb-client`
 
 **Una vez instalado haz log in en la shell y crea la DB.**
`
 mysql -u root`

`CREATE DATABASE zabbix character set utf8mb4 collate utf8mb4_bin;
CREATE USER zabbix@localhost IDENTIFIED by 'Password';
GRANT ALL PRIVILEGES ON zabbix.* TO zabbix@localhost;
FLUSH PRIVILEGES; 
QUIT`

# Instalar Zabbix 

wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-1+ubuntu20.04_all.deb

  `dpkg -i zabbix-release_6.0-1+ubuntu20.04_all.deb`

`apt update`

`apt install zabbix-agent zabbix-server-mysql php-mysql zabbix-frontend-php zabbix-sql-scripts zabbix-apache-conf`

Una vez instalado, verifica la versión instalada.

`apt-cache policy zabbix-server-mysql`

importar la DB.

`zcat /usr/share/doc/zabbix-sql-scripts/mysql/server.sql.gz | mysql -uzabbix -p'Password' zabbix`

# Configurar el servidor Zabbix 6.0
`nano /etc/zabbix/zabbix_server.conf`

`DBName=zabbix   
DBUser=zabbix   
DBPassword=Password`

**Reinicia Zabbix.**

`systemctl restart zabbix-server`

**Configura el agente de Zabbix para monitorizar el propio servidor.**

`nano /etc/zabbix/zabbix_agentd.conf`

**Busca la configuración para la IP del server y el hostname.**

`Server=127.0.0.1
Hostname=Zabbix server`

**Inicia y habilita el servidor y agente Zabbix.**

`systemctl restart zabbix-server zabbix-agent apache2`

`systemctl enable zabbix-server zabbix-agent apache2`

**Accede a la interfaz web de Zabbix**

**Puedes acceder a la interfaz web mediante**

URL: http://IP/zabbix/ 
<img src="https://i.imgur.com/kD1ROTo.png">

**Configura la conexión a la DB.**
<img src="https://i.imgur.com/b3bJR2Z.png">


**Configurar Monitorización Zabbix**
Deberías ver el estado de localhost enabled.
<img src="https://i.imgur.com/JUwOR2b.png">

# CLIENTES
**En los clientes vamos a instalar el siguiente programa**

desde esta pagina
Elegiremos el sistema operativo que queremos
desd esta url:
https://www.zabbix.com/la/download_agents
<img src="https://i.imgur.com/dLu1U81.png">
**En windows este sera el proceso de instalación**

1-paso iniciar el instalador y siguiente

<img src="https://www.zabbix.com/documentation/current/assets/en/manual/installation/install_from_packages/msi0_b.png">


2-le damos siguiente

<img src="https://www.zabbix.com/documentation/current/assets/en/manual/installation/install_from_packages/msi0_c.png">

3-aquí es donde tenemos que configurar.
-El hostname es el nombre que tiene nuestro ordenador ( no se cambiara ).
-zabbix server ( ponemos la ip de el zabbix server ).
-listen port ( pondremos el puerto al que el zabbix esta escuchando ).
-server or proxy ( como no tenemos proxy dejaremos el default )

<img src="https://www.zabbix.com/documentation/current/assets/en/manual/installation/install_from_packages/msi0_d.png">

4-le damos a siguiente

<img src="https://www.zabbix.com/documentation/current/assets/en/manual/installation/install_from_packages/msi0_f.png">

5-Le damos a install y finalizaremos la instalación de el zabbix

<img src="https://www.zabbix.com/documentation/current/assets/en/manual/installation/install_from_packages/msi0_g.png">

6-y habremos finalizado la instalación

<img src="https://www.zabbix.com/documentation/current/assets/en/manual/installation/install_from_packages/msi0_h.png">
# Configurar zabbix para unir al cliente

<img src="https://i.imgur.com/O7IjJBw.png">

-En name colocaremos el nombre del equipo que había puesto el cliente en el instalador de zabbix exactamente igual.

-hosts gorups colocamos el grupo que hemos creado para almacenar todos los clientes que son 1-servers, 2-clientes le ponemos el que  corresponda

-en ip colocaremos la ip del equipo.

-en DNS no colocaremos nada lo dejamos vació.

**le damos a apply y ya tendremos el cliente unido**

# Dispositivos unidos al Servidor Zabbix

## **Meto el MicroTik en el Srv Zabbix:**
1. Le damos a ‘ Create host’.

Hostname: MicroTik

Templates: Microtik by SNMP

Hostgroup: Dispositivos de red

SNMP: 192.168.11.1

Port: 161

## **SRV01-DATOS:**
1. Le damos a ‘ Create host’.

Hostname: SRV01-DATOS

Templates: Windows by Zabbix agent

Hostgroup: Servidores_Windows (Lis creas tu mismo)

Agent: 192.168.11.249

Port: 10050

## **Srv-Intranet:**
Hostname: Srv-Intranet

Templates: Linux by Zabbix agent

Hostgroup: Linux servers

Agent: 192.168.12.10

Port: 10050

## **SRV-APLI-UTIL:**
1. Le damos a ‘ Create host’.

Hostname: SRV-APLI-UTIL

Templates: Windows by Zabbix agent

Hostgroup: Servidores_Windows

Agent: 192.168.11.51

Port: 10050

## **SRV-DC:**
1. Le damos a ‘ Create host’.

Hostname: SRV-DC

Templates: Windows by Zabbix agent

Hostgroup: Servidores_Windows

Agent: 192.168.11.10

Port: 10050

## **SRV-DC2:**
1. Le damos a ‘ Create host’.

Hostname: SRV-DC2

Templates: Windows by Zabbix agent

Hostgroup: Servidores_Windows

Agent: 192.168.11.11

Port: 10050

## **zabbix:**
1. Le damos a ‘ Create host’.

Hostname: zabbix

Templates: Linux by Zabbix agent + Zabbix server health

Hostgroup: Zabbix servers

Agent: 127.0.0.1

Port: 10050

## **Srv-TrueNas:**
1. Le damos a ‘ Create host’.

Hostname: 

Templates: Linux by Zabbix agent

Hostgroup: Linux servers

Agent: 192.168.11.250

Port: 10050

