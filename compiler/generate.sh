#!/usr/bin/env bash

while true
do

    # nur bei Änderungen ausführen:
    inotifywait -q -e modify ./;

    # make ausführen
    make
done
