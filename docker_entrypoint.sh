#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Received run command $RUN_COMMAND";

if [[ "$RUN_COMMAND" = "python" ]]; then
  python $1
else
  exec "$@"
fi
