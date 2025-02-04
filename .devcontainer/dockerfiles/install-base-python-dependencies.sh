#!/bin/bash

set -e;
apt -y install libpq-dev gcc;
poetry install --without dev --no-root;
