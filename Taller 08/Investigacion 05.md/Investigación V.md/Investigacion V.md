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
subíndice:
Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (# de prioridad baja = a alta 
prioridad) y RR (cuanto = 1).
## 6. Cual es el tiempo de ejecución de cada proceso para cada algoritmo?
## 7. Cual es el tiempo de espera de cada proceso para cada algoritmo?
## 8. Que algoritmo puede dar lugar a bloqueos indefinidos?
## 9. Considere un sistema que implementa una planificación por colas multinivel. Que estrategia 
puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al 
proceso del usuario
