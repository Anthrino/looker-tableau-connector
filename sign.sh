#!/bin/bash

# Move to packaged TACO file location 
cd "${KOKORO_GFILE_DIR}/github/looker-tableau-connector/connector-plugin-sdk/connector-packager/packaged-connector"

# Create signed/ dir to store signed TACO file
mkdir -p signed && chmod 777 signed

echo "Executing jarsigner.."
/escalated_sign/escalated_sign.py -j /escalated_sign_jobs -t signjar \
"${KOKORO_GFILE_DIR}/github/looker-tableau-connector/connector-plugin-sdk/connector-packager/packaged-connector/" \
"${KOKORO_GFILE_DIR}/github/looker-tableau-connector/connector-plugin-sdk/connector-packager/packaged-connector/signed"

echo "Created signed TACO file:"
ls "${KOKORO_GFILE_DIR}/github/looker-tableau-connector/connector-plugin-sdk/connector-packager/packaged-connector/signed"
