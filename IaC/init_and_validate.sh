#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: No path provided."
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: Invalid path provided."
    exit 1
fi

tofu init $1
tofu validate $1