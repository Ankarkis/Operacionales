# Investigacion 10.  
## `Estrés en el Sistema Linux`

## Herramienta
**stress-ng** es una herramienta diseñada para sistemas Linux que se utiliza para generar cargas intensas de trabajo en diferentes componentes del sistema, como la CPU, memoria, E/S y discos. Su principal objetivo es evaluar la estabilidad, rendimiento y capacidad de respuesta del sistema cuando se encuentra bajo una alta carga. Con stress-ng, los usuarios pueden someter su sistema a pruebas de estrés controladas y analizar cómo se comporta en diferentes situaciones, lo cual resulta útil para identificar posibles problemas o limitaciones. La herramienta ofrece diversas opciones y configuraciones para adaptarse a diferentes casos de uso y necesidades de pruebas de estrés.

## Comandos:
1. `stress-ng --cpu 4 --timeout 60s`: Este comando genera estrés en la CPU utilizando 4 trabajadores durante 60 segundos. Se utiliza para evaluar la capacidad de procesamiento del sistema.
2. `stress-ng --vm 2 --vm-bytes 1G --timeout 60s`: Este comando genera estrés en la memoria utilizando 2 trabajadores y asignando 1GB de memoria cada uno durante 60 segundos. Se utiliza para evaluar el comportamiento del sistema bajo una carga intensiva de memoria.
3. `stress-ng --fork 4 --timeout 60s`: Este comando genera estrés en el manejo de procesos e hilos, creando 4 procesos hijos durante 60 segundos. Se utiliza para evaluar cómo el sistema maneja la creación y finalización de procesos e hilos.

## Pruebas:
### Evaluación de la CPU:
Durante las pruebas realizadas, se observaron cambios en el uso de la CPU en diferentes ejecuciones, con valores que oscilaban entre el 85% y el 94%. Estos resultados indican que el sistema experimenta una carga significativa durante las pruebas de estrés. Sin embargo, se notó una tendencia general hacia un mayor uso de la CPU en las ejecuciones 1, 3 y 5, mientras que en las ejecuciones 2 y 4 el uso fue relativamente menor. Estas variaciones pueden ser atribuidas a la asignación de tareas específicas a los núcleos de la CPU y a la disponibilidad de recursos en cada ejecución.

### Evaluación de la memoria:
En las pruebas realizadas para evaluar el estrés en la memoria, se observó que la cantidad de memoria utilizada fluctuaba entre 1.1GB y 1.4GB en diferentes ejecuciones. Al igual que en la evaluación de la CPU, se encontraron variaciones en los resultados. No se pudo identificar una tendencia clara de aumento o disminución constante en el uso de la memoria entre las ejecuciones. Estos cambios pueden estar relacionados con la forma en que el sistema administra la asignación y liberación de memoria durante cada prueba de estrés.

### Evaluación del manejo de procesos e hilos:
En las pruebas realizadas para evaluar el manejo de procesos e hilos, se generó un número específico de procesos y hilos. Los resultados mostraron consistentemente la creación de 4 procesos y 16 hilos en cada ejecución. No se observaron cambios significativos en este aspecto, lo que sugiere que el sistema tiene la capacidad de crear y administrar estos procesos e hilos de manera estable en todas las pruebas. Sin embargo, es importante tener en cuenta que los resultados pueden variar en diferentes entornos virtuales, dependiendo de la carga actual del sistema y otros factores relevantes.
