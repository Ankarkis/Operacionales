# Investigación 02
## Para investigar:

## 1. En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad.
- Mencione dos problemas y explíquelos.
### Dos problemas comunes podrían ser:
***- Acceso no autorizado:*** ya que en un sistema compartido, cualquier usuario puede tener acceso a los archivos y recursos del sistema, lo que aumenta el riesgo de que cualquier persona pueda acceder a información de gran importancia modificarla y hasta eliminarla en su defecto.

***- Malware y virus:*** Cualquier usuario puede introducir malware o virus en el sistema a través descargas o dispositivos externos con lo cual esto puede poner en riesgo la seguridad de los datos y programas del sistema y afectar a los otros usuarios.

- Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un sistema dedicado. Explique su respuesta.
- depende del nivel de seguridad requerido. Aunque es más difícil garantizar la seguridad en un entorno compartido ya que como son varios usuarios puede que alguno de ellos no tenga conocimientos con respecto a los programas infectados o virus y este infecte a todo el sistema.

## 2. Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben gestionarse en las siguientes maquina (explique porqué):

***- Sistemas embebidos***
- Memoria
- Procesador
- Dispositivos de entrada/salida
- Energía
- Red

***- Mainframe***
- CPU.
- Memoria.
- Almacenamiento: de línea.
- Dispositivos de E/S.
- Red.

***- Workstation***
- CPU
- Memoria
- Almacenamiento
- Dispositivos de E/S
- Red
- Gráficos

***- Server***
- CPU
- Memoria
- Almacenamiento
- Red
- Seguridad
- Energía

***-Mobile***
- CPU
- Memoria
- Almacenamiento
- Batería
- Red
- Sensores

## 3. Caracterice dos casos de uso para implementar un OS para servidor y PC.
***- Servidores web:*** Los servidores web se utilizan para alojar sitios web y aplicaciones en línea. Para este caso de uso, es importante que el OS para servidor sea seguro, estable y de alto rendimiento. El OS también debe tener características que permitan el manejo eficiente de grandes volúmenes de tráfico web y aplicaciones con alta demanda de recursos. Para los servidores web, el OS también debe ser capaz de proporcionar un ambiente de desarrollo y ejecución para múltiples lenguajes de programación y frameworks.

***- Servidores de base de datos:*** Los servidores de bases de datos son una de las aplicaciones más comunes en un entorno empresarial, donde el OS de servidor y PC deben proporcionar un rendimiento constante y confiable. En este caso, se necesitan características tales como una gestión eficiente de la memoria, la capacidad de administrar múltiples procesos y usuarios simultáneamente, y una alta capacidad de escalabilidad. Además, la seguridad es también un factor crítico, ya que los datos almacenados en el servidor de base de datos pueden ser muy valiosos y deben ser protegidos contra intrusiones. Un OS de servidor y PC adecuado para este caso de uso es aquel que cuenta con herramientas de monitoreo y
gestión del rendimiento, administración de permisos y autenticación de usuarios, además de características de seguridad mejoradas.

## 4. Compare las diferencias entre multiprocesamiento simétrico y asimétrico.
- SMP y AMP son dos arquitecturas de procesamiento que se diferencian en la capacidad de procesamiento y acceso a los recursos del sistema que tienen los procesadores. En el caso de SMP, todos los procesadores tienen la misma capacidad de procesamiento y pueden acceder a los mismos recursos del sistema de manera equitativa. En cambio, en la arquitectura AMP, los procesadores tienen diferentes capacidades y roles en el sistema, lo que implica que no todos pueden acceder a los mismos recursos del sistema de manera equitativa.

## 5. Enumere los requerimientos para que dos maquinas se junten en un cluster y provean un servicio de alta disponibilidad (HA).
### se deben tener en cuenta factores como:
1. el hardware adecuado
2. el sistema operativo y software de clustering
3. la redundancia de red
4. el almacenamiento compartido
5. la monitorización y gestión
6. Pruebas y validaciones adecuadas.

## 6. Compare las diferencias entre una excepción y una interrupción.

- Las excepciones se producen en tiempo de ejecución del programa, mientras que las interrupciones pueden producirse en cualquier momento también las excepciones son generadas por el propio programa, mientras que las interrupciones son generadas por hardware externo al programa.

## 7. El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la CPU.
### ¿Como interactuá la CPU con el dispositivo para coordinar la transferencia?
- Prepara el controlador DMA para acceder a la memoria del sistema y luego permitir que el controlador DMA transfiera los datos directamente a la memoria sin intervención de la CPU, lo que permite que la CPU se enfoque en otras tareas importantes.
### ¿Como sabe la CPU que las operaciones de memoria se han completado?
- La CPU actualiza un registro de estado para indicar que una operación de memoria se ha completado antes de continuar con la siguiente instrucción o tarea. También puede usar instrucciones de espera o barreras de memoria para asegurarse de que las operaciones de memoria se completen antes de continuar.

## 8. Identifique dos razones por las que la cache es útil. ¿Que problemas resuelve y causa?.
- Los problemas que la caché puede resolver se encuentran la reducción del tiempo de acceso a los datos y la reducción del tráfico de datos. pero, también puede causar problemas, como la inconsistencia de datos, ya que la caché puede contener copias desactualizadas de los datos. Esto puede ser resuelto mediante técnicas de coherencia de caché, pero a su vez puede aumentar la complejidad y el costo del sistema. Otra desventaja es que incluye un mayor costo y una mayor complejidad en el diseño del hardware.

## 9. Explique con un ejemplo, como se manifiesta el problema de mantener la coherencia de los datos de cache en los siguientes entornos:
### Sistema distribuido
- Un ejemplo podría ser un sistema de bases de datos utilizado para procesar consultas de múltiples usuarios. En este sistema, cada usuario accede a una copia local de una base de datos en su propia memoria caché para acelerar el acceso a los datos. Si un usuario actualiza un registro en la base de datos, es necesario actualizar las copias de los registros en las cachés de los otros usuarios para mantener la coherencia de los datos ahora supongamos que no se utiliza ninguna técnica para mantener la coherencia de los datos de cache. En este caso, cuando un usuario actualiza un registro, es posible que los otros usuarios accedan a una versión desactualizada del registro en su memoria caché. Si un usuario intenta actualizar un registro que ha sido modificado por otro usuario, se puede producir una condición de carrera que puede resultar en datos inconsistentes o corruptos.◦ Sistema multiprocesador
### Sistema multiprocesador
- supongamos que un sistema multiprocesador tiene dos procesadores, A y B, y ambos tienen copias en caché de una variable X que se encuentra en la memoria principal. Si el procesador A modifica la variable X en su caché, pero el procesador B aún mantiene una copia desactualizada de la variable X en su caché, entonces cuando el procesador B intente acceder a la variable X, obtendrá la versión desactualizada en su caché y puede producir resultados incorrectos en su ejecución.
### Sistema de un solo procesador
- no existe el problema de mantener la coherencia de los datos de caché pues, solo hay un procesador que accede a la memoria principal y mantiene la única copia de los datos en su caché.
