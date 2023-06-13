## Nombre del grupo
- Sede-Galicia

## Miembros del grupo
- Javier Aracil
- Unai Cerda
- Mauro Laguna
- Alex Perez
- Andreu Senabre

## Día 7 (*Martes 2 de Mayo de 2023*)
- Hemos ido al taller y hemos realizado unas instalaciones de programas para que sea más accesible la configuración de los TP-LINK y poder manejar más fácil la interfaz.

- Hemos estado revisando el esquema de red, ya que tenía unos fallos.

- Seguimos instalando sistemas operativos en los equipos.

## Día 8 (*Miércoles 3 de Mayo de 2023*)
- Empezamos el esquema de red de 0 debido a unos mal entendidos de infraestructura.
- Juan nos ayuda en la explicación para enfocar bien el tema conexión entre los equipos y los swich.
- Preparamos un USB con el programa Virtual Box para poder instalarlo en los servidores (para los que necesiten tener servicios virtualizados).
- Reseteamos 2 swichs

- Hemos empezado a instalar Windows 10 Pro en los ordenadores con procesadores Intel *Pentium Gold* para que hagan de clientes.
- Hemos creado las maquinas virtuales de los servidores que usaremos en los ordenadores *DELL*, todavia queda instalar los servidores y configurarlos.
- Hemos etiquetado los ordenadores
> En los ordenadores *DELL* los hemos etiquetado de la siguiente forma.
  - Nombre de la maquina.
  - Contraseña de la maquina.
  - Servidores que tiene la maquina.
  - La memoria RAM que tiene el ordenador
  
Apuntamos la memoria RAM porque no todos tienen la misma cantidad de RAM, asi sabemos cual es cual con mas seguridad.

> En los ordenadores con *Pentium Gold* los hemos etiquetado de la siguiente forma.
  - Nombre de la maquina.
  - Constraseña de la maquina.
  
Como estos no albergaran servidores consideramos que con solamente esa informacion sera suficiente.

> Con los 2 ultimos ordenadores que nos quedan tambien los usaremos como clientes Windows 10 Pro y la forma de etiquetado sera la misma.

## Día 9 (*Viernes 5 de Mayo de 2023*)
- Hemos acabado de montar el patch panel y colocarlo en el CPD.

- Hemos organizado todo el CPD y los cables que estaban en el area de trabajo.

- Hemos seguido con la configuracion y instalacion de sistemas operativos en los equipos restantes.

## Día 10 (*Martes 9 de Mayo de 2023*)
- Hemos terminado de instalar los sistemas de todos los equipos de la sede.

- Hemos etiquetado todos los equipos de la sede con su hostname y password y el sistema que tiene instalado.

- Hemos hecho el esquema de red en Cisco Packet Tracer para el montaje de la red de la sede.

<img src="https://i.imgur.com/yh4M4MI.png">

## Día 11 (*Miercoles 10 de Mayo de 2023*)
- Hemos terminado de instalar todos los sistemas operativos que estan virtualizados en los ordenadores DELL.

- Estamos tratando de hacer funcionar la red, esto es clave ya que si no tenemos nuestra red montada no podemos configurar nada de nuestros servidores.

## Dia 12-17 (*Viernes 12 de Mayo de 2023 hasta Lunes 22 de Mayo de 2023*)
- Estos dias hemos estado configurando la red.
  - VLANs
    - Las VLANs han sido creadas en el MikroTik, mas especificamente en la interficie 2, estas VLANs son transferidas por red hasta el switch TP-LINK en el que se podran usar las VLANs a traves de dicho switch, pero ademas tambien tenemos el switch CISCO, en el CISCO solamente pasaremos la VLAN 11 (La VLAN de servidores) mediante un TRUNK con el switch TP-LINK porque solamente lo usaremos para los servidores.
  - Switch TP-LINK
    - El switch TP-LINK tiene las VLANs que trae el MicroTik de forma que ya podemos conectar a la red los distintos equipos clientes.
  - Switch CISCO
    - El switch CISCO tiene solamente la VLAN 11 gracias a un TRUNK entre el switch TP-LINK y el switch CISCO porque solamente se conectaran los servidores.

- Hemos completado la instalacion de los sistemas operativos virtualizados que tendran los clientes a modo de prueba como indica el documento del proyecto 3.3

- Estamos empezando a instalar el Zabbix en un Ubuntu Desktop 20.04 LTS para monitorizar todos los equipos de la sede.

- Se han añadido mas cables al Patch-panel y ordenado los cables del CPD para tener una mejor organizacion.

En el servidor de Active Directory se crearon las unidades organizativas de los distintos grupos de usuarios, los grupos de los distintos departamentos y unido al dominio los clientes que estan virtualizados en los clientes Windows 10.

- Instalar el servidor web para la Intranet, estamos usando Apache2.

## Dia 18 (*Martes 23 de Mayo de 2023*)
- Instamos una OVA de Debian sin entorno gráfico, en ella ejecutamos apt update y apt upgrade para actualizar todo lo que esté pendiente.

A continuación nos conectamos a la maquina vía SSH (Poniendo la máquina en adaptador puente, asignando una IP privada de la VLAN11, etc…) desde la máquina principal. Con esto configurado hemos podido conectarnos a Internet e instalado MariaDB y Zabbix.

Para **MariaDB**:
- Actualizamos con apt update
- sudo apt install mariadb-server
- sudo mysql_secure_install

Para **Zabbix**:
- Credenciales de acceso Zabbix:
  - Usuario: Admin
  - Contraseña: password

IP’s **srv01**:
- Servidor de monitorización: 192.168.11.50
- Servidor de aplicaciones: 192.168.11.51
- Hemos unidos los servidores de aplicaciones y utilidades al dominio **galicia.lan**.

## Dia 19 (*Miercoles 24 de Mayo de 2023*)
- Unimos el servidor de aplicaciones y utilidades al monitoreo del Zabbix y al dominio.

## Dia 20 (*Jueves 25 de Mayo de 2023*)
- Hemos realizado las particiones LVM en los servidores GNU/Linux, primero empiezo con el servidor de monitorización.

LVM en **srv-Monitorizacion**:
- Hemos añadido 3 discos de 10GB cada uno.

- Nos conectamos via SSH a la 192.168.11.50, despues hemos puesto el comando lsblk para ver el listado de discos (**sdb**, **sdc**, **sdd**, **sde**).

- Hemos creado los volúmenes físicos.

- Creamos el grupo de volúmenes a partir de los volúmenes físicos.

## Dia 21 (*Lunes 29 de Mayo de 2023*)
- Se han creado las directivas de grupo en el Domain Controler para que estos se apliquen a los clientes que pertenecen al dominio, tambien se ha configurado el servidor de aplicaciones y utilidades.

- Se ha finalidado de configurar el TrueNAS e intentamos mediante iSCSI tener los discos duros en el servidor Windows de datos.

- Se crea el RAID-GALICIA a traves de la interfaz web del TrueNAS, ademas, se crean las pools **dades** y **backups** con sus respectivos discos

- Se pone en funcionamiento el router inalambrico TP-LINK para proporcionar Wi-Fi, esto esta en la boca 4 del MikroTik.

## Dia 22 (*Martes 30 de Mayo de 2023*)
- Enlazamos los discos de la cabina al servidor Windows de datos mediante iSCSI de una forma exitosa y compartimos dichos discos mediante red desde el servidor Windows de datos hasta el Domain Controler.

- Se han creado las carpetas de los perfiles moviles y obligatorios en los discos de las cabinas.

## Dia 22 (*Miercoles 31 de Mayo de 2023*)
- Se ha configurado el SAI para el servidor **svr02** y **srv03** junto con el cliente que gestiona el SAI se apague de forma segura.

- Hemos empezado a gestionar la boca 3 del MikroTik para crear la DMZ.

- Compartimos por NFS la pool de **backups** a la maquina principal del **srv03**.
