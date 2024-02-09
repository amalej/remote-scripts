#!/usr/bin/env bash

if [ ! "$logLevel" = "info" ]; then
    echo "-- This is an auto-install script --"
fi

# Run "apt-get update"
if [ ! "$update" = "false" ]; then
    echo "-- Running \"apt-get update\" --"
    sudo apt-get update
fi

# Run "apt-get -y upgrade"
if [ ! "$update" = "false" ]; then
    echo "-- Running \"apt-get -y upgrade\" --"
    sudo apt-get -y upgrade
fi

# Run "apt-get dist-upgrade"
if [ ! "$update" = "false" ]; then
    echo "-- Running \"apt-get dist-upgrade\" --"
    sudo apt-get dist-upgrade
fi

# Get the latest version of Node JS
echo "-- Getting Node LTS version --"
NODE_RES=$(curl -sL https://registry.npmjs.org/node | grep -o '[0-9].\-lts":' | tail -1)
LTS_STR="-lts\":"
NODE_LTS=${NODE_RES%"${LTS_STR}"}
echo "-- Node JS LTS Version: v$NODE_LTS --"

# Install Node JS
echo "-- Installing Node JS v$NODE_LTS --"
curl -sL https://deb.nodesource.com/setup_$NODE_LTS.x | sudo -E bash -
sudo apt-get install nodejs -y

# Prompt that the script was completed
if [ ! "$logLevel" = "info" ]; then
    echo "-- Script completed. Thanks for using! --"
fi

exit 0