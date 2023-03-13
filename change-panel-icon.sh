#!/bin/bash

ICONPATH="$(dirname $(realpath $0) )/panel-icons"
CURRENT="$ICONPATH/current/current.svg"
if test -f "$CURRENT"; then
    rm $CURRENT
fi
NEW=$(find "$ICONPATH/icons" -type f | shuf -n 1)
cp "$NEW" "$CURRENT"
