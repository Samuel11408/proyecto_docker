#!/bin/bash
set -e

DATE=$(date +"%Y%m%d_%H%M")
BACKUP_DIR="/home/Domisoft/proyecto_docker/respaldos/mysql"
CONTAINER="mysql_server"
DB="Domisoft"

mkdir -p "$BACKUP_DIR"

echo "Generando backup de la base $DB.."
docker exec "$CONTAINER" mysqldump -u root "$DB" > "BACKUP_DIR/${DB}_${DATE}.sql"

echo "Backup creado"
