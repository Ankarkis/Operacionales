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
## 5. Indique una situación en la que el algoritmo de sustitución de las páginas mas frecuentemente 
utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos 
recientemente utilizadas.
## 6. Un sistema utiliza un algoritmo de sustitución FIFO para las paginas resientes y un conjunto 
compartido de marcos libres compuesto por páginas recientemente utilizadas. Si el conjunto 
compartido de marcos libres se gestiona utilizando la política de sustitución menos 
recientemente utilizadas. De una respuesta a los siguientes casos:
◦ Si se produce un fallo de página y la página se encuentra en el conjunto compartidos de 
marcos libres, ¿cómo puede generarse espacio libre para la nueva página solicitada?
◦ Si se produce un fallo de página y la página se encuentra en el conjunto compartido de 
marcos libres, ¿cómo se activa la página residente y cómo se gestiona el conjunto 
compartido de marcos libres para hacer sitio para la página solicitada?
## 7. Considere un sistema de paginación bajo demanda con las siguientes tasas de utilización:
◦ Uso de CPU 20%
◦ Paginación de disco 97,7%
◦ Otros dispositivos de I/O 5%
Para las siguientes afirmaciones, indique si permitirá o es probable que permita mejorar las 
tasas de utilización de la CPU. De razones para su respuesta.
◦ Instalar una CPU más rápida.
◦ Instalar un disco de paginación de mayor tamaño.
◦ Incrementar el grado de multiprogramación.
◦ Instalar mas memoria principal.
◦ Instalar un disco duro mas rápidos
