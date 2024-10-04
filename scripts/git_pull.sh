#!/bin/bash

# Change to the directory where your Git repository is located
cd /var/www/html || exit

# Check if the directory is a Git repository
if [ -d .git ]; then
    # Perform git pull
    echo "Pulling latest changes from the repository..."
    git pull origin master  # Adjust 'main' to your default branch if necessary

    if [ $? -eq 0 ]; then
        echo "Successfully pulled the latest changes."
    else
        echo "Failed to pull changes."
    fi
else
    echo "This directory is not a Git repository."
fi

