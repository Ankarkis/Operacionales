# ***```Investigación 06```***
## ***Para esta practica, profundice lo hablado en clase. Investigue los siguientes tópicos y de su opinión:***
![image](https://github.com/Ankarkis/Operacionales/assets/83093835/c3d118bc-afb3-4dd2-b7be-0040bde11477)

## 1. Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen.
- Exclusión mutua: Cada vehículo en la imagen ocupa su propio carril sin compartirlo con otros.

Explicación: En la imagen, los vehículos se encuentran en carriles separados, sin invadir el espacio del otro.

- Espera de retención: Los vehículos mantienen su carril actual mientras esperan el acceso a otro carril.

Explicación: En la imagen, los vehículos se mantienen en sus carriles, pero al mismo tiempo esperan que el carril siguiente esté disponible para avanzar.

- No preempción: Los carriles ocupados por un vehículo no pueden ser obligados a ser liberados.

Explicación: En la imagen, los vehículos no pueden ser forzados a abandonar su carril actual antes de que se les dé acceso al siguiente carril.

- Espera circular: Cada vehículo está esperando a que otro libere un recurso.

Explicación: En la imagen, los vehículos forman una especie de "cola" donde cada uno está esperando que el vehículo delante de él se mueva para poder avanzar.
## 2. Considere la imagen, enuncie una regla simple para evitar los interbloqueos en este sistema.
- para prevenir los interbloqueos en este sistema consistiría en implementar un semáforo o una señal de control que regule el movimiento de los vehículos. Esta medida garantizaría que únicamente un carril pueda avanzar en un determinado momento.

Explicación: Para evitar que los vehículos se bloqueen unos a otros, se propone la instalación de un semáforo o una señal de control en el sistema. Esta medida permitiría regular el flujo de los vehículos, asegurando que solo un carril tenga permiso para avanzar mientras los demás esperan su turno. De esta manera, se evita la situación en la que varios vehículos intentan avanzar al mismo tiempo y se crean bloqueos en la circulación. Esta estrategia proporciona una solución efectiva y sencilla para mantener el tráfico fluido y prevenir los interbloqueos en el sistema.
## 3. Explique como se cumplen las condiciones básicas de interbloqueo en el problema de la cena de los filósofos.
- En el problema de la cena de los filósofos, las condiciones básicas de interbloqueo se cumplen debido a que los filósofos necesitan dos palillos para comer. Esto crea una situación en la que todos los filósofos pueden tomar un palillo pero no pueden continuar hasta que tengan el segundo palillo. Si todos los filósofos toman un palillo y esperan por el otro palillo que está siendo retenido por otro filósofo, se produce un interbloqueo.
## 4. Explique como podría evitarse los interbloqueos impidiendo que se cumpla una de las condiciones en el problema de la cena de los filósofos.
- Para evitar los interbloqueos en el problema de la cena de los filósofos, se puede evitar que se cumpla la condición de retención y espera. Una forma de hacerlo es establecer reglas para que los filósofos tomen los palillos de manera asimétrica, es decir, que cada filósofo tome el palillo izquierdo o derecho primero. Esto evita que todos los filósofos retengan un palillo a la vez y esperen por el otro, rompiendo así el ciclo de espera circular y evitando el interbloqueo.
## 5. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tiempo de ejecución adicional necesario.
- Comparando el esquema de espera circular con los esquemas de evasión de interbloqueos en términos de tiempo de ejecución adicional necesario: El esquema de espera circular puede llevar más tiempo en comparación con los esquemas de evasión de interbloqueos. En el esquema de espera circular, si se produce un interbloqueo, los procesos pueden quedar en espera indefinidamente hasta que se resuelva el interbloqueo. Esto puede resultar en un mayor tiempo de ejecución adicional necesario. Por otro lado, los esquemas de evasión de interbloqueos están diseñados para evitar los interbloqueos de manera más eficiente y rápida, lo que puede resultar en un menor tiempo de ejecución adicional necesario.
## 6. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tasa de procesamiento del sistema.
- En cuanto a la tasa de procesamiento del sistema, los esquemas de evasión de interbloqueos son más eficientes que el esquema de espera circular. En el esquema de espera circular, los procesos pueden quedar en espera indefinida cuando ocurre un interbloqueo, lo cual reduce la velocidad del sistema. En cambio, los esquemas de evasión de interbloqueos están diseñados para resolver los interbloqueos de forma más rápida y eficiente, permitiendo que los procesos continúen ejecutándose sin retrasos significativos.
## 7. Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos; cada proceso necesita como máximo dos recursos. Demuestre que el sistema esta libre de interbloqueos.
- Si tenemos un sistema con cuatro recursos del mismo tipo, compartidos entre tres procesos, donde cada proceso necesita como máximo dos recursos, podemos asegurar que el sistema está libre de interbloqueos. Esto se debe a que la cantidad total de recursos disponibles es suficiente para satisfacer las necesidades máximas de los procesos. Siempre habrá suficientes recursos para que cada proceso pueda completar su ejecución sin interbloqueos, evitando así la situación de bloqueo.


## 8. Considere el problema de los filósofos, los palillos se colocan en el centro de la mesa y cualquier filósofo puede usar dos palillos, la solicitud de los palillos se hace de una en una. Describa una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos.
- En el problema de los filósofos, una regla simple para determinar si una solicitud de palillos puede ser satisfecha sin interbloqueos es verificar si todos los filósofos pueden tomar al menos un palillo al mismo tiempo. Si cada filósofo puede tomar al menos un palillo, podrán comenzar a comer sin problemas. Sin embargo, si al menos un filósofo no puede tomar un palillo porque ya está en uso por otro filósofo, se producirá un interbloqueo
## 9. Cual es la suposición optimista realizada en el algoritmo de detección de interbloqueos y como podría violarse esta suposición?
- La suposición optimista en el algoritmo de detección de interbloqueos es que los procesos no solicitarán nuevos recursos después de haber retenido los recursos que ya tienen. Esta suposición permite al algoritmo tomar decisiones basadas en la asignación actual de recursos. Sin embargo, esta suposición puede violarse si un proceso solicita nuevos recursos después de haber retenido los actuales. Si esto ocurre, el algoritmo de detección de interbloqueos puede no ser capaz de identificar correctamente el interbloqueo y resolverlo. Por lo tanto, es importante que los procesos sigan las reglas y no soliciten nuevos recursos después de retener los actuales para evitar violar esta suposición optimista.
