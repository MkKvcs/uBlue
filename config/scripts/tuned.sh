#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -euo pipefail

if rpm -qa | grep power-profiles-daemon ; then
    rpm-ostree override remove power-profiles-daemon 
    rpm-ostree install tuned
    rpm-ostree install tuned-utils
    rpm-ostree install tuned-utils-systemtap
    rpm-ostree install tuned-profiles-compat
else
    rpm-ostree install tuned
    rpm-ostree install tuned-utils
    rpm-ostree install tuned-utils-systemtap
    rpm-ostree install tuned-profiles-compat
fi
systemctl start tuned
systemctl enable tuned
