#!/bin/bash

echo "Creating folders..."

mkdir -p \
../../data/postgres \
../../data/redis \
../../data/open-webui \
../../data/models

chmod -R 777 ../../data

echo "Done."
