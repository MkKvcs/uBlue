#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -euo pipefail

if rpm -qa | grep power-profiles-daemon ; then
    rpm-ostree override remove power-profiles-daemon 
    rpm-ostree install tuned
else
    rpm-ostree install tuned
fi
systemctl enable tuned
