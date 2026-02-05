#!/bin/bash
set -e

# Wait for MySQL to be ready
echo "Waiting for MySQL to be ready..."
until php -r "error_reporting(0); \$m = new mysqli('db', 'root', 'root', 'gamefest'); if (\$m->connect_errno) { exit(1); }"; do
  echo "MySQL is unavailable - sleeping"
  sleep 3
done

echo "MySQL is up - executing password update script"
php /var/www/html/executable.php

echo "Starting Apache"
apache2-foreground
