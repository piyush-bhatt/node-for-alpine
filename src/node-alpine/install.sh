#!/bin/sh
set -e

if [ -f /etc/os-release ]; then
  . /etc/os-release
  echo "Operating system: $NAME"
elif [ "$(uname)" = "Linux" ]; then
  echo "Operating system: Linux"
else
  echo "Unsupported operating system"
  exit 1
fi

if ! which apk >/dev/null 2>&1; then
  echo "ERROR: apk not found. Please install apk and try again."
  exit 1
fi

echo "Installing Node.js"

# Install dependencies
apk add --no-cache curl bash

# Install NVM
curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh" | bash

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install Node.js
nvm install $NODE_VERSION

# Install Yarn
curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

# Show versions
echo "Node.js version: $(node --version) installed"
echo "Yarn version: $(yarn --version) installed"
