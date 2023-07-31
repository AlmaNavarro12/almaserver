# Indica la imagen base que se utilizará para construir tu contenedor.
# Puedes elegir una imagen que tenga el entorno de Dart que necesitas.
FROM google/dart

# Establece el directorio de trabajo dentro del contenedor.
WORKDIR /app

# Copia los archivos de tu proyecto (incluyendo el código fuente) al contenedor.
COPY . /app

# Instala las dependencias de tu proyecto.
RUN pub get

# Expone el puerto en el que tu servidor Dart escucha (ajusta el número de puerto según tu aplicación).
EXPOSE 3000

# Comando para ejecutar tu servidor Dart.
CMD ["dart", "dart_server_canvas.dart"]
