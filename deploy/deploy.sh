#!/bin/bash
set -e
PROJECT_DIR="/var/www/corp-admin"
echo "Deploying..."
cd "$PROJECT_DIR"
git pull origin main
cd backend/django_app
source venv/bin/activate
python manage.py migrate
deactivate
sudo systemctl restart gunicorn flask-api nginx
