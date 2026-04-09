# Tp3

## Explicacion 

Se creó un entorno de trabajo basado en Ubuntu utilizando Docker, comenzando con la definición de un `Dockerfile` para construir una imagen reproducible. Luego, se desarrolló un script en Bash que automatiza la creación de una estructura de directorios y archivos para una empresa, incluyendo operaciones básicas del sistema como creación, escritura, copia, renombrado y eliminación de archivos. El script fue integrado al contenedor (ya sea copiándolo en la imagen o montándolo desde el host), se le asignaron permisos de ejecución y se ejecutó dentro del entorno, permitiendo practicar la navegación y manipulación del sistema de archivos en Linux de forma controlada y replicable.

## Comandos docker

docker build -t ubuntu-entorno .
docker run -it ubuntu-entorno

## Comandos del script

mkdir → crea carpetas
cd → cambia de directorio
touch → crea archivos vacíos
echo > → escribe contenido en archivos
cat → muestra contenido
cp → copia archivos
mv → mueve o renombra
rm → elimina archivos
chmod +x → da permisos de ejecución

## Respuesta Preguntas

* **¿Qué hace el script?**
  El script arma una estructura de carpetas para una “empresa”, crea archivos dentro de ellas, les agrega contenido y después hace algunas operaciones básicas como copiar, renombrar y borrar archivos. Básicamente automatiza tareas que uno haría manualmente en la terminal.

* **¿Qué comandos de Linux usó?**
  Se usaron comandos como `mkdir` (crear carpetas), `cd` (moverse entre directorios), `touch` y `echo` (crear y escribir archivos), `cat` (ver contenido), `cp` (copiar), `mv` (mover o renombrar) y `rm` (eliminar archivos).

* **¿Para qué sirve chmod +x?**
  Sirve para darle permiso de ejecución a un archivo, en este caso al script. Sin eso, el sistema no te deja correrlo directamente como programa.

* **¿Qué diferencia hay entre cp y mv?**
  `cp` copia un archivo dejando el original intacto, mientras que `mv` lo mueve o lo renombra, o sea, cambia su ubicación o nombre sin dejar una copia.

* **¿Qué pasaría si no uso cd correctamente?**
  Los archivos o carpetas se crearían en lugares incorrectos, lo que puede desordenar todo o hacer que el script no funcione como se espera.

* **¿Qué aprendió en esta práctica?**
  Aprendí a usar Docker para levantar un entorno Linux, a manejarme dentro del sistema de archivos con comandos básicos y a automatizar tareas con un script en Bash. También entendí mejor cómo funcionan los permisos y la estructura de directorios.
