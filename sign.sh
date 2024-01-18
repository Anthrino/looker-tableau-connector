#!/bin/bash

# Move to packaged TACO file location 
cd $KOKORO_PIPER_DIR/github/looker-tableau-connector/connector-plugin-sdk/connector-packager/packaged-connector

# Create signed/ dir to store signed TACO file
mkdir -p signed && chmod 777 signed

#/escalated_sign/escalated_sign.py -j /escalated_sign_jobs -t signjar \
# $KOKORO_PIPER_DIR/github/looker-tableau-connector/connector-plugin-sdk/connector-packager/packaged-connector
# $KOKORO_PIPER_DIR/github/looker-tableau-connector/connector-plugin-sdk/connector-packager/packaged-connector
