#!/bin/bash

## Package TACO ##

# Move to connector packager folder
cd connector-plugin-sdk/connector-packager/

# Create and activate virtual env
python –m venv .venv

source ./.venv/bin/activate

# Install connector packager
python setup.py install

python -m connector_packager.package

## Sign TACO ## 
