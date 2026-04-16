# Cuestionario Práctico - Máquinas Virtuales, Docker y GitHub Actions

## Alumno: Moretti, Jose I.
## Fecha: 4/16/26 

---

## Máquinas Virtuales

1. ¿Qué es una máquina virtual y para qué se utiliza?

Una máquina virtual es una instancia de software que simula una computadora y permite ejecutar sistemas operativos y aplicaciones, compartiendo los recursos del sistema anfitrión.

2. Nombrá dos diferencias entre una máquina virtual y una computadora física.

Una máquina virtual depende de un hipervisor y del hardware de otra computadora para ejecutarse, mientras que una computadora física utiliza directamente su propio hardware. Además, una máquina virtual comparte recursos (CPU, memoria, disco) con otras máquinas virtuales, mientras que una computadora física tiene acceso exclusivo a sus recursos.

3. ¿Qué función cumple un hipervisor?

Una máquina virtual depende de una capa de abstracción para funcionar. El hipervisor es el software que provee esa capa, gestionando y controlando las máquinas virtuales sobre el hardware.

4. Mencioná dos programas que permitan crear máquinas virtuales.

QEMU y VirtualBox

5. ¿Qué significa asignar 4 GB de RAM a una máquina virtual?

Significa que le estoy asignando 4GB de memoria real que proviene del hardware.

6. ¿Qué es una imagen ISO y para qué sirve?

Una imagen ISO es un formato digital que intenta ser una copia exacta de un disco. Funciona como un disco de donde se lee informacion pero de manera virtual.

7. ¿Para qué se utiliza SSH al conectarse a una máquina virtual Linux?

SSH es un protocolo que se utiliza para conectarse de manera remota y segura a un terminal o shell en un servidor.

8. Escribí el comando para conectarte por SSH al usuario `admin` en la IP `192.168.1.50`

```sh
ssh admin@192.168.1.50
```

9. ¿Qué significa que una máquina virtual sea efímera?
Significa que, al apagarse, los datos que estaban almacenados se pierden.

10. ¿Qué ventaja tiene usar snapshots en una VM?
La ventaja principal es que permite guardar el estado de ejecucion de una máquina virtual en un momento dado. Se puede utilizar para pruebas o seguridad.

---

## Docker

11. ¿Cuál es la diferencia entre imagen Docker y contenedor Docker?

Una imagen Docker es una imagen inmutable que contiene todo lo que debe tener un sistema operativo para ejecutarse (código, dependencias, etc), mientras que un contenedor es una instancia de esa imagen.

12. ¿Qué comando muestra los contenedores en ejecución?

```sh
docker ps
```

13. ¿Qué comando muestra todos los contenedores, incluso detenidos?

```sh
docker ps -a
```

14. ¿Qué comando se usa para descargar una imagen de Ubuntu?

```sh
docker pull ubuntu:latest
```

15. ¿Qué comando crea y ejecuta un contenedor Ubuntu interactivo?

```sh
docker run -it ubuntu
```

16. ¿Qué significa mapear el puerto `8080:80`?

Significa que el puerto 8080 del host se redirige al puerto 80 del contenedor.

17. Nombrá tres estados posibles de un contenedor Docker.

- running
- exited
- paused

18. ¿Qué comando detiene un contenedor llamado `webapp`?

```sh
docker stop webapp
```

19. ¿Qué comando elimina un contenedor llamado `mysql-db`?

```sh
docker rm mysql-db
```

20. Escribí un ejemplo simple de `docker run` con nginx exponiendo puerto 8080.

```sh
docker run -p 8080:80 nginx
```

---

## GitHub Actions

21. ¿Qué es GitHub Actions?

Es un sistema de automatización (CI/CD) integrado en GitHub que permite ejecutar workflows ante eventos del repositorio.

22. ¿Para qué sirve un archivo YAML en GitHub Actions?

Sirve para definir workflows: eventos, jobs, pasos y acciones que se van a ejecutar.

23. ¿En qué carpeta se guardan los workflows?

```sh
.github/workflows/
```

24. ¿Qué evento ejecuta un workflow cuando se hace push al repositorio?

```sh
on: push
```

25. ¿Qué hace la action `actions/checkout`?

Descarga el código del repositorio en el runner para poder trabajar con él.

26. ¿Qué hace la action `actions/setup-node`?

Configura el entorno de Node.js 

27. ¿Para qué sirve automatizar tests en CI/CD?

Permite detectar errores de manera automatica y evitar integrar código que rompe la aplicación.

28. Escribí una estructura mínima de workflow con `push`.

```yaml
    name: CI

    on: push

    jobs:
    build:
        runs-on: ubuntu-latest
        steps:
        - uses: actions/checkout@v3
```

29. ¿Qué ventaja tienen las runners efímeras?

Son entornos temporales que:

    - se crean desde cero en cada ejecución
    - evitan contaminación entre builds
    - mejoran seguridad y reproducibilidad

30. ¿Qué pasaría si falla un test en el pipeline?

El pipeline falla y se detiene.

---
Respuestas directas:

31. Escribí el comando para crear una carpeta llamada `proyecto_vm`.

```bash
mkdir proyecto_vm
```

32. Escribí el comando Linux para entrar en esa carpeta.

```bash
cd proyecto_vm
```

33. Escribí el comando para crear un archivo llamado `app.js`.

```bash
touch app.js
```

34. Escribí un Dockerfile mínimo usando Node.js.

```dockerfile
FROM node:18
WORKDIR /app
COPY . .
RUN npm install
CMD ["node", "app.js"]
```

35. Escribí un workflow de GitHub Actions que ejecute `npm install` y `npm test`.

```yaml
name: CI

on: push

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
        with:
          node-version: 18
      - run: npm install
      - run: npm test
```
