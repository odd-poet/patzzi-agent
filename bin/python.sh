#!/usr/bin/env bash

curpath=$(cd $(dirname $0); pwd)
source $curpath/environment.sh 

python "$@"