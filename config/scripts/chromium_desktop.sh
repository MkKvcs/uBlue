#!/usr/bin/env bash
set -oue pipefail
sed -i 's/GRAPHIC_DRIVER=default/GRAPHIC_DRIVER=amd/' /etc/chromium/chromium.conf
sed -i '/"NetworkServiceSandboxEnabled": true/d' /usr/etc/chromium/policies/managed/hardening.json


