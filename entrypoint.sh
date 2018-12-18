#!/bin/sh

if [ -z "$REMOTE_HOST" ]; then
    echo "You have to set \$REMOTE_HOST env variable"
else
    echo "[target]\n${REMOTE_HOST}" > ./hosts
    ansible-playbook deploy.yml $@
fi
