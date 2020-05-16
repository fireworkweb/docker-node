#!/bin/sh
set -e

# Give time to disk to mount
sleep 1

# Run as current user
if [ ! -z "$ASUSER" ] && [ "$ASUSER" != "0" ]; then
    usermod -u $ASUSER fwd
    exec su-exec $ASUSER "$@"
else
    exec "$@"
fi
