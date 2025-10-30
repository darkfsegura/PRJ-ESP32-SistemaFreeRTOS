#!/bin/bash
echo "=== Generando Documentación Doxygen ==="

# Navegar a carpeta docs
cd docs

# Generar documentación
echo "Ejecutando Doxygen..."
doxygen Doxyfile

# Verificar si la generación fue exitosa
if [ $? -eq 0 ]; then
    echo "✅ Documentación generada exitosamente"
    echo "📁 Abre: docs/html/index.html"
else
    echo "❌ Error generando documentación"
    exit 1
fi

# Volver al directorio raíz
cd ..
