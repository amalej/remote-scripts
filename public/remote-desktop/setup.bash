#!/usr/bin/env bash

## <script src="/formatter.js"></script>
## <link href="/styles.css" rel="stylesheet" />

if [ ! "$logLevel" = "info" ]; then
    echo "-- This is an auto setup script --"
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

# Run "apt-get install xrdp"
echo "-- Running \"apt-get install xrdp\" --"
sudo apt-get install xrdp

# Start "xrdp"
echo "-- Starting \"xrdp\" --"
sudo service xrdp start

# Prompt that the scirpt was completed
if [ ! "$logLevel" = "info" ]; then
    echo "-- Script completed. Thanks for using! --"
fi

exit 0