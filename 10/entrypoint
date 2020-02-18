#!/bin/sh
set -e

# Run as current user
if [ ! -z "$ASUSER" ] && [ "$ASUSER" != "0" ]; then
    usermod -u $ASUSER developer
    exec su-exec $ASUSER "$@"
else
    exec "$@"
fi
