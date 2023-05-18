# Memorias del Proyecto Integrador
**21/03/2023 - Día 1**
 * Organizamos nuestra sede quitando cables conectados, reallizando el inventario. Preparando lo que va a ser nuestra zona de trabajo.

 * Una vez hemos realizado el inventario organizamos los distintos componentes que disponemos y los almacenamos en cajas, estas las pusimos en nuestra zona de almacén y será ahí donde se ubique nuestro inventario.

**23/03/2023 - Día 2**
 * Organizamos el repositorio proyecto-integrador de GitHub y damos permisos a los supervisores Juan y Jorge.

**24/03/2023  - Día 3**
 * Realizamos un inventado detallado con todo de lo que disponemos, es decir, cables(RJ-45, DisplayPort...), adaptadores(USB a RJ-45), SAI's, Switch's, así  como que  ordenadores vamos a destinar a servidores(y que servicios implementar) o a clientes. 

 * Guardamos en distintas cajas lo detallado en el inventario.

 * Elección de que sistemas operativos implementar:
   * (Clientes = Windows | Servidores = Linux | Windows ) 

 * Terminamos de desconectar el último switch de los cables y lo unimos a nuestro inventario, además también organizamos todas las máquinas de las cuales disponemos para aprovechar lo máximo el espacio que tenemos.

 * Comprobación de que las estaciones de trabajo son comodas al uso, pasamos los cables de una manera organizada para que no tenga ni enredos ni moleste a los usuarios que esten en las estaciones, movilidad de ratón OK.

**18/04/2023 - Día 4**
 * Mi compañero Álex Pérez y yo vamos al taller para poder establecer ya el cableado que falta para que la conexión a internet sea posible.

 * Para la conexión al ordenador central montamos una bandeja a una altura aproximada para que los cables colgantes no se doblen excesivamente y sea más comodo a la hora de conectar/desconectar los cables de los puertos. Usamos un cable RJ-45 corto, después para abastecer de internet a la máquina necesaria que necesitabamos en ese momento (para la configuración del microtik en la próxima sesión).  

 * Resumidamente conectamos el cable número 7 al ordenador central, apartir de ahí el cable colgante que se ubica donde los switch portaba internet, conectamos un RJ-45 directo al ordenador cliente y realizamos la configuración de red en el equipo. 

 * Configuración realizada con éxito, el ordenador tenía conectividad. 

**20/04/2023 - Día 5**
 * Preparamos un USB booteable para instalar los S.O en los equipos clientes del inventario. (Debian 11 / Windows 10).

 * Instalamos un Windows 10 en un equipo cliente para poder instalar el programa exclusivo 'WinBox' el cual contiene un interfaz con distintos apartados para poder configurar el microtik.

 * Comenzamos a configurar el microtik en el taller con el programa 'WinBox'.

 * Repasamos inventario.

 * Intentamos instalar un Debian 11 a un equipo cliente pero al parecer la ISO fallaba en las particiones, tenemos que terminar de resolver este problema.

**26/04/2023 - Día 6**
 * Continuamos configurando el microtik, hemos estando realizando distintas pruebas y cada vez estamos más cerca de lograr crear las redes.

 * Resolvemos el problema de las particiones, el cual era que estaba en modo legacy cuando el pc tenía arranque UEFI.

 * Realizamos un esquema de red en sucio, (en el taller). Esto nos servirá para aclarar mejor las ideas y plantear ya que fallos o que falta para configurar   el microtik

 * Hacemos primer contacto con la interfaz de configuración del switch de 8 bocas a través del navegador. Accedemos a la herramienta y reiniciamos el dispositivo para quitar cualquier configuración previa.
  
**02/05/2023 - Día 7**
 * Terminamos el documento de dimensionamientos de servidores.
  
  **03/05/2023 - Día 8**
 * Hoy hemos decidido empezar de 0 con el esquema de red ya que bajo mi punto de vista estabamos intenando configurar el ámbito con prisas sin antes saber y entender al 100% el trabajo a hacer. Han surgido dudas durante estos 8 días en el taller, tales como: 

  * ¿En que swich deberíamos crear las VLAN's? - En los 2 switchs ubicados en el CPD.

  * Preguntas acerca de la red (infraestrucutura en general, gateway, ip's a configurar en el MicroTik)

  * Dudas también en la configuración del MicroTik al ser algo nuevo lo cual sumandole el no tener claro la infraestructura a montar nos ha dado como resultado preguntar y comenzar con buen paso.

* OPINION PERSONAL:
  * Aún así la asistencia al taller de hoy me ha gustado, he notado como he intenado buscar a una solución en vez de quedarme parado pensando. Se podría     decir que me he notado con una actitud más resolutiva.

  * Con mi compañero Álex he preguntado a Juan acerca de ciertas dudas y nos la ha resuelto sin ningún problema (acerca del pach panel , switch y los equipos).

**04/05/2023 - Día 9**

**09/05/2023 - Día 10**
 * Instalamos sistemas operativos en los clientes.
 
 * Preparamos dudas respecto a las VLAN'S para preguntar mañana.
 
 * Se organiza los cables del Pach Panel y se enumeran.
 
 * Al igual que instalamos sistemas en los clientes, en los virtual box de los Servidores comprobamos y instalamos los sistemas que van a ir virtualizados [Ubuntu Server 22.04 & Windows Server].

**10/05/2023 - Día 11**
* Probamos a configurar el bounding aunque luego más tarde Raúl ha dicho que lo dejemos temporalmente porque lo explicará en clase.

* Configuramos unas reglas de Firewall en el MicroTik y logramos tener conectividad a Internet desde la VLAN3, habiamos conseguido lo que tanto tiempo y problema nos estaba dando.

* Hacemos unas cuantas comprobaciones más y pasamos ya a configurar las 11 VLANS a los puertos del Switch:
    
    | VLAN | Puerto |
    | ---- | ------ |
    |  V3  |   3    |
    |  V4  |   4    |
    |  V5  |   5    |
    |  V6  |   6    |
    |  V7  |   7    |
    |  V8  |   8    |
    |  V9  |   9    |
    |  V10 |   10   |
    |  V11 |   11   |
    
* Pasos a seguir [MicroTik & Switch]:
 MicroTik:
  1. En un equipo con un Windows instalado descargaremos la herramienta WinBox para poder configurar el MicroTik.
  2. Una vez en la pantalla inicial de la herramienta deberemos conectar un cable de red. Este irá desde el MicroTik hasta nuestro puerto de red de nuestro PC Windows.
  3. Ya estando conectados se nos mostrará la dirección MAC del MicroTik, bastará con seleccionarla y darle al boton 'Conectar'.
  4. Ahora nos encontramos en la página principal donde tenemos un menu a la izquierda donde podemos configurar bastantes aspectos tales como [ Reglas Firewall, Servicio DHCP, Crear VLAN'S, Crear Redes, etc. ] 
 Switch TP-LINK [24 bocas]:
  1. Para acceder al login de su configuración lo primero a hacer será conectar un cable RJ-45 al switch que vaya hasta nuestro puerto de red. Después accedimos al navegador Firefox, allí buscamos la dirección [192.168.0.1].
  2. Si todo va bien una vez le demos a buscar nos redirigirá a el login del TP-LINK.
  3. Insertamos las credenciales de Administrador y accedimos a la configuración del Switch.
  4. Ir a la pestaña al lado izquierdo con nombre VLAN.
  5. Creamos la VLAN con su PVID, Nombre y sus puertos Tagged[ Hosts ] y Untagged[ Trunk ].
  6. Nos movemos a la otra pestaña que hay dentro de VLAN > Port Config. Aquí deberemos asignar el número PVID de la VLAN a los puertos que se necesiten. 

**15/05/2023 - Día 11**
 1. Instalo y configuro el Apache2 en nuestro Ubuntu Server 20.04, obviamente tuvimos que aplicar una configuración de red [192.168.0.x] y cambiar la tarjeta de red de NAT a Adaptador Puente.
 2. Se colocan los cables restantes al pach panel.
 3. Planteamos que para que los servidores como el DC (los cuales tienen que estar en la misma red) debemos hacer que las VLAN’s de los clientes se puedan comunicar con la VLAN de los servidores[v11].

**16-05-2023 - Día 12**
 1. Preparamos la estructura de los PC clientes con el archivo 3.3 del proyecto integrador.
 1.1. En el cli02 hemos virtualizado un PC para:
     - ‘Departamento de Recepción.
     - ‘Departamento de Administración. 
     - [ Total 2 PC’s virtuales ]
 1.2. En el cli01 hemos hecho lo mismo que con el cli02, los departamentos son: 
     - Departamento de laboratorio.
     - Departamento de administración.
     - [ Total 2 PC’s virtuales ]
 1.3. En el cli03 los departamentos son: 
     - Almacén.
     - Departamento de producción.
     - [ Total 2 PC’s virtuales ]

 2. Nos ponemos a buscar actualizaciones sobre el controlador del cable serial para así poder configurar el otro switch (24 bocas).
 
 3. Mis compañero Unai se dedica a intentar dar conexión entre una VLAN (3.x,4.x,5.x …) a la VLAN11.

**17-05-2023 - Día 13**
 * Logramos conectarnos al switch Cisco, lo hicimos mediante la herramienta Termius, aunque por putty también podíamos. Sin embargo no llegamos a configurar nada.

**18-05-2023 - Día 14**
 * Configuramos la VLAN 11 en el Switch Cisco, lo hacemos creándola en el switch y asignándole los puertos [12, 14, 16, 18, 20, 22 y 24].
 * Comandos:
 * - Para crear VLAN:
     * vlan 11
     * name ‘Servidores’
 * -Para configurar VLAN en bocas:
     1. Nos vamos a las bocas y escribimos, switchport mode access. 
      1.1 switchport mode vlan 11
      1.2 switchport mode allowed vlan 11
     2. Para configurar el trunk en la boca: 2/0/2 hay que escribir -> switchport mode trunk. 
 * Probamos el cable 17 del PACH Panel ya que teníamos dudas de si estaba funcionando bien realmente, sin embargo si estaba correcto y daba señal aunque el cable no funciona en el pc.
 * Configuramos 2 nuevas reglas Firewall de un cliente Windows para hacer unas pruebas de ping. Por desgracia no hemos conseguido que sepa quien le esta enviando los paquetes aunque por lo menos llegar llegan.
 * En el servidor DC creamos Unidades Organizativas, Grupos (gg, …).
