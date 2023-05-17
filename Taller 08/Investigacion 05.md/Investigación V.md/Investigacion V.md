# Investigación
## Para esta practica, profundice lo hablado en clase. Investigue los siguientes tópicos y de su opinión:
## 1. Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?
- El planificador debe distinguir entre ellos para asignar recursos de manera efectiva y obtener el mejor rendimiento del sistema. Si hay muchos programas limitados por I/O, el planificador puede dar más tiempo de CPU a los programas limitados por CPU para aprovechar al máximo la capacidad de procesamiento. De esta manera, se puede evitar que el sistema se ralentice debido a la competencia por los recursos de la CPU.
## 2. Como entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?
- Cuando un programa usa demasiado tiempo de CPU, puede hacer que otros programas o el sistema se vuelvan lentos o incluso se bloqueen. Por otro lado, si se da prioridad a los programas que requieren una respuesta rápida, los programas limitados por CPU pueden experimentar un retraso en su ejecución.
## 3. Como entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera?
- Si se enfoca en disminuir el tiempo promedio de procesamiento, los procesos menos importantes pueden esperar demasiado, lo que aumenta el tiempo máximo de espera y disminuye la eficiencia del sistema. Si se da prioridad al tiempo máximo de espera, puede haber retrasos en el tiempo promedio de procesamiento.
## 4. Como entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O y la utilización de la CPU?
- Si se enfoca en disminuir el tiempo promedio de procesamiento, los procesos menos importantes pueden esperar demasiado, lo que aumenta el tiempo máximo de espera y disminuye la eficiencia del sistema. Si se da prioridad al tiempo máximo de espera, puede haber retrasos en el tiempo promedio de procesamiento.
## 5. Considere el siguiente conjunto de procesos, todos llegan al mismo tiempo en el orden del 
subíndice: Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (# de prioridad baja = a alta prioridad) y RR (cuanto = 1).
- Proceso P0: 8 unidades de tiempo Proceso P1: 4 unidades de tiempo
Proceso P2: 9 unidades de tiempo Proceso P3: 5 unidades de tiempo
Proceso P4: 3 unidades de tiempo

También se asignará una prioridad más alta a los procesos con menos
tiempo de CPU restante (SJF) y una prioridad más baja a los procesos con
más tiempo de CPU restante.

A continuación se muestran los diagramas de Gantt para cada algoritmo de
planificación:

FCFS (Primero en llegar, primero en ser atendido):

| P0 \| P1 \| P2 \| P3 \| P4 \|

0 8 12 21 26 29

SJF (El trabajo más corto primero):

| P4 \| P1 \| P3 \| P0 \| P2 \|

0 3 7 12 21 30

Prioridades:

| P2 \| P0 \| P3 \| P1 \| P4 \|

0 8 17 22 26 29

RR (Round Robin con un cuanto de tiempo de 1 unidad):

| P0 \| P1 \| P2 \| P3 \| P4 \| P0 \| P2 \| P3 \| P2 \|

0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

## 6. Cual es el tiempo de ejecución de cada proceso para cada algoritmo?
- P0: 8 unidades de tiempo

P1: 4 unidades de tiempo

P2: 9 unidades de tiempo

P3: 5 unidades de tiempo 

P4: 3 unidades de tiempo 

SJF:

P4: 3 unidades de tiempo 

P1: 4 unidades de tiempo 

P3: 5 unidades de tiempo

P0: 8 unidades de tiempo

P2: 9 unidades de tiempo

Prioridades:

P2: 9 unidades de tiempo

P0: 8 unidades de tiempo

P3: 5 unidades de tiempo

P1: 4 unidades de tiempo

P4: 3 unidades de tiempo 

RR:

P0: 9 unidades de tiempo

P1: 4 unidades de tiempo 

P2: 12 unidades de tiempo

P3: 7 unidades de tiempo 

P4: 3 unidades de tiempo 

## 7. Cual es el tiempo de espera de cada proceso para cada algoritmo?
FCFS:

P0: 0 unidades de tiempo

P1: 8 unidades de tiempo

P2: 12 unidades de tiempo

P3: 21 unidades de tiempo

P4: 26 unidades de tiempo

SJF:

P4: 0 unidades de tiempo

P1: 0 unidades de tiempo

P3: 4 unidades de tiempo

P0: 12 unidades de tiempo

P2: 21 unidades de tiempo 

Prioridades:

P2: 0 unidades de tiempo 

P0: 9 unidades de tiempo 

P3: 17 unidades de tiempo 

P1: 22 unidades de tiempo

P4: 26 unidades de tiempo 

RR:

P0: 15 unidades de tiempo

P1: 9 unidades de tiempo

P2: 18 unidades de tiempo

P3: 12 unidades de tiempo 

P4: 6 unidades de tiempo
## 8. Que algoritmo puede dar lugar a bloqueos indefinidos?
- El algoritmo de planificación por prioridades sin prelación, conocido como PIP, puede dar lugar a bloqueos indefinidos. Si un proceso de baja prioridad posee un recurso que necesita un proceso de alta prioridad, el proceso de alta prioridad queda bloqueado. Además, si un proceso de prioridad intermedia tiene el recurso que necesita el proceso de baja prioridad y un proceso de alta prioridad requiere ese recurso, se produce una inversión de prioridad. En esta situación, el proceso de baja prioridad retiene el recurso, bloqueando indefinidamente al proceso de alta prioridad. Para evitar esto, se han desarrollado protocolos como la herencia de prioridad y el techo de prioridad, que previenen la inversión de prioridad y garantizan un acceso adecuado a los recursos necesarios.
## 9. Considere un sistema que implementa una planificación por colas multinivel. Que estrategia  puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al  proceso del usuario
- En la planificación por colas multinivel, una estrategia utilizada para maximizar el tiempo de CPU asignado al proceso del usuario es manipular las prioridades de los procesos. Esta estrategia puede aplicarse asignando prioridades más altas a los procesos del usuario, permitiéndoles acceder con mayor frecuencia a la CPU. También se puede emplear un mecanismo de retroalimentación, donde los procesos con prioridad baja en la cola de mayor prioridad ven incrementada su prioridad después de un tiempo de espera, asegurando que los procesos del usuario que han esperado mucho tiempo obtengan más tiempo de CPU. Además, se puede establecer un límite de tiempo de CPU para los procesos del sistema, reduciendo su prioridad y moviéndolos a una cola de menor prioridad después de cierto tiempo de uso de la CPU. Es fundamental considerar la equidad en la asignación de recursos, ya que los procesos del sistema también son importantes para el funcionamiento general del sistema.
