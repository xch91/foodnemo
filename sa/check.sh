#!/usr/local/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/../api

cmd_test="/usr/home/freebsd/venv/foodnemo/bin/python test.py"
cmd_prod="/usr/home/freebsd/venv/foodnemo/bin/python prod.py"

proc_test=`ps aux | grep "$cmd_test" | wc -l`
proc_prod=`ps aux | grep "$cmd_prod" | wc -l`

if [ "$proc_test" -lt 3 ]; then $cmd_test; fi
if [ "$proc_prod" -lt 3 ]; then $cmd_prod; fi
