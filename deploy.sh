#!/bin/sh

set -e

echo "Deploying application ..."

git checkout -f

git pull origin main

php -d disable_functions= ~/www/composer.phar install --no-interaction --prefer-dist --optimize-autoloader

echo "Application deployed!"
