# Investigación
## Para esta practica, profundice lo hablado en clase. Investigue los siguientes tópicos y de su opinión:

## 1.   Explique la diferencia entre los conceptos de fragmentación interna y externa.
- la fragmentación interna implica espacio desperdiciado dentro de un bloque asignado a un proceso, mientras que la fragmentación externa implica la falta de bloques de memoria contiguos, a pesar de tener suficiente memoria total disponible. Ambos conceptos pueden tener un impacto negativo en la eficiencia y el rendimiento del sistema.

## 2.   ¿En que forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?
- el editor de ensamblador cambia la forma en que las instrucciones y los datos se relacionan con las direcciones de memoria. Asigna direcciones únicas a cada uno para asegurarse de que estén ubicados correctamente en la memoria y puedan ser accedidos y ejecutados adecuadamente por la computadora.
## 3.   ¿Que información debe pasar el compilador al editor de montaje para facilitar el acoplamiento de memoria de éste?
1. Código fuente: El compilador debe pasar al editor de ensamblador el código fuente del programa escrito en un lenguaje de alto nivel, como C o C++. Este código fuente contiene las instrucciones y declaraciones de datos que deben ser traducidas y asignadas a direcciones de memoria.

2. Tabla de símbolos: El compilador crea una tabla de símbolos que contiene información sobre los símbolos utilizados en el programa, como nombres de variables y funciones. Esta tabla asocia cada símbolo con su tipo de dato y ubicación en la memoria. Al pasar esta tabla al editor de ensamblador, se proporciona información importante sobre cómo se deben asignar las direcciones de memoria a los símbolos del programa.

3.Información de tamaño y tipo de dato: El compilador también debe proporcionar al editor de ensamblador información sobre el tamaño y tipo de dato utilizado en el programa. Esto es crucial para garantizar que se reserve la cantidad correcta de memoria para cada dato y que se realicen las operaciones adecuadas durante la ejecución del programa.
## 4.   En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300 KB, y 600 KB. ¿Como situarían en memoria  una serie de procesos de 212 KB, 417 KB, 112 KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste? ¿Que algoritmo hace el uso más eficiente de la memoria?

- ### Primer ajuste: Este algoritmo asigna el primer bloque de memoria lo suficientemente grande para acomodar el proceso.

#### Orden de asignación:

Proceso de 212 KB: Asignado a la partición de 500 KB (sobran 288 KB).

Proceso de 417 KB: Asignado a la partición de 600 KB (sobran 183 KB).

Proceso de 112 KB: Asignado a la partición de 200 KB (sobran 88 KB).

Proceso de 426 KB: No se puede asignar a ninguna partición disponible debido a la fragmentación interna.

- ### Mejor ajuste: Este algoritmo asigna el bloque de memoria más pequeño que pueda acomodar el proceso.

#### Orden de asignación:

Proceso de 212 KB: Asignado a la partición de 300 KB (sobran 88 KB).

Proceso de 417 KB: Asignado a la partición de 500 KB (sobran 83 KB).

Proceso de 112 KB: Asignado a la partición de 200 KB (sobran 88 KB).

Proceso de 426 KB: Asignado a la partición de 600 KB (sobran 174 KB).

- ### Peor ajuste: Este algoritmo asigna el bloque de memoria más grande disponible para acomodar el proceso.

#### Orden de asignación:

Proceso de 212 KB: Asignado a la partición de 600 KB (sobran 388 KB).

Proceso de 417 KB: Asignado a la partición de 600 KB (sobran 171 KB).

Proceso de 112 KB: Asignado a la partición de 200 KB (sobran 88 KB).

Proceso de 426 KB: Asignado a la partición de 600 KB (sobran 174 KB).

## 5. La mayoría de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución. ¿Que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas?
## Asignación contigua de memoria:

- Un mecanismo de asignación y liberación de memoria dinámica que permita a los programas solicitar y liberar bloques de memoria según sea necesario durante la ejecución.
- Una estructura de datos para llevar un registro de las regiones de memoria asignadas y liberadas, lo que permite realizar un seguimiento de los espacios libres y ocupados.
- Algoritmos de asignación de memoria, como el mejor ajuste o el primer ajuste, para encontrar el bloque de memoria adecuado para asignar a una solicitud.
Manejo de la fragmentación interna y externa, ya que la asignación y liberación dinámica de memoria puede generar fragmentación, lo que podría requerir técnicas de compactación o reorganización de la memoria.

## Segmentación pura:

- Un mecanismo para asignar segmentos de memoria a medida que los programas solicitan más memoria durante la ejecución.
- Una tabla de segmentos que mantenga información sobre los segmentos asignados, su tamaño y su ubicación en la memoria.
- Manejo de la fragmentación interna y externa, ya que los segmentos pueden tener tamaños variables y pueden quedar espacios vacíos entre ellos, lo que podría requerir técnicas de compactación o reorganización de la memoria.
## Paginación pura:

- Un mecanismo para asignar y liberar páginas de memoria a medida que los programas necesitan más espacio.
- Una tabla de páginas que lleve un seguimiento de las páginas asignadas, las páginas libres y su mapeo a las direcciones virtuales del programa.
- Algoritmos de reemplazo de páginas, como el algoritmo de reemplazo de página menos recientemente utilizada (LRU), para manejar situaciones en las que no hay suficiente memoria disponible para asignar una nueva página.
- Soporte para traducción de direcciones virtuales a direcciones físicas utilizando la tabla de páginas.

## 6.   Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a:
## Asignación continua de memoria:

- Fragmentación externa: Este esquema puede sufrir de fragmentación externa, ya que los programas se asignan en bloques contiguos de memoria. A medida que los programas se cargan y se liberan, los espacios vacíos pueden quedar dispersos en la memoria, lo que puede desperdiciar espacio utilizable.
- Fragmentación interna: La asignación continua de memoria puede tener fragmentación interna, ya que los programas deben ajustarse a los bloques de memoria disponibles. Si un programa no utiliza completamente todo el espacio asignado, se produce fragmentación interna, lo que significa que hay espacio desperdiciado dentro de un bloque asignado.
- Capacidad de compartir código: Es más difícil compartir código en este esquema debido a la falta de flexibilidad para asignar memoria de manera dinámica. Cada programa se carga en un bloque de memoria contiguo, lo que hace que compartir código entre programas sea más complicado.
## Segmentación pura:

- Fragmentación externa: La segmentación pura puede sufrir de fragmentación externa si los segmentos asignados no están ubicados de manera contigua. A medida que se asignan y liberan segmentos, pueden quedar espacios vacíos entre ellos, lo que resulta en fragmentación externa y desperdicio de memoria.
- Fragmentación interna: La segmentación pura no tiene fragmentación interna, ya que los segmentos se asignan según el tamaño exacto de la parte del programa que necesitan. No hay espacio desperdiciado dentro de los segmentos asignados.
- Capacidad de compartir código: La segmentación pura facilita el uso compartido de código, ya que los segmentos pueden ser compartidos entre diferentes programas. Los segmentos de código pueden asignarse a una ubicación específica en la memoria y ser accesibles por múltiples programas, lo que permite una mayor eficiencia en términos de memoria.
## Paginación pura:

- Fragmentación externa: La paginación pura minimiza la fragmentación externa, ya que la memoria se divide en páginas de tamaño fijo. A medida que se asignan y liberan páginas, se pueden llenar los espacios vacíos entre ellas, reduciendo la fragmentación externa.
- Fragmentación interna: La paginación pura puede tener fragmentación interna, ya que los procesos deben ocupar páginas completas, incluso si no utilizan todo el espacio de la página. Esto puede llevar a un desperdicio de memoria dentro de las páginas asignadas.
- Capacidad de compartir código: La paginación pura facilita el uso compartido de código, ya que las páginas de código pueden ser compartidas entre múltiples programas. Las páginas se asignan y reemplazan dinámicamente en la memoria, permitiendo que múltiples programas accedan al mismo código compartido.

## 7.   En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad. 
1.   ¿Por qué? 
-  Esto se debe a la implementación del mecanismo de protección de memoria, que tiene como objetivo garantizar la seguridad y la integridad de los procesos en ejecución. Limitar el acceso de un proceso a su propia memoria asignada ayuda a prevenir interferencias entre procesos, acceso no autorizado a datos confidenciales y fallos del sistema.
3.   ¿Como podía el OS permitir el acceso a otras zonas de memoria?
- En casos específicos y bajo mecanismos adecuados de protección y autorización, el sistema operativo puede permitir el acceso a otras zonas de memoria. Algunas formas en las que esto podría lograrse son mediante mecanismos de comunicación interprocesos (IPC) como colas de mensajes, semáforos o memoria compartida, y mediante la asignación de permisos y privilegios específicos a procesos autorizados.
5.   ¿Por qué debería o por qué no debería?
- Permitir o no permitir el acceso a otras zonas de memoria depende de los requisitos y objetivos específicos del sistema. Permitir este acceso puede facilitar la comunicación y el intercambio de datos entre procesos, pero también aumenta el riesgo de violaciones de seguridad y problemas de integridad. Por lo tanto, es importante evaluar cuidadosamente los beneficios y los riesgos antes de permitir este tipo de acceso en un sistema operativo en particular.
## 8.   Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.
- en términos de la cantidad de memoria requerida para las estructuras de traducción de direcciones virtuales a direcciones físicas, la paginación tiende a ser más eficiente. La tabla de páginas utilizada en la paginación requiere una cantidad constante de memoria, mientras que las tablas de segmentos utilizadas en la segmentación pueden requerir una cantidad de memoria proporcional al número de segmentos utilizados. Sin embargo, es importante tener en cuenta que tanto la paginación como la segmentación tienen ventajas y desventajas en otros aspectos, y la elección entre ellas depende de las características y requisitos específicos del sistema.
## 9.   Considere la siguiente tabla de segmento:
![image](https://github.com/Ankarkis/Operacionales/assets/83093835/2a3c1450-1cf2-4a31-a6a7-cf640f65fdf7)

¿Cuales son las direcciones físicas para las siguientes direcciones lógicas?
1.   0. 430
2.   1. 10
3.   2. 500
4.   3. 400
5.   4. 112
- solucion

Dirección lógica: 0.430

Segmento: 0

Desplazamiento: 430

Dirección física = Base del segmento 0 + Desplazamiento = 219 + 430 = 649

Dirección lógica: 1.10

Segmento: 1

Desplazamiento: 10

Dirección física = Base del segmento 1 + Desplazamiento = 2300 + 10 = 2310

Dirección lógica: 2.500

Segmento: 2

Desplazamiento: 500

Dirección física = Base del segmento 2 + Desplazamiento = 90 + 500 = 590

Dirección lógica: 3.400

Segmento: 3

Desplazamiento: 400

Dirección física = Base del segmento 3 + Desplazamiento = 1327 + 400 = 1727

Dirección lógica: 4.112

Segmento: 4

Desplazamiento: 112

Dirección física = Base del segmento 4 + Desplazamiento = 1952 + 112 = 2064

Finalmente, las direcciones físicas correspondientes son:

**-**Dirección física para 0.430: 649

- Dirección física para 1.10: 2310

- Dirección física para 2.500: 590

- Dirección física para 3.400: 1727

**-**Dirección física para 4.112: 2064
