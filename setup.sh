#!/bin/bash

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator

if [[ "$1" == "enc" ]]; then
    gpg --symmetric --armor --cipher-algo AES256 release.keystore
    gpg --symmetric --armor --cipher-algo AES256 credentials.json
fi
