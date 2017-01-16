#!/bin/bash
# The script will set up expressworks on c9.io

echo "Setting up nvm..."
source ~/.nvm/nvm.sh
V11_LEVEL=v4.1

# Install node
nvm install ${V11_LEVEL}

# Set that level as default
nvm use ${V11_LEVEL}

# Set current level to latest v0.11.* level
nvm alias default ${V11_LEVEL}

# Update c9 express to > v4 due to JSON spacing issue
echo "Updating express..."

npm uninstall express && npm install express@'>=4.0.0'

echo "Setting up expressworks..."

# Pull expressworks with a longer timeout
cd ~/workspace
git clone https://github.com/reddock/expressworks

# Install expressworks
npm install -g expressworks/

echo "Done."
