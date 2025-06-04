#!/bin/bash

# Alternative Git setup using environment variables
# This approach allows you to set Git configuration via devcontainer.json environment variables

set -e

echo "🔧 Setting up Git with environment variables..."

# Check if environment variables are set
if [[ -n "$GIT_USER_NAME" && -n "$GIT_USER_EMAIL" ]]; then
    echo "✅ Using environment variables for Git configuration"
    git config --global user.name "$GIT_USER_NAME"
    git config --global user.email "$GIT_USER_EMAIL"
    
    if [[ -n "$GIT_USER_LOGIN" ]]; then
        git config --global user.login "$GIT_USER_LOGIN"
    fi
    
    echo "Git configured with:"
    echo "  Name: $GIT_USER_NAME"
    echo "  Email: $GIT_USER_EMAIL"
    echo "  Login: ${GIT_USER_LOGIN:-"(not set)"}"
else
    echo "⚠️  Environment variables GIT_USER_NAME and GIT_USER_EMAIL not set"
    echo "Please set them in your devcontainer.json or run the main setup script"
fi

# Apply common Git settings
source "$(dirname "$0")/setup-git.sh"
