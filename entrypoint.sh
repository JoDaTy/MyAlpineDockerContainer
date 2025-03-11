#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Optional: Any initialization commands can go here
echo "Starting container as user: $(whoami)"

# Optional: Print environment variables or other useful information
echo "Current working directory: $(pwd)"

# Execute the command passed to the container
exec "$@"
