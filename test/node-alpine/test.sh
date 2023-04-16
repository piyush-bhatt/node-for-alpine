#!/bin/bash
export NODE_VERSION="16.0.0"
export NPM_VERSION="0.39.3"
export YARN_VERSION="latest"

./install.sh

ACTUAL_NODE_VERSION=$(node -v)
if [[ "$ACTUAL_NODE_VERSION" != "v16.0.0" ]]; then
  echo "FAIL: Node.js version mismatch. Expected: $EXPECTED_NODE_VERSION, Actual: $ACTUAL_NODE_VERSION"
  exit 1
fi

echo "SUCCESS: Node.js version matches the expected version."
