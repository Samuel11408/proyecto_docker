#!/bin/bash
set -e

PROJECT_DIR="/home/Domisoft/proyecto_docker/ALL/sql"
CONTAINER="mysql_server"

echo "Cargando la estructura(DDL).."
docker exec -i "$CONTAINER" mysql -u root < "$PROJECT_DIR/ddl.sql"

echo "Cargando admins.."
docker exec -i "$CONTAINER" mysql -u root Domisoft < "$PROJECT_DIR/domisoft_admins.sql"

echo "Cargando usuarios.."
docker exec -i "$CONTAINER" mysql -u root Domisoft < "$PROJECT_DIR/domisoft_users.sql"

echo "La base de datos se incializo"


