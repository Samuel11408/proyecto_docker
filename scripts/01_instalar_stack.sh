#!/bin/bash
set -e

echo "Actualizando el sistema.."
apt update && apt -y upgrade

echo "Las dependencias se estan instalando.."
apt -y install docker.io docker-compose-plugin mysql-client cron ufw

echo "Docker se esta habilitando.."
systemctl enable docker
systemctl start docker

echo "Configurando el firewall ufw.."
ufw default deny incoming
ufw default allow outcoming
ufw allow 22/tcp
ufw allow 8080/tcp
ufw --force enable

echo "El stack se instalo"
