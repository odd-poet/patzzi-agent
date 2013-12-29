#!/usr/bin/env bash 
#========================================
# Install librarys
# 
# @author: oddpoet@gamil.com 
#========================================

# setup variables
AGENT_HOME=$(cd $(dirname $0)/..;pwd)

target_dir=$AGENT_HOME/lib
function install() {
	package_name=$1
	pip install -t $target_dir -I --no-deps --force-reinstall --install-option --prefix= \
		$package_name
}

rm -rf $target_dir
mkdir -p $target_dir 

echo "Install packages ..."
echo "----------------------"
install argparse
install lockfile 
install python-daemon
install psutil 
install termcolor

echo 
echo "delete .egg-info"
echo "----------------------"
cd $target_dir
rm -rf *.egg-info

