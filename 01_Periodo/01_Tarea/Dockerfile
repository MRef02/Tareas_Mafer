FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=canlopez

# Declaración explícita de volumen
VOLUME ["/var/lib/mysql"]
COPY 01_CrearBaseDatos.sql /docker-entrypoint-initdb.d/
COPY 02_CrearTablas.sql /docker-entrypoint-initdb.d/
COPY 03_CrearRelaciones.sql /docker-entrypoint-initdb.d/
COPY 04_InsertarRegistro.sql /docker-entrypoint-initdb.d/
EXPOSE 3306 