#!/bin/bash

set -e

if [ ! -d wheelhouse ]; then
    echo -n 'Wheelhouse has not been generated yet. Run package.sh? [Y/n]'
    read
    if [ ! "$REPLY" || "$REPLY" == 'y' ]; then
        ./package.sh
    fi
fi

scp wheelhouse/OCCO?Enactor*.whl root@c155-10.localcloud:/opt/pypi-server/packages
