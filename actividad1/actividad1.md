# Operating Systems Homework

| Universidad de San Carlos de Guatemala | Estuardo Sebastián Valle Bances |
|----------------------------------------|---------------------------------|
| Facultad de Ingeniería                 | 202001954                       |
|----------------------------------------|---------------------------------|
| Escuela de Ciencias y Sistemas         | 3674647640101                   |
|----------------------------------------|---------------------------------|



## Table of Contents

1. [Introduction](#introduction)
2. [Tipos de Kernel](#types)
3. [User vs. Kernel](#user)
4. [Interrupciones vs. Traps](#int)
5. [Conclusiones](#conclusion)
6. [Referencias](#referencias)

## Introducción <a name="introduction"></a>


De acuerdo a Tanenbaun (2010), el Kernel es fundamental y además de proveer manejo de procesos, manejo de dispositivos, manejo de memoria, interrupciones y organizacion de los procesos mismos, tiended a ser eficientes dentro de la distribucion de "tipos" que se les da.  
## Tipos de Kernels <a name="types"></a>

Ampliando la información con Silberchatz (2012) El kernel de linux puede ser categorizado en distintos tipos, estos tipos son los siguientes:

- **Monolithic Kernels** 
- **Microkernels** 

- **Hybrid Kernels** 

- **Exokernels** 

Exactamente 4 tipos generales de Kernels.

### Monolithic Kernels
Es aquel que implementa las características del sistema como archivos, manejo de memoria y asociacion de recursos con el espacio del Kernel.

Distintos ejemplos podrían ser **DOS**,**Solaris**,**AIX**, entre otros. 

Principalmente maneja tareas como el arreglo de las tareas del CPU y syscalls (o llamadas de sistema) debido a recursos limitados. 

### MicroKernels

El microkernel es una arquitectura de Sistemas Operativos utilizada para manejo de archivos y memoria, manejo de procesos, entre otras cosas. Es similar al monolitico pero este acomoda espacio para tareas como compartir archivos. Cada servicio tiene una dirección, reduciendo el kernel en general. 

**La idea principal del microkernel ampliar la fiabilidad reduciendo las tareas en tareas mas pequeñas**
 Ofrece comunicación entre los programas cliente, el user-space y reduce el tamaño general del Sistema Operativo. 
### Hybrid Kernels
Los Hybrid Kernels ofrecen una mezcla entre las características más generales del kernel monolítico y el microkernel. Se extiende la idea de microkernel con código agregado en el espacio del Kernel y características del monolítico para crear un mejor rendimiento. 
Sin embargo, no pueden correr modulos de Runtime. XNU significa "X is not enhanced". 

**A diferencia del microkernel puro, los diseñadores deciden que componentes se deben quedar dentro del kernel y cuales no**

El kernel hibrido inicia como un Kernel Monolítico y progrsivamente cambia a componentes del user-space. 
### Nano Kernels 
Este kernel es uno que utiliza hardware que corre con un reloj de nanosegundos. 
Esta arquitectura, aunque no es muy utilizada, prioriza estabilidad seguridad y software continuo. **El nanokernel opera con 100KB**

### Exokernel 
Un exokernel establece una alineación de aplicaciones a nivel arquitectura. Es decir, no existe una gran abstracción entre el hardware y el software. LOs exokernel buscan minimizar abstracciones y hacer a los developers manejar el hardware directamente. 

### Cuadro Comparativo 

## User vs. Kernel Mode <a name="user"></a>

Al hacer uso de un sistema operativo pueden existir distintos roles de los cuales se limita el acceso a hardware, operaciones de software y demás. 

Estos modos son **User Mode**  y **Kernel Mode**

### User mode 
El user mode tiene acceso limitado en cuanto a referencias en memoria y no tiene acceso directo al hardware. Sin embargo, este modelo es el que permite la estabilización de un sistema operativo como producto hacia un tipo de usuario final sin la necesidad de un perfil técnico. 
Algunas de las características del user mode son: 
- Acceso Limitado 
- Ejecución de aplicaciones 
- Seguridad 

### Kernel Mode 
El modo de Kernel es aquel que provee al usuario tecnico un perfil de acceso completo hacia  las funcionalidades del sitsemas operativo., Este no solamente puede ser accesado sin seguridad ni codigo restringido sino que puede ser utilizado para el acceso a Harware y la memoria del sistema.
Entre las caracteristicas principales pueden estar: 
- Acceso Ilimitado 
- Acceso a Funciones "Core" del sistema 
- Potenciales Riesgos. 

## Interruption vs. Traps <a name="int"></a>

Principalmente, debemos definir el objetivo de las interrupciones y las Traps. En general, funcionan para dar funcionamiento a los CPUs utilizados y el ejercicio general de drivers. 

### Trap
Un trap ocurre cuando el usuario invoca alguna funcionalidad del sistema operativo. Por ejemplo, la impresion del contenido de una pantalla es necesaria. 

Una "Trap" es producida por medio d el software para crear una interrupcion que puede ser causada por multiples factores, incluyendo división por cero, múltiples operadores de acceso ilicito a la memoria, entre otros.

Las Traps son **Sincronas** debido a que su ejecucion, puede causar mas traps y subsecuentemente la generacion de una interrupcion. Estas son causadas intencionalmente por le usuario. 
### Interrupcion
Las interrupciones son señales que se generan, ya sea por hardware o software, para alertar al procesador sobre un evento que necesita atención inmediata. Estas pueden ser externas, como una señal de entrada/salida, o internas, como una instrucción de interrupción en el código. A diferencia de las "traps", las interrupciones suelen ser asincrónicas, es decir, pueden ocurrir en cualquier momento, independientemente de la ejecución del programa

### Tabla comparativa
### Tabla Comparativa entre Trap e Interrupción

| Característica       | Trap                                         | Interrupción                                   |
|----------------------|----------------------------------------------|------------------------------------------------|
| Causa                | Errores o llamadas específicas en el software| Eventos externos o señales específicas         |
| Sincronía            | Sincrónicas                                  | Asincrónicas                                   |
| Control              | Controladas por el programa y el OS          | Pueden ser inesperadas y externas al programa  |
| Ejemplo              | División por cero, acceso ilegal a memoria   | Señal de hardware, solicitud de E/S           |


## Conclusion <a name="conclusion"></a>

Bajo la presente, se podría cooncluir en distintas cosas relativas lo estudiado dentro de las interrupciones, Traps, y modalidades del kernel de linux. 


## Referencias <a name="referencias"></a>
Tanenbau, Andrew (2010) Modern Operating Systems, pp.65 McGraw Hill.Recuperado el 25 de Enero de 2024.

Silberschatz (2012) Operating System Concepts. McGraw Hill, pp. 55 Recuerado el 25 de Enero. 

