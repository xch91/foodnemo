#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

tail -n1 ../raw/page-gen.log | /opt/venv/foodnemo/bin/python render.py
