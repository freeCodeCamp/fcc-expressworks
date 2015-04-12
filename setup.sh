#!/bin/bash
# The script will set up expressworks on c9.io

echo "Setting up nvm..."
# Grab latest v0.11.* node level installed 
V11_LEVEL = `nvm ls | grep v0.11 | head -1 | cut -f3 -d' '`

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
