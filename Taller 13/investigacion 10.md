# Investigacion 10.  
## `Estrés en el Sistema Linux`

## Herramienta
**stress-ng** es una herramienta de estrés para sistemas Linux que permite generar cargas de trabajo intensivas en diversos componentes del sistema, como la CPU, memoria, E/S, discos, entre otros. Su objetivo principal es evaluar la estabilidad, rendimiento y capacidad de respuesta del sistema bajo condiciones de alta carga. Con stress-ng, los usuarios pueden someter su sistema a pruebas de estrés controladas y medir su comportamiento en diferentes escenarios, lo que resulta útil para identificar posibles problemas o limitaciones del sistema. La herramienta ofrece una amplia gama de opciones y configuraciones para adaptarse a diferentes casos de uso y necesidades de pruebas de estrés.

## Comandos:
1. `stress-ng --cpu 4 --timeout 60s`: Este comando genera estrés en la CPU utilizando 4 trabajadores durante 60 segundos. Se utiliza para evaluar la capacidad de procesamiento del sistema.
2. `stress-ng --vm 2 --vm-bytes 1G --timeout 60s`: Este comando genera estrés en la memoria utilizando 2 trabajadores y asignando 1GB de memoria cada uno durante 60 segundos. Se utiliza para evaluar el comportamiento del sistema bajo una carga intensiva de memoria.
3. `stress-ng --fork 4 --timeout 60s`: Este comando genera estrés en el manejo de procesos e hilos, creando 4 procesos hijos durante 60 segundos. Se utiliza para evaluar cómo el sistema maneja la creación y finalización de procesos e hilos.

## Pruebas:
### Evaluación de la CPU:
En las diferentes ejecuciones, se pudo observar fluctuaciones en el uso de la CPU, con valores que varían entre 85% y 94%. Esto indica que el sistema experimenta una carga considerable durante las pruebas de estrés. Sin embargo, en general, se puede observar una tendencia hacia un uso más alto de la CPU en las ejecuciones 1, 3 y 5, mientras que las ejecuciones 2 y 4 parecen tener un uso relativamente menor. Estas variaciones podrían deberse a la asignación de tareas específicas a los núcleos de la CPU y a la disponibilidad de recursos en cada ejecución.

### Evaluación de la memoria:
Durante las pruebas de estrés de la memoria, se puede notar que la cantidad de memoria utilizada varía entre 1.1GB y 1.4GB en las diferentes ejecuciones. Al igual que en la evaluación de la CPU, hay fluctuaciones en los resultados. No se observa una tendencia clara de aumento o disminución constante en el uso de la memoria entre las ejecuciones. Esto puede depender de la forma en que el sistema gestiona la asignación y liberación de memoria durante cada ejecución de estrés.

### Evaluación del manejo de procesos e hilos:
En las pruebas de manejo de procesos e hilos, se crean un número específico de procesos y hilos. En los resultados obtenidos, vemos que se crean 4 procesos y 16 hilos en cada ejecución. No se observan grandes variaciones en este caso, lo que sugiere que el sistema tiene la capacidad de crear y administrar estos procesos e hilos de manera consistente en todas las ejecuciones. Sin embargo, es importante destacar que los resultados obtenidos son bastante estables y podrían variar en otros entornos virtuales, dependiendo de la carga actual del sistema y otros factores.
