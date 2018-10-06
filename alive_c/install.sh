#!/bin/bash

# tcneko <tcneko@outlook.com>
# create: 2018.10
# last update:
# last test environment: Ubuntu 18.04
# description:

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

set -e

# variables
project_name='alive_c'
install_dir="/opt/sh/$project_name"
source_dir="$(dirname $0)"

# function

# main
if [ ! -d $install_dir ]; then
    mkdir $install_dir
fi
cp -r ${source_dir}/*.sh $install_dir
mv ${install_dir}/alive_c_config_template.sh ${install_dir}/config.sh
chmod +x ${install_dir}/*.sh

exit 0
