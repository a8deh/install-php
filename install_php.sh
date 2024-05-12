#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Please install Homebrew first."
    exit 1
fi

# Check if a PHP version is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 [php_version]"
    echo "Example: $0 8.1"
    exit 1
fi

# Install PHP with the specified version
brew install php@$1

# After installation, link the PHP version
brew link --overwrite --force php@$1

# Verify PHP installation
php -v
