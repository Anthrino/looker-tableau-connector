#!/bin/bash

# Clone connector-plugin-sdk submodule
git config --global --add safe.directory '*'

git submodule update --init --recursive

sudo apt install python3.8-venv
## Package TACO ##

# Move to connector packager folder
cd connector-plugin-sdk/connector-packager/

# Create and activate virtual env
python3 -m venv .venv

source ./.venv/bin/activate

# Install connector packager
python3 setup.py install

python3 -m connector_packager.package ../../looker-jdbc/

ls $KOKORO_ARTIFACTS_DIR/github/looker-tableau-connector/connector-plugin-sdk/connector-packager/packaged-connector
## Sign TACO ## 
