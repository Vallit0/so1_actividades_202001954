# Completely Fair Scheduler (CFS) de Linux 🐧

El **Completely Fair Scheduler (CFS)** es un planificador de procesos introducido en la versión 2.6.23 del kernel de Linux, diseñado para mejorar la equidad y el rendimiento en la asignación del tiempo de CPU entre procesos.

## Características Principales del CFS 🌟

- **Basado en Proporción de Tiempo**: El CFS distribuye el tiempo de CPU basándose en la proporción, intentando ofrecer a cada proceso un tiempo equitativo de acuerdo a su prioridad. 🕒

- **Virtual Runtime (vruntime)**: Utiliza una métrica llamada "vruntime" para rastrear cuánto tiempo ha estado ejecutándose cada tarea, seleccionando para ejecución al proceso con el menor vruntime. ⏱

- **Red-Black Trees para Gestión de Tareas**: Emplea árboles rojo-negro para organizar eficientemente las tareas pendientes, permitiendo una selección rápida del próximo proceso a ejecutar. 🌲

- **Sensibilidad a la Carga de Trabajo**: Se ajusta automáticamente a diferentes cargas de trabajo, priorizando la eficiencia del sistema y una experiencia de usuario ágil. 💼

- **Slices de Tiempo Adaptativos**: El tamaño del quantum de tiempo asignado a cada proceso se ajusta dinámicamente, adaptándose a las variaciones en el número de procesos en ejecución. 🔁

## Funcionamiento del CFS 🛠

1. **Asignación de vruntime**: A cada proceso se le asigna un vruntime que incrementa mientras ejecuta, ajustado por la prioridad para asegurar equidad. ➕

2. **Selección de Procesos**: El proceso con el menor vruntime en el árbol rojo-negro es elegido para ejecución, garantizando una distribución justa del tiempo de CPU. 🔍

3. **Rebalanceo de Carga**: El CFS rebalancea la carga entre núcleos de CPU para mantener la eficiencia en sistemas multi-núcleo. ⚖

4. **Ajuste Dinámico de Slices de Tiempo**: Los slices de tiempo se ajustan según el número y prioridad de los procesos en ejecución, permitiendo una adaptación fluida a diferentes cargas de trabajo. 🔄

El **CFS** marca un avance significativo en la planificación de procesos, enfocándose en la equidad y el rendimiento para proporcionar una experiencia óptima al usuario y una gestión eficiente de los recursos del sistema.
