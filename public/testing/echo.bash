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

# Determine version
if [ -z $version ]; then
	version=latest
else
	version="v${version//[a-zA-Z]/}"
fi
echo "-- Will be using version $version --"

# Install Firebase Tools
if [ "$useBinary" = "true" ]; then
    echo "-- Downloading standalone binary version --"
	FCLI_RES=$(curl -sL https://firebase.tools)
	version="$version\""
	echo "${FCLI_RES//\/latest\"/\/$version}" | bash
else
    echo "-- Downloading NPM version --"
	sudo npm i -g firebase-tools@$version
fi

# Prompt that the script was completed
if [ ! "$logLevel" = "info" ]; then
    echo "-- Script completed. Thanks for using! --"
fi

exit 0
