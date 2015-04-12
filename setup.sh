#!/bin/bash
# The script will set up expressworks on c9.io

echo "Setting up nvm..."
source ~/.nvm/nvm.sh
V11_LEVEL=v0.11.14

# Set that level as default
nvm use ${V11_LEVEL}

# Set current level to latest v0.11.* level
nvm alias default ${V11_LEVEL}

echo "Setting up expressworks..."

# Pull expressworks with a longer timeout
cd ~/workspace
git clone http://github.com/reddock/expressworks

# Install expressworks
npm install -g expressworks/

echo "Done."
