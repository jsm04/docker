FROM ubuntu:22.04

# Evita prompts interactivos
ENV DEBIAN_FRONTEND=noninteractive

# Instalar bash (ya viene, pero aseguramos) y utilidades básicas
RUN apt-get update && apt-get install -y \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Directorio de trabajo
WORKDIR /root

# Copia el script desde el host al contenedor
COPY script.sh /root/script.sh

# Permite el permiso para ejecutar al momento de la creacion
RUN chmod +x /root/script.sh

# Arranque en bash
CMD ["/bin/bash"]