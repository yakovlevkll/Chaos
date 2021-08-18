#!/bin/sh

# docker build . -t chaos

docker run --rm -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /home/k/Documents/Chaos:/app \
    -e DISPLAY=$DISPLAY \
    -u qtuser \
    chaos python3 /app/logistic_interactive.py