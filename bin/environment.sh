#!/usr/bin/env bash 
#========================================
# Environment variables
# 
# AGENT_HOME 변수 기준으로 환경 변수를 설정한다. 
#========================================

if [[ "$AGENT_HOME" == "" ]];then
	export AGENT_HOME=$(cd $(dirname $BASH_SOURCE)/..;pwd)
fi 

# python path
export PYTHONPATH=$AGENT_HOME/app:$AGENT_HOME/lib
