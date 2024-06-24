#!/usr/bin/env bash
set -oue pipefail
sed -i 's/GRAPHIC_DRIVER=default/GRAPHIC_DRIVER=intel/' /etc/chromium/chromium.conf
sed -i 's/--enable-features=/--enable-features=TouchpadOverscrollHistoryNavigation,/' /etc/chromium/chromium.conf
sed -i '/"NetworkServiceSandboxEnabled": true/d' /etc/chromium/policies/managed/hardening.json 
