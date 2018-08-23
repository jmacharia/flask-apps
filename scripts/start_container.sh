#!/usr/bin/env bash

set -e

docker run -d  --name flaskapp -p 80:5000  makavelli2/labs