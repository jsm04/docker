#!/bin/bash

echo "Creando estructura de empresa..."

# Crear carpeta principal
mkdir empresa

# Entrar en la carpeta
cd empresa || exit

# Crear subcarpetas
mkdir productos ventas reportes backup

echo "Subcarpetas creadas."

# Crear archivos dentro de productos
cd productos || exit

touch producto1.txt producto2.txt producto3.txt

# Escribir contenido
echo "Producto 1 - Precio: 100" > producto1.txt
echo "Producto 2 - Precio: 200" > producto2.txt
echo "Producto 3 - Precio: 300" > producto3.txt

echo "Archivos creados con contenido."

# Mostrar contenido de un archivo
echo "Contenido de producto1.txt:"
cat producto1.txt

# Volver a empresa
cd ..

# Copiar un archivo a backup
cp productos/producto1.txt backup/

echo "Archivo copiado a backup."

# Renombrar un archivo
mv productos/producto2.txt productos/producto2_modificado.txt

echo "Archivo renombrado."

# Crear archivo en reportes
echo "Reporte general de la empresa" > reportes/reporte_general.txt

echo "Reporte creado."

# Eliminar un archivo
rm productos/producto3.txt

echo "Archivo producto3.txt eliminado."

echo "Proceso completado."