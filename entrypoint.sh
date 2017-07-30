#!/usr/bin/env sh

if [[ "$2" = 'run' ]]; then
    python -m flask run --host=0.0.0.0
fi

exec "$@"
