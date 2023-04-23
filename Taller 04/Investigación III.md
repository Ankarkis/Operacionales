# Investigación
## Para investigar:
Para esta práctica, profundice lo hablado en clase. Investigue los siguientes tópicos y de su opinión:

## 1. Las funciones y servicios proporcionados por el OS pueden dividirse en dos categorías,descríbalas.
***- Servicios del sistema:*** son indispensables para que el sistema operativo funcione adecuadamente y se comunique con los programas de aplicación y los usuarios. Estos tienen diversas tareas esenciales como la administración de procesos, memoria, dispositivos de entrada y salida, archivos y directorios, redes y seguridad del sistema.

***- Servicios de aplicación:*** estos apoyan a los programas de aplicación en la realización de tareas específicas, como la generación de números aleatorios, el acceso a bases de datos, la gestión de gráficos, la impresión y el correo electrónico.

## 2. Enumere cinco servicios proporcionados por el OS diseñados para facilitar la comodidad del usuario.

1. Gestor de ventanas: estos suelen tener un gestor de ventanas que permite a los usuarios manipular y organizar las ventanas de las aplicaciones abiertas, lo que facilita la multitarea.

2. Gestor de contraseñas: permite a los usuarios almacenar y gestionar sus contraseñas de forma segura, lo que facilita la autenticación en línea.

3. Copia de seguridad automática: permite a los usuarios hacer una copia de seguridad regular de sus archivos importantes sin tener que hacerlo manualmente.

4. Asistente de voz: permite a los usuarios interactuar con el sistema operativo y realizar tareas a través de comandos de voz.

5. Copiar y pegar: la capacidad de copiar y pegar texto y otros elementos entre aplicaciones hace que sea más fácil para los usuarios mover información de un lugar a otro.

## 3. Describa como se puede generar un informe estadístico de la cantidad de tiempo y recursos consumidos por un programa.
- se puede usar una herramienta llamada "profiler". Esta herramienta mide el rendimiento del programa mientras se ejecuta y nos da información sobre cuánto tiempo y recursos consume cada parte del programa. Con esta información, los desarrolladores pueden encontrar áreas donde el programa está funcionando lento o usando demasiada memoria, y así mejorar su rendimiento. El informe generado por el profiler incluye gráficos y tablas que resumen esta información. Así, los desarrolladores pueden hacer que sus programas sean más rápidos y eficientes.

## 4. Enumere y describa cinco actividades de un OS enfocadas a la administración de archivos.

1. Fragmentación de archivos: El sistema operativo divide los archivos grandes en fragmentos más pequeños para aprovechar mejor el espacio disponible en el disco duro.

2. Indexación de archivos: El sistema operativo crea un índice de los archivos en el disco para acelerar las búsquedas y mejorar el rendimiento del sistema.

3. Cifrado de archivos: El sistema operativo utiliza algoritmos de cifrado para proteger los archivos y carpetas contra accesos no autorizados o para garantizar la privacidad de los datos.

4. Sincronización de archivos: El sistema operativo permite la sincronización de archivos entre diferentes dispositivos o servicios en la nube, asegurando que siempre se tenga la versión más reciente de los archivos.

5. Asignación de permisos de archivos: El sistema operativo controla el acceso y los permisos de los usuarios para acceder, modificar, eliminar o compartir archivos y carpetas en el sistema.

## 5. Compare las ventajas y desventajas de usar la misma interfaz de llamadas al sistema para la manipulación de archivos como de dispositivos.
- tiene ventajas como la uniformidad, flexibilidad y compatibilidad del código. Esto facilita el desarrollo y mantenimiento del software, y garantiza que sea compatible con diferentes sistemas operativos. Sin embargo, también existen desventajas, como la complejidad del código, la dificultad en la gestión de errores y posibles problemas de rendimiento.

## 6. Conteste las siguientes preguntas:
### Cual es el propósito del intérprete de comandos?
- permitir que los usuarios interactúen con el sistema operativo mediante la entrada de comandos
### Por qué está separado del kernel?
- Esto es debido a que proporciona un mayor rendimiento seguridad y flexibilidad al sistema operativo.
### Liste los requisitos para desarrollar un intérprete de comandos.
- 1. Analizador léxico (lexer): encargado de tomar el flujo de caracteres de entrada y convertirlo en una secuencia de tokens. Cada token representa un componente sintáctico básico del lenguaje.
- 2. Analizador sintáctico (parser): se encarga de tomar la secuencia de tokens generada por el lexer y construir la estructura de la entrada.
- 3. Tabla de símbolos (symbol table): permite almacenar información sobre los símbolos que se utilizan en el programa, como variables, funciones, etc.
- 4. Evaluador de expresiones: encargado de evaluar las expresiones que se encuentran en el código, para poder obtener un valor.
- 5. Módulo de ejecución: es el encargado de ejecutar el código que se ha analizado y evaluado.
- 6. Manejador de errores: detectar y reportar errores en el código fuente.
- 7. Biblioteca estándar: funciones y herramientas que proporcionan una funcionalidad común y útil que el intérprete puede utilizar.
- 8. Interfaz de usuario: medio a través del cual el usuario interactúa con el intérprete

## 7. Compare las ventajas y desventajas de los modelos de intercomunicación.
- Los modelos de intercomunicación tienen ventajas como la facilidad de integración con otros sistemas, la capacidad de dividir el trabajo en componentes más pequeños y la flexibilidad para cambiar o actualizar componentes individuales sin afectar el resto del sistema. Sin embargo, también presentan desventajas como la complejidad, la sobrecarga de comunicación y posibles problemas de seguridad.
## 8. Conteste las siguientes preguntas:
### Cual es la principal ventaja de usar microkernel en el diseño del OS?
- Es más independiente puesto que se puede agregar eliminar o modificar características de los componentes sin necesidad de afectar los otros que componen la arquitectura.
### Como interactúan los programas de usuario y los servicios del OS en una arquitectura basada en microkernel?
- se implementan como procesos de usuario que se ejecutan fuera del núcleo del sistema operativo con lo que reduce el riesgo de fallos catastróficos y aumenta la fiabilidad del sistema operativo.
### Cuales son las desventajas de usar la arquitectura de microkernel?
- La complejidad y la incompatibilidad con ciertos programas puesto que hay una gran variedad de programas diseñados para OS monolíticos.
## 9. Compare las ventajas y desventajas de usar VM.
- las VM son una herramienta útil para optimizar el uso de recursos de hardware y mejorar la seguridad y estabilidad del sistema. Sin embargo, en sus desventajas los problemas de rendimiento y la complejidad en la administración y configuración son un factor importante a considerar las VM también pueden tener limitaciones en términos de acceso a recursos de hardware específicos, como tarjetas gráficas avanzadas o dispositivos de entrada/salida especializados.
