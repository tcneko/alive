#!/bin/bash

# tcneko <tcneko@outlook.com>
# create: 2018.08
# last update: 2018.10
# last test environment: Ubuntu 18.04
# description:

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

# variables
source $(dirname $0)/alive_c_config.sh
cur_status=$(cat $status_file)
full_url="${base_url}?hostname=${hostname}&passkey=${passkey}&cur_status=${cur_status}"

# function

# main
retrun_code=$(curl -s "$full_url")

if [ $retrun_code -eq 0 ]; then
    exit 0
else
    echo $retrun_code
    exit 1
fi
