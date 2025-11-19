#!/bin/bash
set -e

DATE=$(date +"%Y%m%d_%H%M")
BACKUP_DIR="/home/Domisoft/proyecto_docker/respaldos/app"
CONTAINER="app_server"
APP_PATH="/var/www/html/publics/uploads"

mkdir -p "$BACKUP_DIR"

echo "Empaquetando los archivos.."
docker exec "$CONTAINER" tar czf - "APP_PATH" > "$BACKUP_DIR/uploads_${DATE}.tar.gz"

echo "Backup creado"
