# Investigación
## Para esta practica, profundice lo hablado en clase. Investigue los siguientes tópicos y de su opinión:
## 1. Explique el soporte por hardware requerido para implementar la paginación bajo demanda.
Para implementarla, se requiere soporte por hardware, como:

- ***Unidad de gestión de memoria (MMU):*** Traduce direcciones virtuales en direcciones físicas utilizando tablas de páginas y maneja interrupciones cuando una página no está en memoria.

- ***Tabla de páginas:*** Estructura de datos utilizada por la MMU para traducir direcciones virtuales a direcciones físicas, contiene información sobre las páginas y su ubicación física.

- ***Bit de validez/invalidez:*** Cada entrada de la tabla de páginas tiene un bit que indica si una página está en memoria física o en el almacenamiento secundario.

- ***Almacenamiento secundario:*** Se utiliza un disco duro o SSD para almacenar las páginas que no están en la memoria física. Cuando una página es requerida y no está en memoria, se carga desde el almacenamiento secundario.
## 2. ¿Qué es la característica de copia durante la escritura y en que circunstancias es ventajoso usar estas características?
- la característica de copia durante la escritura es ventajosa en situaciones donde se comparten recursos y se evita la duplicación innecesaria de datos al realizar modificaciones. Proporciona eficiencia en el uso de memoria y tiempo de ejecución en comparación con la copia completa de recursos compartidos.
## 3. ¿Cual es el soporte de hardware requerido para implementar las características de copia durante escritura?
- la implementación de la copia durante la escritura se centra en el software, y no hay requisitos específicos de hardware para su implementación. Su funcionalidad se basa en técnicas y algoritmos de software para compartir y copiar datos de manera eficiente.
## 4. Indique una situación en la que el algoritmo de sustitución de las páginas menos frecuentes utilizadas genere menos fallos de pagina que el algoritmo de sustitución de las paginas más recientemente utilizadas.
- El algoritmo de reemplazo de páginas menos comunes puede ser más efectivo que el algoritmo de reemplazo de páginas más recientes en casos donde las páginas menos utilizadas tienen una alta probabilidad de ser requeridas en el futuro. Por ejemplo, si un programa sigue un patrón de ejecución en el cual utiliza un grupo de páginas repetidamente y luego cambia a otro grupo, el algoritmo de páginas menos comunes puede evitar la eliminación de aquellas páginas que serán necesarias en breve.
## 5. Indique una situación en la que el algoritmo de sustitución de las páginas mas frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas.
- El algoritmo de reemplazo de páginas más comunes puede mostrar un desempeño superior al algoritmo de reemplazo de páginas menos recientes en situaciones en las que las páginas utilizadas con mayor frecuencia tienen una alta probabilidad de ser requeridas en el futuro cercano. Por ejemplo, si un programa utiliza de manera constante un conjunto específico de páginas, estas páginas no serán eliminadas, lo que previene posibles fallos de página.
## 6. Un sistema utiliza un algoritmo de sustitución FIFO para las paginas resientes y un conjunto compartido de marcos libres compuesto por páginas recientemente utilizadas. Si el conjunto compartido de marcos libres se gestiona utilizando la política de sustitución menos 
recientemente utilizadas. De una respuesta a los siguientes casos:
- En caso de ocurrir un fallo de página y si la página está presente en el conjunto compartido de marcos libres, es posible crear espacio libre para la nueva página solicitada al remover la página que ha estado en dicho conjunto por más tiempo, siguiendo el principio FIFO (Primero en entrar, primero en salir).

- Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, se activa la página residente mediante la actualización del bit de acceso en la tabla de páginas. Se puede liberar espacio para la página solicitada empleando el algoritmo de reemplazo menos recientemente utilizado, el cual desalojará las páginas del conjunto de marcos libres.
## 7. Considere un sistema de paginación bajo demanda con las siguientes tasas de utilización:
- Instalar una CPU más rápida: No necesariamente mejorará la utilización de la CPU. Si la CPU ya tiene un uso bajo y el sistema está limitado por la E/S de disco, entonces una CPU más rápida no resolverá el cuello de botella.

- Instalar un disco de paginación de mayor tamaño: No necesariamente mejorará la utilización de la CPU. El tamaño del disco de paginación no afectará la velocidad a la que los datos pueden leerse o escribirse.

- Incrementar el grado de multiprogramación: Podría mejorar la utilización de la CPU al mantener más procesos en memoria y por lo tanto tener un mayor chance de tener un proceso listo para ejecutarse en todo momento.

- Instalar más memoria principal: Puede mejorar la utilización de la CPU al reducir la cantidad de paginación de disco necesaria, lo que podría reducir los tiempos de espera de la CPU.

- Instalar un disco duro más rápido: Puede mejorar la utilización de la CPU al reducir el tiempo que la CPU tiene que esperar por las operaciones de E/S del disco.
