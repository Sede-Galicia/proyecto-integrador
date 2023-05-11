# Memorias del Proyecto Integrador
**21/03/2023 - Día 1**
* Organizamos nuestra sede quitando cables conectados, reallizando el inventario. Preparando lo que va a ser nuestra zona de trabajo.

* Una vez hemos realizado el inventario organizamos los distintos componentes que disponemos y los almacenamos en cajas, estas las pusimos en nuestra zona de almacén y será ahí donde se ubique nuestro inventario.

**23/03/2023 - Día 2**
* Organizamos el repositorio proyecto-integrador de GitHub y damos permisos a los supervisores Juan y Jorge.

**24/03/2023  - Día 3**
* Realizamos un inventado detallado con todo de lo que disponemos, es decir, cables(RJ-45, DisplayPort...), adaptadores(USB a RJ-45), SAI's, Switch's, así  como que ordenadores vamos a destinar a servidores(y que servicios implementar) o a clientes. 

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
