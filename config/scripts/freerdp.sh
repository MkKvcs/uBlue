#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
wget https://ci.freerdp.com/job/freerdp-nightly-rpm-mock/architecture=x86_64,distribution=fedora-39,label=pkg-rpm-mock/lastSuccessfulBuild/artifact/freerdp-nightly-3.0-0+0%7E20240306033818.1559%7E1.git938e1ca2f.x86_64.rpm
rpm-ostree install ./freerdp-nightly-3.0-0+0~20240306033818.1559~1.git938e1ca2f.x86_64.rpm
