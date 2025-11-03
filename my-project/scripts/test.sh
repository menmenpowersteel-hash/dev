#!/bin/bash

# Navigate to the project directory
cd "$(dirname "$0")/.."

# Run integration tests
echo "Running integration tests..."
# Add your testing framework command here, for example:
# npm test
# or
# pytest tests/integration

# Check if tests passed
if [ $? -ne 0 ]; then
  echo "Integration tests failed."
  exit 1
fi

echo "All tests passed."