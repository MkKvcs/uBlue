#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
wget https://github.com/martin-olivier/airgorah/releases/download/v0.7.0/airgorah_0.7.0_x86_64.rpm
rpm-ostree install ./airgorah_0.7.0_x86_64.rpm
