#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: No path provided."
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: Invalid path provided."
    exit 1
fi

cd $1
tofu init -auto-approve
tofu validate -auto-approve
tofu plan -auto-approve