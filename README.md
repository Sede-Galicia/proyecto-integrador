# Proyecto Integrador

## Miembros del grupo
- Javier Aracil
- Unai Cerda
- Mauro Laguna
- Alex Perez
- Andreu Senabre

## Enlaces a cada uno de los documentos de los miembros
- [Javier Aracil](https://github.com/Sede-Galicia/proyecto-integrador/blob/main/miembros/Javier-Aracil.md)
- [Unai Cerdà](https://github.com/Sede-Galicia/proyecto-integrador/blob/main/miembros/Unai.md)
- [Mauro Laguna](https://github.com/Sede-Galicia/proyecto-integrador/blob/main/miembros/mauro.md)
- [Alex Perez](https://github.com/Sede-Galicia/proyecto-integrador/blob/main/miembros/Alex.md)
- [Andreu Senabre](https://github.com/Sede-Galicia/proyecto-integrador/blob/main/miembros/asenabre03.md)

## Enlaces a cada uno de los documentos mensuales
- [Marzo](https://github.com/Sede-Galicia/proyecto-integrador/blob/main/bitacora/bitacora-marzo.md)
- [Abril](https://github.com/Sede-Galicia/proyecto-integrador/blob/main/bitacora/bitacora-abril.md)
- [Mayo](https://github.com/Sede-Galicia/proyecto-integrador/blob/main/bitacora/bitacora-mayo.md)

# Trabajo en el taller

## Día 0 (*Jueves 16 de Marzo de 2023*)
- Hemos creado el Markdown grupal donde indicaremos todo lo que hemos hecho durante el Proyecto Integrador.

## Día 1 (*Martes 21 de Marzo de 2023*)
- Hemos organizado la zona de trabajo (quitar cables, posicionar ordenadores, descomtar patch-panel y demas) para que cuando vayamos al taller tenerlo todo listo para empezar.

## Día 2 (*Jueves 23 de Marzo de 2023*)
- Hemos creado y/o organizado nuestro repositorio de GitHub como indica el documento del proyecto integrador, a continuacion se mostrara una lista en donde se especifica con detalle que es lo que se ha hecho.
  - Crear la carpeta **bitacora**
    > Aqui se guardaran los documentos de cada mes de trabajo en el taller.
  
  - Crear la carpeta **documentos**
    > Aqui iran todos los documentos relacionados con el proyecto integrador.
  
  - Añadir los miembros del equipo en el dichero **README.md**
  - Anadir los enlaces de los documentos de cada uno de los integrantes.
  - Modificar los ficheros de la carpeta **bitacora** con el formato requirido y anadir los enlaces de los documentos mensuales.

## Día 3 (*Viernes 24 de Marzo de 2023*)
- Hemos vuelto a ir al taller para rematar el trabajo de ordenar todo, hemos posicionado mejor los ordenadores, terminado de sacar todos los elementos del rack que usaremos, conectado las pantallas y ordenadores para usarlos y hacer el inventario de todo lo que usaremos para el proyecto.

<img src="https://i.imgur.com/JwJJjQI.jpeg">

<img src="https://i.imgur.com/kSO531j.jpg">

- Hemos creado la carpeta **inventario** para añadir el fichero inventario.md documentando todo lo que tendremos a nuestra disposicion para hacer el proyecto.

## Día 4 (*Miercoles 20 de Abril de 2023*)
- Hemos ido al taller para configurar el **MikroTik** y dejarlo preparado para que los equipos puedan salir a Internet a través de él.
- Hemos empezado a instalar en los equipos los sistemas operativos que usaremos para nuestro proyecto, empezaremos con los ordenadores DELL instalando el sistema operativo **Debian 11 Con Entorno Gráfico**, ya que en esos servidores físicos necesitaremos virtualizar otros servicios.

## Día 5 (*Miercoles 26 de Abril de 2023*)
- Continuamos configurando el **MicroTik**, hemos estando realizando distintas pruebas y cada vez estamos más cerca de lograr crear las redes.
- Realizamos un **esquema de red** en sucio, (en el taller). Esto nos servirá para aclarar mejor las ideas y plantear ya que fallos o que falta para configurar   el microtik
- Hacemos primer contacto con la interfaz de configuración del switch de 8 bocas a través del navegador. Accedemos a la herramienta y reiniciamos el dispositivo para quitar cualquier configuración previa como algunas VLAN's. 

   > Al principio no funcionaba ya que no estabamos en la misma red con lo cual no podíamos acceder a la dirección por LAN, problema resuelto.
   
- **Resolvemos** el problema de las particiones, el cual era que la ISO descargada era de modo LEGACY cuando el PC tenía arranque UEFI.

## Día 6 (*Viernes 28 de Abril de 2023*)
- Hemos acabado de realizar el documento de dimensionamiento de equipos.
- Hemos estado instalando sistemas operativos a los equipos.

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

<img src="https://i.imgur.com/QVlaDZ7.png">

## Día 11 (*Miercoles 10 de Mayo de 2023*)
- Hemos terminado de instalar todos los sistemas operativos que estan virtualizados en los ordenadores DELL.
- Estamos tratando de hacer funcionar la red, esto es clave ya que si no tenemos nuestra red montada no podemos configurar nada de nuestros servidores.
- Hemos subido el esquema de red y el fichero del esquema de red en una nueva carpeta llamada red, la cual es accesible haciendo clic [aqui](https://github.com/Sede-Galicia/proyecto-integrador/tree/main/red).

## Dia 12-17 (*Viernes 12 de Mayo de 2023 hasta Lunes 22 de Mayo de 2023*)
- Estos dias hemos estado configurando la red.
  - VLANs
    - Las VLANs han sido creadas en el MikroTik, mas especificamente en la interficie 2, estas VLANs son transferidas por red hasta el switch TP-LINK en el que se podran usar las VLANs a traves de dicho switch, pero ademas tambien tenemos el switch CISCO, en el CISCO solamente pasaremos la VLAN 11 (La VLAN de servidores) mediante un TRUNK con el switch TP-LINK porque solamente lo usaremos para los servidores.
  - Switch TP-LINK
    - El switch TP-LINK tiene las VLANs que trae el MicroTik de forma que ya podemos conectar a la red los distintos equipos clientes.
  - Switch CISCO
    - El switch CISCO tiene solamente la VLAN 11 gracias a un TRUNK entre el switch TP-LINK y el switch CISCO porque solamente se conectaran los servidores.

Hemos completado la instalacion de los sistemas operativos virtualizados que tendran los clientes a modo de prueba como indica el documento del proyecto 3.3

Estamos empezando a instalar el Zabbix en un Ubuntu Desktop 20.04 LTS para monitorizar todos los equipos de la sede.

Se han añadido mas cables al Patch-panel y ordenado los cables del CPD para tener una mejor organizacion.

En el servidor de Active Directory se crearon las unidades organizativas de los distintos grupos de usuarios, los grupos de los distintos departamentos y unido al dominio los clientes que estan virtualizados en los clientes Windows 10.

Instalar el servidor web para la Intranet, estamos usando Apache2.

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
