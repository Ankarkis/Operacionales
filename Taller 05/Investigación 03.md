# Investigación
## Para esta práctica, profundice lo hablado en clase. Investigue los siguientes tópicos y de su opinión:
## 1. Compare las diferencias entre la planeación a corto plazo y largo plazo.
- La planificación a largo plazo se enfoca en la selección de procesos futuros y garantiza que siempre haya procesos listos para ejecutar en la CPU, mientras que la planificación a corto plazo se enfoca en los procesos que están listos para ejecutarse en ese momento y decide qué proceso debe ejecutarse en la CPU.

## 2. Caracterice dos procesos que se puedan considerar a mediano plazo.
- Procesos de carga: Estos procesos se encargan de cargar archivos en el sistema operativo. Pueden tomar algún tiempo en completarse, pero Su ejecución tampoco puede esperar demasiado tiempo por lo que se consideran procesos a mediano plazo.
- Procesos de comunicación: Estos procesos se encargan de la comunicación entre dispositivos en el sistema. Requieren cierta preparación antes de su ejecución aun así no es necesario que se realice inmediatamente por lo que se consideran procesos a mediano plazo.

## 3. Describa las acciones que toma el kernel para el cambio de contexto entre procesos.
- detecta que un proceso ha terminado o necesita ceder la CPU a otro proceso, es el encargado de guardar el contexto actual del proceso en el PCB y restaurar el contexto del próximo proceso que va a ejecutar.







## 7. Describa los estados de un proceso.
***- Nuevo:*** El proceso se encuentra en este estado cuando está siendo creado por 
el sistema operativo. Durante este estado, el sistema operativo asigna los recursos 
necesarios para su ejecución, como espacio en memoria y CPU, y crea una 
estructura de control del proceso que contiene información como su identificador y 
su estado actual.

***- En ejecución:*** El proceso se encuentra en este estado cuando está ejecutando 
sus instrucciones. Durante este estado, el proceso utiliza los recursos asignados 
para su ejecución y compite con otros procesos por el acceso a los recursos del 
sistema.

***-En espera:*** El proceso se encuentra en este estado cuando está esperando a 
que se produzca algún evento, como la entrada de datos por parte del usuario o la 
finalización de una operación de entrada/salida. Durante este estado, el proceso 
se bloquea y libera los recursos que había estado utilizando para su ejecución, 
permitiendo así que otros procesos puedan utilizarlos.

***- Preparado:*** El proceso se encuentra en este estado cuando está listo para su 
ejecución, pero aún no se le han asignado los recursos necesarios para ello. 
Durante este estado, el proceso está en cola de espera para recibir los recursos 
necesarios, como el acceso a la CPU y a la memoria, y compite con otros 
procesos para obtenerlos.

***- Terminado:*** El proceso se encuentra en este estado cuando ha finalizado su 
ejecución. Durante este estado, el sistema operativo libera los recursos que había 
asignado al proceso y elimina su estructura de control.

## 8. Que datos se encuentran en un PCB.
- El estado del proceso indica si el proceso está listo, en ejecución, en 
espera, suspendido o terminado.
- El contador del programa indica la dirección de la siguiente 
instrucción que se va a ejecutar en el proceso.
- Los registros de la CPU son un conjunto de registros internos que 
varían en cuanto a su número y tipo según la arquitectura del 
procesador. Estos registros se utilizan para almacenar datos 
temporales y realizar operaciones aritméticas y lógicas. Entre los 
registros de la CPU se incluyen los acumuladores, registros índices, 
punteros de pila, registros de propósito general e información de 
estado
- La información de la planificación de la CPU incluye la prioridad del 
proceso, punteros a las colas de planificación y cualquier otro 
parámetro de planificación que se requiera. Esto se utiliza para 
determinar qué proceso se ejecutará a continuación y durante cuánto 
tiempo.
- La información de gestión de memoria incluye valores de los 
registros base y límites, tablas de páginas o tablas de segmento. 
Estos se utilizan para asignar y gestionar la memoria del sistema 
para el proceso en ejecución.
- Información contable: Incluye la cantidad de CPU y tiempo real
empleados, limites de tiempoasignados, numero de proceso, etc.
- Información del estado del I/O: incluye la lista de los dispositivos de
I/O asignados al proceso, lista de archivos abiertos, etc.

## 9. Describa un modelo de comunicación Cliente-Servidor.
- El modelo Cliente-Servidor es como una conversación entre dos 
amigos en la que uno pide un favor al otro y el otro lo cumple. En 
este caso, el cliente pide algo al servidor, y el servidor responde con 
lo que se le ha pedido. Este modelo se utiliza en aplicaciones como 
navegación web, correo electrónico, transacciones bancarias en 
línea, y videojuegos en línea. Es fácilmente adaptable y permite que 
los amigos estén en diferentes lugares
