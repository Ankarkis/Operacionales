# Investigación
## Para esta práctica, profundice lo hablado en clase. Investigue los siguientes tópicos y de su opinión:
## 1. Compare las diferencias entre la planeación a corto plazo y largo plazo.
- La planificación a largo plazo se enfoca en la selección de procesos futuros y garantiza que siempre haya procesos listos para ejecutar en la CPU, mientras que la planificación a corto plazo se enfoca en los procesos que están listos para ejecutarse en ese momento y decide qué proceso debe ejecutarse en la CPU.

## 2. Caracterice dos procesos que se puedan considerar a mediano plazo.
- Procesos de carga: Estos procesos se encargan de cargar archivos en el sistema operativo. Pueden tomar algún tiempo en completarse, pero Su ejecución tampoco puede esperar demasiado tiempo por lo que se consideran procesos a mediano plazo.
- Procesos de comunicación: Estos procesos se encargan de la comunicación entre dispositivos en el sistema. Requieren cierta preparación antes de su ejecución aun así no es necesario que se realice inmediatamente por lo que se consideran procesos a mediano plazo.

## 3. Describa las acciones que toma el kernel para el cambio de contexto entre procesos.
- detecta que un proceso ha terminado o necesita ceder la CPU a otro proceso, es el encargado de guardar el contexto actual del proceso en el PCB y restaurar el contexto del próximo proceso que va a ejecutar.
## 4. Defina las ventajas y desventajas desde el punto de vista del programador para comunicación síncrona y asíncrona.
| Tipo de Comunicación | Ventajas                                                     | Desventajas                                                                                                 |
| --------------------| ------------------------------------------------------------| -----------------------------------------------------------------------------------------------------------|
| Comunicación Sincrónica | Permite una interacción rápida y fluida entre las personas involucradas. Permite una mayor claridad y comprensión en las discusiones ya que los participantes pueden interactuar en tiempo real. Facilita la toma de decisiones en tiempo real. | Puede ser difícil de coordinar debido a las diferencias de tiempo y ubicación. Puede haber problemas de conectividad o tecnología, lo que puede afectar la calidad de la comunicación. Puede haber distracciones o interrupciones que afecten la interacción. |
| Comunicación Asincrónica | Permite a los participantes comunicarse sin tener que coordinar sus horarios. Los participantes pueden responder a su propio ritmo, lo que les permite dedicar tiempo a reflexionar antes de responder. Permite que los participantes puedan involucrarse en la comunicación desde cualquier lugar y en cualquier momento. | La falta de interacción en tiempo real puede llevar a malentendidos y una falta de claridad en la discusión. Los participantes también pueden ignorar o retrasar sus respuestas, lo que puede ralentizar el proceso de comunicación. Puede haber una falta de retroalimentación inmediata, lo que puede ser un obstáculo para la toma de decisiones y la resolución de problemas. |

## 5. Defina las ventajas y desventajas desde el punto de vista del OS para envío por copia y envío por referencia.
| Tipo de Envío | Ventajas | Desventajas |
| :----------- | :------ | :---------- |
| Envío por Copia | Crea una copia independiente de la información, lo que puede proteger la información original de cambios no deseados. Es más fácil de entender y predecir el comportamiento del programa. Es más seguro en entornos de programación donde se necesite evitar el acceso no autorizado a la información. | Puede ser ineficiente para grandes cantidades de datos y costoso en términos de memoria. No es adecuado para estructuras de datos complejas. Puede ser lento para copiar grandes cantidades de datos. |
| Envío por Referencia | Es más eficiente en términos de memoria. Permite la creación de programas más flexibles y dinámicos. Es más adecuado para estructuras de datos complejas. | Puede ser difícil de entender y predecir el comportamiento del programa. Puede aumentar la probabilidad de errores y problemas de seguridad. Puede ser más difícil de depurar y rastrear problemas de programación. |

## 6. Defina las ventajas y desventajas desde el punto de vista del OS para mensajes de tamaño fijo y de tamaño variable.
| Tipo de Mensaje | Ventajas | Desventajas |
| :------------- | :------ | :---------- |
| Mensajes de Tamaño Fijo | Son más fáciles de implementar y entender en comparación con los mensajes de tamaño variable. Permiten la asignación eficiente de memoria y la optimización de recursos. Son más adecuados para sistemas en los que la estructura de los datos transmitidos no cambia con el tiempo. | Pueden desperdiciar espacio en memoria si el tamaño del mensaje es mucho menor que el tamaño máximo permitido. No son adecuados para sistemas en los que la longitud de los datos transmitidos varía significativamente. No son lo suficientemente flexibles para adaptarse a cambios futuros en la estructura de los datos transmitidos. |
| Mensajes de Tamaño Variable | Son más adecuados para sistemas en los que la longitud de los datos transmitidos varía significativamente. Permiten una mayor flexibilidad y adaptabilidad a cambios futuros en la estructura de los datos transmitidos. Son más eficientes en términos de uso de memoria cuando la longitud del mensaje es menor que el tamaño máximo permitido. | Son más difíciles de implementar y entender que los mensajes de tamaño fijo. Pueden requerir una asignación de memoria más costosa y complicada. Pueden ser menos eficientes en términos de recursos si la longitud del mensaje es mayor que el tamaño máximo permitido. |



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
