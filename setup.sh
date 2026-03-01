#! /bin/bash
apt-get update
apt-get install -y apache2
echo "Auto-scaling Test: Server at $(hostname)" > /var/www/html/index.html
