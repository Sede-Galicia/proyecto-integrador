# Guía TrueNas
## Instalación sistema TrueNas
  1. Tener el sistema en un pendrive booteable.
  2. Crear la máquina virtual en VirtualBox con las siguientes especificaciones:
    * RAM: 4GB
    * Discos: 4x IDE y 5x SATA = 9 discos
    * Tarjetas de red Adaptador USB (192.168.11.250), debe estar modo 'Adaptador puente'.
  3. Añadimos la iso a la máquina y seguimos los pasos de la instalación.
  4. Una vez instalado y configurado (config. red) podremos acceder a la interfaz web, simplemente deberemos ir a un navegador web y escribir en la barra de búsqueda
     la siguiente ip '192.168.11.250'.
  5. Credenciales de admin para acceder a la interfaz web - 
      * Usuario: root 
      * Passwd: 1234
     Credenciales de user Galicia -
      * Usuario: Sgalicia 
      * Passwd: 
  6. Una vez dentro el primer paso (opcional). 
      * Ir a 'System' > 'General'. Pinchar en el desplegable 'Lenguage' y selecionar la opcion 'Spanish (es)'.
      * Ahora iremos a la pestaña de 'Red' > 'Global Configuration'. En esta pestaña configuraremos:
        * Hostname: galiciaNas
        * Dominio: galicia.lan
        * Servidor DNS: 192.168.11.249
  7. El siguiente paso es ir a 'Almacenamiento' > 'Pools', le daremos al botón 'Añadir'.
      * Seleccionaremos la opción de 'Create a new pool'.
      * Creamos el volumen y lo llamamos 'backup'. Le asignamos los discos a utilizar y marcamos la opción de 'Encriptación' (nos descargamos seguidamente la clave para descifrar). Haremos lo mismo con la Pool 'dades'.
      *           
