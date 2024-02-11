# A compilation of auto install/setup scripts

A compilation of script to help setup certain SDKs and other helpful tools. Mostly used for setting up Raspberry Pi

## Overview

Pass the `update=false` argument to skip updating the package index files on the system

```shell
curl -sL https://remote-scripts.web.app/firebase-cli/setup | update=false bash
```

## Install Node JS

Run the following cURL command:

```shell
curl -sL https://remote-scripts.web.app/node/setup | bash
```

## Setup Remote Desktop configuration

Run the following cURL command:

```shell
curl -sL https://remote-scripts.web.app/remote-desktop/setup | bash
```

## Setup VS Code

Run the following cURL command:

```shell
curl -sL https://remote-scripts.web.app/vs-code/setup | bash
```

## Setup Firebase CLI

This script, by default, installs the Firebase CLI via NPM

Run the following cURL command:

### Install via NPM

```shell
curl -sL https://remote-scripts.web.app/firebase-cli/setup | bash
```

### Install the standalone version

```shell
curl -sL https://remote-scripts.web.app/firebase-cli/setup | useBinary=true bash
```

### Install a specific version

```shell
curl -sL https://remote-scripts.web.app/firebase-cli/setup | version=v13.2.0 bash
```
