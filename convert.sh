#!/bin/bash
docker run -i mdb2sqlite bash -c 'cat > input && python convert.py input && cat input' < $1 > "$1.sqlite"
