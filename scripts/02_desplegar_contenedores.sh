#!/bin/bash
set -e

PROJECT_DIR="/home/Domisoft/proyecto_docker"

cd "$PROJECT_DIR"

echo "Parando contenedores antiguos.."
docker-compose down

echo "Los contenedores se estan construyendo y levantando.."
docker-compose up -d --build

echo "Contenedores levantados:"
docker ps
