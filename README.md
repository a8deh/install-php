# install php for macos

To install a specific version of PHP on macOS using a bash script, you can use Homebrew, a package manager for macOS. Here's a script that allows you to install PHP with a specific version:

```bash
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
```

Save this script to a file (e.g., `install_php.sh`) and make it executable using `chmod +x install_php.sh`.

Then, execute the script by providing the desired PHP version as an argument. For example, to install PHP version 8.1, you would run:

```bash
./install_php.sh 8.1
```

This script checks if Homebrew is installed, then installs the specified PHP version using Homebrew. After installation, it links the PHP version and verifies the PHP installation by displaying the PHP version using `php -v`.

Make sure Homebrew is properly installed and configured on your macOS system before running this script.
