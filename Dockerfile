FROM postgres

# Copiar el archivo .backup al contenedor
COPY ./salsamentaria_lm.backup /docker-entrypoint-initdb.d/salsamentaria_lm.backup

# Variables de entorno para la creación de la base de datos
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=salsamentaria123
ENV POSTGRES_DB=salsamentaria_lm

# Copiar el script de restauración al contenedor
COPY restore.sh /docker-entrypoint-initdb.d/restore.sh
EXPOSE 5432