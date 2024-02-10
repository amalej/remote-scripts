#!/usr/bin/env bash

## <script src="/formatter.js"></script>
## <link href="/styles.css" rel="stylesheet" />

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

# Install "vs-code"
echo "-- Running \"sudo apt install code\" --"
sudo apt install code

# Prompt that the script was completed
if [ ! "$logLevel" = "info" ]; then
    echo "-- Script completed. Thanks for using! --"
fi

exit 0