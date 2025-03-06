#!/usr/bin/env bash

if [[ $# -gt 1 ]]; then
    if [[ -f $1 ]]; then
        cachedata="-"
    else 
        echo "Error: the file $1 doesn't exist";
    fi
fi

java \
    -jar vendor/schemaspy-6.2.4.jar \
    -configFile scripts/schemaspy.properties \
    -all \
    -nopages \
    -norows \
    -noviews \
    -renderer :cairo \
    $
