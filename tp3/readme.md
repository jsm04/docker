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