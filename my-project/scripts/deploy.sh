#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define variables
APP_NAME="my-project"
DEPLOY_DIR="/var/www/$APP_NAME"  # Change this to your deployment directory
SOURCE_DIR="dist"  # Change this to your build output directory

# Build the application
echo "Building the application..."
./scripts/build.sh

# Deploy the application
echo "Deploying the application to $DEPLOY_DIR..."
rsync -av --delete $SOURCE_DIR/ $DEPLOY_DIR/

# Restart the application service (if applicable)
# Uncomment and modify the following line if you have a service to restart
# systemctl restart $APP_NAME

echo "Deployment completed successfully."