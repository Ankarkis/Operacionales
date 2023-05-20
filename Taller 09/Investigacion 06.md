# Investigación
## Para esta practica, profundice lo hablado en clase. Investigue los siguientes tópicos y de su opinión:

## 1. Cual es significado del termino espera activa?
- Es cuando un programa sigue revisando repetidamente una condición o evento para poder continuar con su ejecución. Es como estar revisando constantemente el progreso de una descarga en lugar de detenerse por completo.
## 2. De que manera se puede evitar la espera activa?
- Se pueden utilizar mecanismos de sincronización más eficientes y menos intensivos en recursos como por ejemplo:
Semáforos y Mutex, Variables de condición, Eventos y señales, Colas de mensajes, Temporizadores. estos mecanismos pueden evitar la espera activa en un sistema operativo. La elección del mecanismo adecuado dependerá del contexto y los requisitos específicos del sistema
## 3. Explique por qué los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador, pero se usan con frecuencia en los sistemas multiprocesador.
- no son apropiados para sistemas monoprocesador debido a su ineficiencia en el uso de recursos y su impacto en el rendimiento general del sistema. Sin embargo, en los sistemas multiprocesador, donde hay varios núcleos de procesamiento, la espera activa se puede utilizar de manera más efectiva gracias al paralelismo y a la disponibilidad de mecanismos de sincronización más avanzados.
## 4. Explique por qué las interrupciones no son apropiadas para implementar primitivas de sincronización en los sistemas multiprocesador.
- no son apropiadas para implementar primitivas de sincronización en sistemas multiprocesador debido a la falta de sincronización y coherencia de memoria entre los procesadores. 
## 5. Describa como se puede utilizar la instrucción swap() para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada.
- Para lograr esto, se puede utilizar una variable compartida llamada "lock" que indica el estado de exclusión mutua. La instrucción swap() permite intercambiar el valor de esta variable entre dos valores posibles, como 0 y 1, donde 0 indica que el recurso está disponible y 1 indica que el recurso está en uso.
- ejemplo:
lock = 0

def adquirir_exclusion_mutua():
    while swap(lock, 1) != 0:
        # Espera activa limitada, repite hasta que se adquiera la exclusión mutua

def liberar_exclusion_mutua():
    lock = 0

## 6. Los servidores pueden diseñarse de modo que limiten el numero de conexiones abiertas. Explique cómo puede utilizar un servidor los semáforos para limitar el numero de conexiones concurrentes.
- 
## 7. Demuestre que los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización.
- 
## 8. La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas. Explique por qué es cierto esto.
- 
## 9. Por qué Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador?
- 
